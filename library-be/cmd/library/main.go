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

func checkLoggerSync(logger *zap.Logger) {
	err := logger.Sync()
	if err != nil {
		panic(err)
	}
}

func main() {
	cfg := readConfiguration()

	connectionLogger := NewLogger()
	defer checkLoggerSync(connectionLogger)
	connection := storage.NewConnection(cfg.DatabaseHost, cfg.DatabasePort, mongoConnectionTimeoutMs, connectionLogger.Sugar())

	connection.Connect()
	defer connection.Disconnect()

	database := connection.Database(cfg.DatabaseName)

	booksCollection := database.Collection("books")
	authorCollection := database.Collection("author")

	bookDocumentCollectionLogger := NewLogger()
	defer checkLoggerSync(bookDocumentCollectionLogger)
	authorDocumentCollectionLogger := NewLogger()
	defer checkLoggerSync(authorDocumentCollectionLogger)

	mongoAuthorDocCollection := storage.NewDocCollection[*author.Entity](authorCollection, authorDocumentCollectionLogger.Sugar())
	mongoBookDocCollection := storage.NewDocCollection[*book.Entity](booksCollection, bookDocumentCollectionLogger.Sugar())

	authorRepository := author.NewAuthorRepository(mongoAuthorDocCollection)
	bookRepository := book.NewBookRepository(mongoBookDocCollection)

	bookServiceLogger := NewLogger()
	defer checkLoggerSync(bookServiceLogger)
	authorServiceLogger := NewLogger()
	defer checkLoggerSync(authorServiceLogger)

	authorService := author.NewService(authorRepository, authorServiceLogger.Sugar())
	bookService := book.NewService(bookRepository, authorService, bookServiceLogger.Sugar())

	bookAPILogger := NewLogger()
	defer checkLoggerSync(bookAPILogger)
	authorAPILogger := NewLogger()
	defer checkLoggerSync(authorAPILogger)

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
	defer checkLoggerSync(routerLogger)
	router := web.NewRouter(routes, &cfg.StaticsPath, routerLogger.Sugar())

	serverLogger := NewLogger()
	defer checkLoggerSync(serverLogger)
	server := web.NewServer(cfg.ServerHost, cfg.ServerPort, router, serverLogger.Sugar())

	server.Start()
	server.Wait()
	server.Stop()
}
