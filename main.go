package main

import (
	"fmt"
	"net/http"
	"os"
	"strconv"

	"config"
	"web/handler"
	myhttp "web/html"
	myjson "web/json"
	mysession "web/session"

	author "domain/author"
	book "domain/book"

	"github.com/adrian83/go-redis-session"
	"github.com/gorilla/mux"
	"gopkg.in/mgo.v2"
)

var (
	id = 0
)

func Index(w http.ResponseWriter, r *http.Request, s session.Session) (handler.Model, error) {

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

	return model, nil
}

func AddAuthor(w http.ResponseWriter, r *http.Request, s session.Session) (handler.Model, error) {
	model := handler.NewModel()
	return model, nil
}

func ListAuthors(w http.ResponseWriter, r *http.Request, s session.Session) (handler.Model, error) {
	model := handler.NewModel()
	return model, nil
}

func main() {

	// ---------------------------------------
	// application config
	// ---------------------------------------
	configPath := os.Args[1]
	currentDir, err := os.Getwd()
	if err != nil {
		panic(fmt.Sprintf("Cannot get the path to current directory: %v", err))
	}

	appConfig, err := config.ReadConfig(currentDir + "/" + configPath)

	fmt.Println("Config - OK")

	//fmt.Print("\n", appConfig.Server.Port)

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

	fmt.Println("Redis - OK")

	// ---------------------------------------
	// main db - mongo
	// ---------------------------------------
	session, err := mgo.Dial(appConfig.Databases.Mongo.Host + ":" + strconv.Itoa(appConfig.Databases.Mongo.Port))
	if err != nil {
		panic(err)
	}
	defer session.Close()

	// Optional. Switch the session to a monotonic behavior.
	session.SetMode(mgo.Monotonic, true)
	database := session.DB(appConfig.Databases.Mongo.DB)

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
	var authorService author.AuthorService = author.NewAuthorService(authorDal)
	var bookService book.BookService = book.NewBookServiceImpl(bookDal, authorDal)

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
	mux.PathPrefix("/static/").Handler(http.StripPrefix("/static/", http.FileServer(http.Dir("static/"))))

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
