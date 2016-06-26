package html

import (
	"fmt"
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
		fmt.Fprintf(w, "error: %v", err)
		return
	}
	fmt.Printf("Model: %v\n", model)

	tmpl, err := template.ParseFiles(h.htmlPath())
	if err != nil {
		fmt.Fprintf(w, "error: %v\n", err)
		return
	}

	if err = tmpl.ExecuteTemplate(w, h.View, model); err != nil {
		fmt.Fprintf(w, "error: %v\n", err)
		return
	}
}

func (h *HttpHandler) htmlPath() string {
	return "../static/templates/html/" + h.View + ".html"
}
