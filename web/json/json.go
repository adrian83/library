package json

import (
	"encoding/json"
	"net/http"
	"web/handler"
)

const (
	contentTypeHeader = "Content-Type"
	contentTypeValue  = "application/json"
)

type JsonHandler struct {
	Handler func(http.ResponseWriter, *http.Request) (handler.Model, error)
}

func (h *JsonHandler) ServeHTTP(w http.ResponseWriter, req *http.Request) {

	model, err := h.Handler(w, req)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	js, err := json.Marshal(model.Values)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	w.Header().Set(contentTypeHeader, contentTypeValue)
	w.Write(js)
}
