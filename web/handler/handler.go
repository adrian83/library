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

type Handler func(w http.ResponseWriter, r *http.Request, s redissession.Session) (Model, error)

type Model struct {
	Values     map[string]interface{}
	HttpStatus int
}

func NewModel() Model {
	return Model{
		Values:     make(map[string]interface{}, 0),
		HttpStatus: http.StatusOK,
	}
}
