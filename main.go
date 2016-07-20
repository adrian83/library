package main

import (
	"fmt"
	"github.com/adrian83/go-redis-session"
	"github.com/gorilla/mux"
	"net/http"
	"os"
	"reflect"

	"web/handler"
	myhttp "web/html"
	myjson "web/json"
	mysession "web/session"

	authordal "domain/author/dal"
	authorservice "domain/author/service"

	"config"
	"gopkg.in/mgo.v2"
)

var (
	id = 0
)

func Index(w http.ResponseWriter, r *http.Request, s redissession.Session) (handler.Model, error) {

	var val int = 0

	valI, ok := s.Get("id")
	fmt.Printf("get val with key 'id': %v %v\n", valI, ok)

	if ok {

		switch i := valI.(type) {
		case int:
			val = i
		case string:
			val = 666
		case float64:
			val = int(i)
		default:
			fmt.Println(reflect.TypeOf(valI))
			val = 777
		}

	}

	model := handler.NewModel()

	model.Values["idk"] = val

	s.Add("id", val+1)

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

	//fmt.Print("\n", appConfig.Server.Port)

	// ---------------------------------------
	// session
	// ---------------------------------------
	sessionStoreConfig := redissession.Config{
		DB:       appConfig.Session.Redis.DB,
		Password: appConfig.Session.Redis.Password,
		Host:     appConfig.Session.Redis.Host,
		Port:     appConfig.Session.Redis.Port,
		IDLength: appConfig.Session.IDLength,
	}

	sessionStore, err := redissession.NewSessionStore(sessionStoreConfig)
	if err != nil {
		panic(fmt.Sprintf("SessionStore cannot be created because of: %v", err))
	}
	defer sessionStore.Close()

	// ---------------------------------------
	// main db - mongo
	// ---------------------------------------
	session, err := mgo.Dial(appConfig.Databases.Mongo.Host)
	if err != nil {
		panic(err)
	}
	defer session.Close()

	// Optional. Switch the session to a monotonic behavior.
	session.SetMode(mgo.Monotonic, true)
	database := session.DB(appConfig.Databases.Mongo.DB)

	// ---------------------------------------
	// dals
	// ---------------------------------------
	var authorDal authordal.AuthorDal = authordal.NewAuthorMongoDal(database)

	// ---------------------------------------
	// services
	// ---------------------------------------
	var authorService authorservice.AuthorService = authorservice.NewAuthorService(authorDal)

	// ---------------------------------------
	// handlers (controllers)
	// ---------------------------------------
	accountHandler := &handler.AccountHandler{}
	authorHandler := &handler.AuthorHandler{AuthorDal: authorDal, AuthorService: authorService}

	// ---------------------------------------
	// routing
	// ---------------------------------------
	mux := mux.NewRouter()
	files := http.FileServer(http.Dir("/static"))

	mux.Handle("/static/", http.StripPrefix("/static/", files))

	mux.Handle("/", &myhttp.HttpHandler{
		View:    "index",
		Handler: mysession.WithSession(sessionStore, Index)})

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

	// ---------------------------------------
	// server
	// ---------------------------------------
	server := &http.Server{Addr: "0.0.0.0:9090", Handler: mux}
	server.ListenAndServe()
}
