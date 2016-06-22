package handler

import (
	"net/http"
)

/*
type ModelHandler interface {
	Handle(w http.ResponseWriter, r *http.Request) (map[string]interface{}, error)
}
*/

type ModelHandler func(w http.ResponseWriter, r *http.Request) (map[string]interface{}, error)
