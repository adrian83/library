package handler

import (
	"net/http"

	"github.com/gorilla/mux"
)

const (
	apiV1 = "/rest/api/v1.0/"
)

// Route represents handler path and handler action.
type Route struct {
	Path    string
	Handler http.Handler
	Method  string
}

// Controller represents web controllers.
type Controller interface {
	Routes() []Route
}

// GetPathParam returns path param with given name.
func GetPathParam(r *http.Request, name string) string {
	vars := mux.Vars(r)
	return vars[name]
}
