package main

import (
	"context"
	"log"
	"net/http"
	"os"
	"os/signal"
	"strconv"
	"syscall"
	"time"

	"github.com/gorilla/handlers"
	"github.com/gorilla/mux"

	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"

	"go.uber.org/zap"

	authorapi "github.com/adrian83/library/pkg/api/author"
	bookapi "github.com/adrian83/library/pkg/api/book"
	"github.com/adrian83/library/pkg/author"
	"github.com/adrian83/library/pkg/book"
	"github.com/adrian83/library/pkg/common"
	"github.com/adrian83/library/pkg/config"
	"github.com/adrian83/library/pkg/storage"
)

const (
	configPrefix = "library"

	v1Api = "/api/v1"
)

var mongoConnectionTimeout = 10 * time.Second

func readConfiguration() *config.Config {
	cfg, err := config.ReadConfiguration(configPrefix)
	if err != nil {
		log.Printf("cannot read Configuration, error: %v", err)
		panic(err)
	}

	log.Printf("Configuration: %v", cfg)

	return cfg
}

func NewLogger() *zap.Logger {
	logger, err := common.NewLogger()
	if err != nil {
		panic(err)
	}

	return logger
}

func main() {
	cfg := readConfiguration()

	mongoURI := "mongodb://" + cfg.DatabaseHost + ":" + strconv.Itoa(cfg.DatabasePort)

	client, err := mongo.NewClient(options.Client().ApplyURI(mongoURI))
	if err != nil {
		log.Printf("Cannot create mongodb client: %v", true)
	}

	ctx, cancel := context.WithTimeout(context.Background(), mongoConnectionTimeout)
	defer cancel()

	if err = client.Connect(ctx); err != nil {
		log.Printf("Cannot connect to mongodb: %v", true)
	}

	database := client.Database(cfg.DatabaseName)

	booksCollection := database.Collection("books")
	authorCollection := database.Collection("author")

	bookAdapterLogger := NewLogger()
	defer bookAdapterLogger.Sync()
	authorAdapterLogger := NewLogger()
	defer authorAdapterLogger.Sync()

	mongoBookAdapter := storage.NewAdapter(booksCollection, bookAdapterLogger.Sugar())
	mongoAuthorAdapter := storage.NewAdapter(authorCollection, authorAdapterLogger.Sugar())

	bookServiceLogger := NewLogger()
	defer bookServiceLogger.Sync()
	authorServiceLogger := NewLogger()
	defer authorServiceLogger.Sync()

	authorService := author.NewService(mongoAuthorAdapter, authorServiceLogger.Sugar())
	bookService := book.NewService(mongoBookAdapter, authorService, bookServiceLogger.Sugar())

	allowedHeaders := handlers.AllowedHeaders([]string{"X-Requested-With", "Content-Type", "Authorization"})
	allowedMethods := handlers.AllowedMethods([]string{"GET", "POST", "PUT", "DELETE", "HEAD", "OPTIONS"})
	allowedOrigins := handlers.AllowedOrigins([]string{"*"})

	bookAPILogger := NewLogger()
	defer bookAPILogger.Sync()
	authorAPILogger := NewLogger()
	defer authorAPILogger.Sync()

	r := createRouter(cfg, authorService, authorAPILogger, bookService, bookAPILogger)

	http.Handle("/", r)

	router := handlers.CORS(allowedHeaders, allowedMethods, allowedOrigins)(r)

	startServer(cfg, router)
}

func startServer(cfg *config.Config, router http.Handler) {
	serverAddress := cfg.ServerHost + ":" + strconv.Itoa(cfg.ServerPort)
	server := &http.Server{Addr: serverAddress, Handler: router}

	idleConnsClosed := make(chan struct{})

	go func() {
		sigint := make(chan os.Signal, 1)
		signal.Notify(sigint, os.Interrupt)
		signal.Notify(sigint, syscall.SIGTERM)

		<-sigint

		log.Printf("Shutdown: %v", true)
		// We received an interrupt signal, shut down.
		if err := server.Shutdown(context.Background()); err != nil {
			// Error from closing listeners, or context timeout:
			log.Printf("HTTP server Shutdown: %v", err)
		}

		close(idleConnsClosed)
	}()

	if err := server.ListenAndServe(); err != http.ErrServerClosed {
		// Error starting or closing listener:
		log.Printf("HTTP server ListenAndServe: %v", err)
	}

	log.Printf("Exiting: %v", true)

	<-idleConnsClosed
}

func createRouter(cfg *config.Config,
	authorService *author.Service,
	authorAPILogger *zap.Logger,
	bookService *book.Service,
	bookAPILogger *zap.Logger) *mux.Router {

	r := mux.NewRouter()

	r.HandleFunc(v1Api+"/books", bookapi.HandleListing(bookService, bookAPILogger.Sugar())).Methods(http.MethodGet)
	r.HandleFunc(v1Api+"/books", bookapi.HandlePersisting(bookService, bookAPILogger.Sugar())).Methods(http.MethodPost)
	r.HandleFunc(v1Api+"/books/{bookId}", bookapi.HandleUpdating(bookService, bookAPILogger.Sugar())).Methods(http.MethodPut)
	r.HandleFunc(v1Api+"/books/{bookId}", bookapi.HandleDeleting(bookService, bookAPILogger.Sugar())).Methods(http.MethodDelete)
	r.HandleFunc(v1Api+"/books/{bookId}", bookapi.HandleGetting(bookService, bookAPILogger.Sugar())).Methods(http.MethodGet)

	r.HandleFunc(v1Api+"/authors", authorapi.HandleListing(authorService, authorAPILogger.Sugar())).Methods(http.MethodGet)
	r.HandleFunc(v1Api+"/authors", authorapi.HandlePersisting(authorService, authorAPILogger.Sugar())).Methods(http.MethodPost)
	r.HandleFunc(v1Api+"/authors/{authorId}", authorapi.HandleUpdating(authorService, authorAPILogger.Sugar())).Methods(http.MethodPut)
	r.HandleFunc(v1Api+"/authors/{authorId}", authorapi.HandleDeleting(authorService, authorAPILogger.Sugar())).Methods(http.MethodDelete)
	r.HandleFunc(v1Api+"/authors/{authorId}", authorapi.HandleGetting(authorService, authorAPILogger.Sugar())).Methods(http.MethodGet)

	r.PathPrefix("").Handler(http.StripPrefix("", http.FileServer(http.Dir(cfg.StaticsPath))))

	return r
}
