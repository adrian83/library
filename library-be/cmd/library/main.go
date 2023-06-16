package main

import (
	"log"
	"net/http"

	"go.uber.org/zap"

	authorapi "github.com/adrian83/library/pkg/api/author"
	bookapi "github.com/adrian83/library/pkg/api/book"
	"github.com/adrian83/library/pkg/author"
	"github.com/adrian83/library/pkg/book"
	"github.com/adrian83/library/pkg/common"
	"github.com/adrian83/library/pkg/config"
	"github.com/adrian83/library/pkg/storage"
	"github.com/adrian83/library/pkg/web"
)

const (
	configPrefix = "library"

	v1Api = "/api/v1"
)

var mongoConnectionTimeoutMs = 5000

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

	connectionLogger := NewLogger()
	defer connectionLogger.Sync()
	connection := storage.NewConnection(cfg.DatabaseHost, cfg.DatabasePort, mongoConnectionTimeoutMs, connectionLogger.Sugar())

	connection.Connect()
	defer connection.Disconnect()

	database := connection.Database(cfg.DatabaseName)

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

	bookAPILogger := NewLogger()
	defer bookAPILogger.Sync()
	authorAPILogger := NewLogger()
	defer authorAPILogger.Sync()

	routes := web.NewRoutes(
		web.NewRoute(v1Api+"/books", bookapi.HandleListing(bookService, bookAPILogger.Sugar()), http.MethodGet),
		web.NewRoute(v1Api+"/books", bookapi.HandlePersisting(bookService, bookAPILogger.Sugar()), http.MethodPost),
		web.NewRoute(v1Api+"/books/{bookId}", bookapi.HandleUpdating(bookService, bookAPILogger.Sugar()), http.MethodPut),
		web.NewRoute(v1Api+"/books/{bookId}", bookapi.HandleDeleting(bookService, bookAPILogger.Sugar()), http.MethodDelete),
		web.NewRoute(v1Api+"/books/{bookId}", bookapi.HandleGetting(bookService, bookAPILogger.Sugar()), http.MethodGet),
		web.NewRoute(v1Api+"/authors", authorapi.HandleListing(authorService, authorAPILogger.Sugar()), http.MethodGet),
		web.NewRoute(v1Api+"/authors", authorapi.HandlePersisting(authorService, authorAPILogger.Sugar()), http.MethodPost),
		web.NewRoute(v1Api+"/authors/{authorId}", authorapi.HandleUpdating(authorService, authorAPILogger.Sugar()), http.MethodPut),
		web.NewRoute(v1Api+"/authors/{authorId}", authorapi.HandleDeleting(authorService, authorAPILogger.Sugar()), http.MethodDelete),
		web.NewRoute(v1Api+"/authors/{authorId}", authorapi.HandleGetting(authorService, authorAPILogger.Sugar()), http.MethodGet),
	)

	routerLogger := NewLogger()
	defer routerLogger.Sync()
	router := web.NewRouter(routes, &cfg.StaticsPath, routerLogger.Sugar())

	serverLogger := NewLogger()
	defer serverLogger.Sync()
	server := web.NewServer(cfg.ServerHost, cfg.ServerPort, router, serverLogger.Sugar())

	server.Start()
	server.Wait()
	server.Stop()
}
