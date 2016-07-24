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

	w.Header().Set(contentTypeHeader, contentTypeValue)

	model, err := h.Handler(w, req)
	if err != nil {

		appError, ok := err.(*handler.AppError)
		if !ok {
			appError = handler.Error500(err)
		}

		errJSON, err2 := json.Marshal(appError.Dict())
		if err2 != nil {
			http.Error(w, err2.Error(), http.StatusInternalServerError)
			return
		}

		http.Error(w, string(errJSON), appError.HttpStatus)
		return
	}

	js, err := json.Marshal(model.Values)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	w.Write(js)
}
