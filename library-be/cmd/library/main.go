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

	"github.com/adrian83/library/pkg/api"
	"github.com/adrian83/library/pkg/book"
	"github.com/adrian83/library/pkg/storage"
)

func main() {

	//mux.PathPrefix("/static/").Handler(http.StripPrefix("/static/", http.FileServer(http.Dir("../library-fe/"))))

	client, err := mongo.NewClient(options.Client().ApplyURI("mongodb://localhost:27017"))
	if err != nil {
		log.Printf("Cannot create mongodb client: %v", true)
	}

	ctx, _ := context.WithTimeout(context.Background(), 10*time.Second)
	if err = client.Connect(ctx); err != nil {
		log.Printf("Cannot connect to mongodb: %v", true)
	}

	booksCollection := client.Database("library").Collection("books")

	mongoAdapter := storage.NewAdapter(booksCollection)
	bookService := book.NewService(mongoAdapter)

	r := mux.NewRouter()
	r.HandleFunc("/books", api.HandleBooksListing(bookService)).Methods("GET")
	r.HandleFunc("/books", api.HandleBooksPersisting(bookService)).Methods("POST")
	r.HandleFunc("/books/{bookId}/authors", api.HandleAddingAuthor(bookService)).Methods("POST")
	r.HandleFunc("/books/{bookId}/authors/{authorId}", api.HandleRemovingAuthor(bookService)).Methods("DELETE")
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
