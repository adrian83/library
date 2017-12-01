package handler

import (
	"net/http"

	"github.com/adrian83/go-redis-session"
	"github.com/gorilla/mux"
)

/*
type ModelHandler interface {
	Handle(w http.ResponseWriter, r *http.Request) (map[string]interface{}, error)
}
*/

const (
	errorProp = "error"
)

type Handler func(w http.ResponseWriter, r *http.Request, s session.Session) (Model, error)

type Model struct {
	Values     map[string]interface{}
	HttpStatus int
}

func (m *Model) Error500(err error) {
	m.Values[errorProp] = err.Error()
	m.HttpStatus = http.StatusInternalServerError
}

func NewModel() Model {
	return Model{
		Values:     make(map[string]interface{}, 0),
		HttpStatus: http.StatusOK,
	}
}

func GetPathParam(r *http.Request, name string) string {
	vars := mux.Vars(r)
	return vars[name]
}
