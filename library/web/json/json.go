package json

import (
	"encoding/json"
	"net/http"

	liberrors "github.com/adrian83/go-mvc-library/library/web/errors"
)

const (
	contentTypeHeader = "Content-Type"
	contentTypeValue  = "application/json"
)

type JsonHandler struct {
	Handler func(http.ResponseWriter, *http.Request) error
}

func (h *JsonHandler) ServeHTTP(w http.ResponseWriter, req *http.Request) {

	w.Header().Set(contentTypeHeader, contentTypeValue)

	err := h.Handler(w, req)
	if err != nil {

		appError, ok := err.(*liberrors.AppError)
		if !ok {
			appError = liberrors.Error500(err)
		}

		errJSON, err2 := json.Marshal(appError.Dict())
		if err2 != nil {
			http.Error(w, err2.Error(), http.StatusInternalServerError)
			return
		}

		http.Error(w, string(errJSON), appError.HttpStatus)
		return
	}

}
