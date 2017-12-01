package handler

import "net/http"

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
