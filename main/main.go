package main

import (
	"fmt"
	"github.com/adrian83/go-redis-session"
	"github.com/gorilla/mux"
	"net/http"
	"reflect"

	"web/handler"
	myhttp "web/html"
	myjson "web/json"
	"web/session"
)

var (
	id = 0
)

func Index(w http.ResponseWriter, r *http.Request, s redissession.Session) (map[string]interface{}, error) {

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

	model := map[string]interface{}{"idk": val}

	s.Add("id", val+1)

	return model, nil
}

func main() {

	sessionStoreConfig := redissession.Config{
		DB:       0,
		Password: "",
		Host:     "localhost",
		Port:     6379,
		IDLength: 50,
	}

	sessionStore, err := redissession.NewSessionStore(sessionStoreConfig)
	if err != nil {
		panic(fmt.Sprintf("SessionStore cannot be created because of: %v", err))
	}

	fmt.Println(sessionStore)

	authorHandler := &handler.AuthorHandler{}

	//mux := http.NewServeMux()
	mux := mux.NewRouter()
	files := http.FileServer(http.Dir("/static"))

	mux.Handle("/static/", http.StripPrefix("/static/", files))

	mux.Handle("/", &myhttp.HttpHandler{
		View:    "index",
		Handler: session.WithSession(sessionStore, Index)})

	mux.Handle("/rest/api/v1.0/authors", &myjson.JsonHandler{
		Handler: session.WithSession(sessionStore, authorHandler.AddAuthor)}).Methods("POST")

	server := &http.Server{Addr: "0.0.0.0:9090", Handler: mux}
	server.ListenAndServe()
}
