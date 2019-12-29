package main

import (
	"context"
	"log"
	"net/http"
	"os"
	"os/signal"
	"strconv"
	"time"

	"github.com/gorilla/mux"
	"github.com/kelseyhightower/envconfig"

	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"

	"go.uber.org/zap"

	authorapi "github.com/adrian83/library/pkg/api/author"
	bookapi "github.com/adrian83/library/pkg/api/book"
	"github.com/adrian83/library/pkg/author"
	"github.com/adrian83/library/pkg/book"
	"github.com/adrian83/library/pkg/config"
	"github.com/adrian83/library/pkg/storage"
)

const (
	v1Api = "/api/v1"
)

func main() {

	var cfg config.Config
	err := envconfig.Process("library", &cfg)
	if err != nil {
		log.Printf("cannot read Configuration, error: %v", err)
	}
	log.Printf("Configuration: %v", &cfg)

	mongoURI := "mongodb://" + cfg.DatabaseHost + ":" + strconv.Itoa(cfg.DatabasePort)
	client, err := mongo.NewClient(options.Client().ApplyURI(mongoURI))
	if err != nil {
		log.Printf("Cannot create mongodb client: %v", true)
	}

	ctx, cancel := context.WithTimeout(context.Background(), 10*time.Second)
	defer cancel()

	if err = client.Connect(ctx); err != nil {
		log.Printf("Cannot connect to mongodb: %v", true)
	}

	database := client.Database(cfg.DatabaseName)

	booksCollection := database.Collection("books")
	authorCollection := database.Collection("author")

	bookAdapterLogger, _ := zap.NewProduction()
	defer bookAdapterLogger.Sync()

	authorAdapterLogger, _ := zap.NewProduction()
	defer authorAdapterLogger.Sync()

	mongoBookAdapter := storage.NewAdapter(booksCollection, bookAdapterLogger)
	mongoAuthorAdapter := storage.NewAdapter(authorCollection, authorAdapterLogger)

	authorService := author.NewService(mongoAuthorAdapter)
	bookService := book.NewService(mongoBookAdapter, authorService)

	r := mux.NewRouter()

	r.HandleFunc(v1Api+"/books", bookapi.HandleListing(bookService)).Methods(http.MethodGet)
	r.HandleFunc(v1Api+"/books", bookapi.HandlePersisting(bookService)).Methods(http.MethodPost)
	r.HandleFunc(v1Api+"/books/{bookId}", bookapi.HandleUpdating(bookService)).Methods(http.MethodPut)
	r.HandleFunc(v1Api+"/books/{bookId}", bookapi.HandleDeleting(bookService)).Methods(http.MethodDelete)
	r.HandleFunc(v1Api+"/books/{bookId}", bookapi.HandleGetting(bookService)).Methods(http.MethodGet)

	r.HandleFunc(v1Api+"/authors", authorapi.HandleListing(authorService)).Methods(http.MethodGet)
	r.HandleFunc(v1Api+"/authors", authorapi.HandlePersisting(authorService)).Methods(http.MethodPost)
	r.HandleFunc(v1Api+"/authors/{authorId}", authorapi.HandleUpdating(authorService)).Methods(http.MethodPut)
	r.HandleFunc(v1Api+"/authors/{authorId}", authorapi.HandleDeleting(authorService)).Methods(http.MethodDelete)
	r.HandleFunc(v1Api+"/authors/{authorId}", authorapi.HandleGetting(authorService)).Methods(http.MethodGet)

	r.PathPrefix("").Handler(http.StripPrefix("", http.FileServer(http.Dir(cfg.StaticsPath))))

	http.Handle("/", r)

	serverAddress := cfg.ServerHost + ":" + strconv.Itoa(cfg.ServerPort)
	server := &http.Server{Addr: serverAddress, Handler: r}

	idleConnsClosed := make(chan struct{})
	go func() {
		sigint := make(chan os.Signal, 1)
		signal.Notify(sigint, os.Interrupt)
		signal.Notify(sigint, os.Kill)

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
