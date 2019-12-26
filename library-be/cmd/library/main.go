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

	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"

	"go.uber.org/zap"

	authorapi "github.com/adrian83/library/pkg/api/author"
	bookapi "github.com/adrian83/library/pkg/api/book"
	"github.com/adrian83/library/pkg/author"
	"github.com/adrian83/library/pkg/book"
	"github.com/adrian83/library/pkg/storage"
)

func main() {

	client, err := mongo.NewClient(options.Client().ApplyURI("mongodb://localhost:27017"))
	if err != nil {
		log.Printf("Cannot create mongodb client: %v", true)
	}

	ctx, cancel := context.WithTimeout(context.Background(), 10*time.Second)
	defer cancel()

	if err = client.Connect(ctx); err != nil {
		log.Printf("Cannot connect to mongodb: %v", true)
	}

	database := client.Database("library")

	booksCollection := database.Collection("books")
	authorCollection := database.Collection("author")

	bookAdapterLogger, _ := zap.NewProduction()
	defer bookAdapterLogger.Sync()

	authorAdapterLogger, _ := zap.NewProduction()
	defer authorAdapterLogger.Sync()

	mongoBookAdapter := storage.NewAdapter(booksCollection, bookAdapterLogger)
	mongoAuthorAdapter := storage.NewAdapter(authorCollection, authorAdapterLogger)

	bookService := book.NewService(mongoBookAdapter)
	authorService := author.NewService(mongoAuthorAdapter)

	r := mux.NewRouter()

	r.HandleFunc("/books", bookapi.HandleListing(bookService)).Methods(http.MethodGet)
	r.HandleFunc("/books", bookapi.HandlePersisting(bookService)).Methods(http.MethodPost)
	r.HandleFunc("/books/{bookId}", bookapi.HandleUpdating(bookService)).Methods(http.MethodPut)
	r.HandleFunc("/books/{bookId}", bookapi.HandleDeleting(bookService)).Methods(http.MethodDelete)
	r.HandleFunc("/books/{bookId}", bookapi.HandleGetting(bookService)).Methods(http.MethodGet)

	r.HandleFunc("/authors", authorapi.HandleListing(authorService)).Methods(http.MethodGet)
	r.HandleFunc("/authors", authorapi.HandlePersisting(authorService)).Methods(http.MethodPost)
	r.HandleFunc("/authors/{authorId}", authorapi.HandleUpdating(authorService)).Methods(http.MethodPut)
	r.HandleFunc("/authors/{authorId}", authorapi.HandleDeleting(authorService)).Methods(http.MethodDelete)
	r.HandleFunc("/authors/{authorId}", authorapi.HandleGetting(authorService)).Methods(http.MethodGet)

	r.PathPrefix("").Handler(http.StripPrefix("", http.FileServer(http.Dir("../../../library-fe/build"))))

	http.Handle("/", r)

	server := &http.Server{Addr: "0.0.0.0:" + strconv.Itoa(8080), Handler: r}

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
