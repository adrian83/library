package main

import (
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"strconv"
	"time"

	"github.com/adrian83/go-mvc-library/library/config"
	"github.com/adrian83/go-mvc-library/library/db"
	"github.com/adrian83/go-mvc-library/library/web/handler"
	myhttp "github.com/adrian83/go-mvc-library/library/web/html"
	myjson "github.com/adrian83/go-mvc-library/library/web/json"
	mysession "github.com/adrian83/go-mvc-library/library/web/session"

	author "github.com/adrian83/go-mvc-library/library/domain/author"
	book "github.com/adrian83/go-mvc-library/library/domain/book"

	"github.com/Shopify/sarama"
	"github.com/adrian83/go-redis-session"
	"github.com/gorilla/mux"
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

func Index(w http.ResponseWriter, r *http.Request, s session.Session) error {

	idStr, ok := s.Get("id")
	fmt.Printf("get val with key 'id': %v %v\n", idStr, ok)

	if !ok {
		idStr = "1"
	}

	model := handler.NewModel()

	model.Values["idk"] = idStr

	id, err := strconv.Atoi(idStr)
	if err != nil {
		fmt.Printf("Cannot convert str to int")
		id = 1
	}

	s.Add("id", strconv.Itoa(id+1))

	return nil
}

func AddAuthor(w http.ResponseWriter, r *http.Request, s session.Session) error {
	return nil
}

func ListAuthors(w http.ResponseWriter, r *http.Request, s session.Session) error {
	return nil
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
	var authorDal author.AuthorDal = author.NewAuthorMongoDal(database)
	var bookDal book.BookDal = book.NewBookMongoDal(database)

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
	accountHandler := &handler.AccountHandler{}
	authorHandler := &handler.AuthorHandler{AuthorService: authorService}
	bookHandler := &handler.BookHandler{BookService: bookService}

	// ---------------------------------------
	// routing
	// ---------------------------------------
	mux := mux.NewRouter()
	mux.PathPrefix("/static/").Handler(http.StripPrefix("/static/", http.FileServer(http.Dir("../static/"))))

	mux.Handle("/", &myhttp.HttpHandler{
		View:    "index",
		Handler: mysession.WithSession(sessionStore, Index)})
	mux.Handle("/authors/add", &myhttp.HttpHandler{
		View:    "addAuthor",
		Handler: mysession.WithSession(sessionStore, AddAuthor)})
	mux.Handle("/authors/list", &myhttp.HttpHandler{
		View:    "listAuthors",
		Handler: mysession.WithSession(sessionStore, ListAuthors)})

	mux.Handle("/rest/api/v1.0/auth/login", &myjson.JsonHandler{
		Handler: mysession.WithSession(sessionStore, accountHandler.Login)}).Methods("POST")

	mux.Handle("/rest/api/v1.0/authors", &myjson.JsonHandler{
		Handler: mysession.WithSession(sessionStore, authorHandler.AddAuthor)}).Methods("POST")
	mux.Handle("/rest/api/v1.0/authors", &myjson.JsonHandler{
		Handler: mysession.WithSession(sessionStore, authorHandler.GetAuthors)}).Methods("GET")
	mux.Handle("/rest/api/v1.0/authors/{author_id}", &myjson.JsonHandler{
		Handler: mysession.WithSession(sessionStore, authorHandler.UpdateAuthor)}).Methods("PUT")
	mux.Handle("/rest/api/v1.0/authors/{author_id}", &myjson.JsonHandler{
		Handler: mysession.WithSession(sessionStore, authorHandler.DeleteAuthor)}).Methods("DELETE")
	mux.Handle("/rest/api/v1.0/authors/{author_id}", &myjson.JsonHandler{
		Handler: mysession.WithSession(sessionStore, authorHandler.GetAuthor)}).Methods("GET")

	mux.Handle("/rest/api/v1.0/books", &myjson.JsonHandler{
		Handler: mysession.WithSession(sessionStore, bookHandler.AddBook)}).Methods("POST")
	mux.Handle("/rest/api/v1.0/books", &myjson.JsonHandler{
		Handler: mysession.WithSession(sessionStore, bookHandler.GetBooks)}).Methods("GET")
	mux.Handle("/rest/api/v1.0/books/{book_id}", &myjson.JsonHandler{
		Handler: mysession.WithSession(sessionStore, bookHandler.UpdateBook)}).Methods("PUT")
	mux.Handle("/rest/api/v1.0/books/{book_id}", &myjson.JsonHandler{
		Handler: mysession.WithSession(sessionStore, bookHandler.DeleteBook)}).Methods("DELETE")
	mux.Handle("/rest/api/v1.0/books/{book_id}", &myjson.JsonHandler{
		Handler: mysession.WithSession(sessionStore, bookHandler.GetBook)}).Methods("GET")

	// ---------------------------------------
	// server
	// ---------------------------------------
	server := &http.Server{Addr: "0.0.0.0:" + strconv.Itoa(appConfig.Server.Port), Handler: mux}
	fmt.Println("Server - OK")
	server.ListenAndServe()
}
