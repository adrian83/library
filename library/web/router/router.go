package router

import (
	"net/http"

	"github.com/adrian83/go-mvc-library/library/web/handler"
	"github.com/gorilla/mux"
)

// CreateRouter creates new Router.
func CreateRouter(controllers ...handler.Controller) *mux.Router {
	mux := mux.NewRouter()
	mux.PathPrefix("/static/").Handler(http.StripPrefix("/static/", http.FileServer(http.Dir("../static/"))))

	for _, controller := range controllers {
		for _, route := range controller.Routes() {
			mux.Handle(route.Path, route.Handler).Methods(route.Method)
		}
	}
	/*
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
	*/
	return mux
}

/*
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
*/
