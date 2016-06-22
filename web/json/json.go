package json

import (
	"net/http"
	"web/handler"
)

type JsonHandler struct {
	HandlerFunc handler.ModelHandler
}

func (h *JsonHandler) ServeHTTP(w http.ResponseWriter, req *http.Request) {

}
