package handler

import (
	"net/http"

	libhtml "github.com/adrian83/go-mvc-library/library/web/html"
	libsession "github.com/adrian83/go-mvc-library/library/web/session"
	session "github.com/adrian83/go-redis-session"
)

// NotFoundHandler is a handler executed when requested resource cannot be found.
type NotFoundHandler struct {
	SessionStore session.Store
}

// Handler returns http.Handler for handling not found resources.
func (nfh *NotFoundHandler) Handler() http.Handler {
	return &libhtml.HttpHandler{
		View:    "index",
		Handler: libsession.WithSession(nfh.SessionStore, nfh.index)}
}

func (nfh *NotFoundHandler) index(w http.ResponseWriter, r *http.Request, s session.Session) error {
	return nil
}
