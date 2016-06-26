package handler

import (
	"github.com/adrian83/go-redis-session"
	"net/http"
)

/*
type ModelHandler interface {
	Handle(w http.ResponseWriter, r *http.Request) (map[string]interface{}, error)
}
*/

type Handler func(w http.ResponseWriter, r *http.Request, s redissession.Session) (map[string]interface{}, error)
