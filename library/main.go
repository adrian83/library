package main

import (
	"encoding/json"
	"fmt"
	"net/http"
	"strconv"

	"github.com/adrian83/go-mvc-library/library/config"
	"github.com/adrian83/go-mvc-library/library/db"
	"github.com/adrian83/go-mvc-library/library/web/handler"
	"github.com/adrian83/go-mvc-library/library/web/router"

	author "github.com/adrian83/go-mvc-library/library/domain/author"
	book "github.com/adrian83/go-mvc-library/library/domain/book"

	//"github.com/Shopify/sarama"
	"github.com/adrian83/go-redis-session"
)

var (
	id = 0
)

type accessampleKafkaMsg struct {
	ID      string `json:"id"`
	Text    string `json:"text"`
	encoded []byte
	err     error
}

func (ale *accessampleKafkaMsg) ensureEncoded() {
	if ale.encoded == nil && ale.err == nil {
		ale.encoded, ale.err = json.Marshal(ale)
	}
}

func (ale *accessampleKafkaMsg) Length() int {
	ale.ensureEncoded()
	return len(ale.encoded)
}

func (ale *accessampleKafkaMsg) Encode() ([]byte, error) {
	ale.ensureEncoded()
	return ale.encoded, ale.err
}

func main() {

	// ---------------------------------------
	// application config
	// ---------------------------------------
	appConfig, err := config.FromArg(1)
	if err != nil {
		panic(fmt.Sprintf("Cannot get the path to current directory: %v", err))
	}
	fmt.Println("Config - OK")

	// ---------------------------------------
	// session
	// ---------------------------------------
	sessionStoreConfig := session.Config{
		DB:       appConfig.Session.Redis.DB,
		Password: appConfig.Session.Redis.Password,
		Host:     appConfig.Session.Redis.Host,
		Port:     appConfig.Session.Redis.Port,
		IDLength: appConfig.Session.IDLength,
	}

	sessionStore, err := session.NewStore(sessionStoreConfig)
	if err != nil {
		panic(fmt.Sprintf("SessionStore cannot be created because of: %v", err))
	}
	defer sessionStore.Close()

	fmt.Println("Session - OK")

	// ---------------------------------------
	// kafka
	// ---------------------------------------
	/*
		config := sarama.NewConfig()

		config.Producer.RequiredAcks = sarama.WaitForLocal       // Only wait for the leader to ack
		config.Producer.Compression = sarama.CompressionSnappy   // Compress messages
		config.Producer.Flush.Frequency = 500 * time.Millisecond // Flush batches every 500ms

		producer, err := sarama.NewAsyncProducer(appConfig.Kafka.Brokers, config)
		if err != nil {
			log.Fatalln("Failed to start Sarama producer:", err)
		}

		fmt.Printf("Producer: %v", producer)

		entry := &accessampleKafkaMsg{
			ID:   "123",
			Text: "This is text",
		}

		producer.Input() <- &sarama.ProducerMessage{
			Topic: "test",
			Key:   sarama.StringEncoder("abc"),
			Value: entry,
		}
	*/
	// ---------------------------------------
	// main db - mongo
	// ---------------------------------------
	mongo, err := db.NewMongo(&appConfig.Databases.Mongo)
	if err != nil {
		panic(fmt.Sprintf("Mongo connection cannot be created because of: %v", err))
	}
	defer mongo.Close()

	database := mongo.Library()

	fmt.Println("Mongo - OK")

	// ---------------------------------------
	// dals
	// ---------------------------------------
	var authorDal author.Dal = author.NewAuthorMongoDal(database)
	var bookDal book.Dal = book.NewBookMongoDal(database)

	fmt.Println("DALs - OK")

	// ---------------------------------------
	// services
	// ---------------------------------------
	var authorService = author.NewAuthorService(authorDal)
	var bookService = book.NewBookServiceImpl(bookDal, authorDal)

	fmt.Println("Services - OK")

	// ---------------------------------------
	// handlers (controllers)
	// ---------------------------------------
	viewHandler := &handler.ViewHandler{SessionStore: sessionStore}
	accountHandler := &handler.AccountHandler{SessionStore: sessionStore}
	authorHandler := &handler.AuthorHandler{SessionStore: sessionStore, AuthorService: authorService}
	bookHandler := &handler.BookHandler{SessionStore: sessionStore, BookService: bookService}

	// ---------------------------------------
	// routing
	// ---------------------------------------
	mux := router.CreateRouter(
		viewHandler,
		accountHandler,
		authorHandler,
		bookHandler,
	)

	// ---------------------------------------
	// server
	// ---------------------------------------
	server := &http.Server{Addr: "0.0.0.0:" + strconv.Itoa(appConfig.Server.Port), Handler: mux}
	fmt.Println("Server - OK")
	server.ListenAndServe()
}
