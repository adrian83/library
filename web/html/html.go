package html

import (
	"net/http"
	"text/template"
)

type HttpHandler struct {
	View    string
	Handler func(http.ResponseWriter, *http.Request) (map[string]interface{}, error)
}

func (h *HttpHandler) ServeHTTP(w http.ResponseWriter, req *http.Request) {
	model, err := h.Handler(w, req)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	tmpl, err := template.ParseFiles(h.htmlPath())
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	if err = tmpl.ExecuteTemplate(w, h.View, model); err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
}

func (h *HttpHandler) htmlPath() string {
	return "../static/templates/html/" + h.View + ".html"
}
