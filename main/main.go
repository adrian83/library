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
	mysession "web/session"

	authordal "domain/author/dal"

	"gopkg.in/mgo.v2"
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

	defer sessionStore.Close()

	// mongo

	session, err := mgo.Dial("localhost")
	if err != nil {
		panic(err)
	}
	defer session.Close()

	// Optional. Switch the session to a monotonic behavior.
	session.SetMode(mgo.Monotonic, true)
	database := session.DB("library") // name from conf

	// dals
	var authorDal authordal.AuthorDal = authordal.NewAuthorMongoDal(database)

	fmt.Println(sessionStore)

	authorHandler := &handler.AuthorHandler{AuthorDal: authorDal}

	//mux := http.NewServeMux()
	mux := mux.NewRouter()
	files := http.FileServer(http.Dir("/static"))

	mux.Handle("/static/", http.StripPrefix("/static/", files))

	mux.Handle("/", &myhttp.HttpHandler{
		View:    "index",
		Handler: mysession.WithSession(sessionStore, Index)})

	mux.Handle("/rest/api/v1.0/authors", &myjson.JsonHandler{
		Handler: mysession.WithSession(sessionStore, authorHandler.AddAuthor)}).Methods("POST")
	mux.Handle("/rest/api/v1.0/authors", &myjson.JsonHandler{
		Handler: mysession.WithSession(sessionStore, authorHandler.GetAuthors)}).Methods("GET")

	server := &http.Server{Addr: "0.0.0.0:9090", Handler: mux}
	server.ListenAndServe()
}

/*
import (
        "fmt"
	"log"
        "gopkg.in/mgo.v2"
        "gopkg.in/mgo.v2/bson"
)

type Person struct {
        Name string
        Phone string
}

func main() {
        session, err := mgo.Dial("server1.example.com,server2.example.com")
        if err != nil {
                panic(err)
        }
        defer session.Close()

        // Optional. Switch the session to a monotonic behavior.
        session.SetMode(mgo.Monotonic, true)

        c := session.DB("test").C("people")
        err = c.Insert(&Person{"Ale", "+55 53 8116 9639"},
	               &Person{"Cla", "+55 53 8402 8510"})
        if err != nil {
                log.Fatal(err)
        }

        result := Person{}
        err = c.Find(bson.M{"name": "Ale"}).One(&result)
        if err != nil {
                log.Fatal(err)
        }

        fmt.Println("Phone:", result.Phone)
}
*/
