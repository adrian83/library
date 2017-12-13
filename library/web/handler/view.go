package handler

import (
	"fmt"
	"net/http"
	"strconv"

	libhttp "github.com/adrian83/go-mvc-library/library/web/html"
	libsession "github.com/adrian83/go-mvc-library/library/web/session"
	session "github.com/adrian83/go-redis-session"
)

// ViewHandler is a handler for everything view-related.
type ViewHandler struct {
	SessionStore session.Store
}

// Routes implements Controller interface.
func (vh *ViewHandler) Routes() []Route {
	return []Route{
		Route{
			Path: "/",
			Handler: &libhttp.HttpHandler{
				View:    "index",
				Handler: libsession.WithSession(vh.SessionStore, vh.index)},
			Method: "GET",
		},
	}
}

func (vh *ViewHandler) index(w http.ResponseWriter, r *http.Request, s session.Session) error {

	idStr, ok := s.Get("id")
	fmt.Printf("get val with key 'id': %v %v\n", idStr, ok)

	if !ok {
		idStr = "1"
	}

	id, err := strconv.Atoi(idStr)
	if err != nil {
		fmt.Printf("Cannot convert str to int")
		id = 1
	}

	s.Add("id", strconv.Itoa(id+1))

	return nil
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
*/
