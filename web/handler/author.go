package handler

import (
	"github.com/adrian83/go-redis-session"
	"net/http"
)

type Author struct {
	FirstName string
	LastName  string
}

type AuthorHandler struct {
}

func (h *AuthorHandler) AddAuthor(w http.ResponseWriter, r *http.Request, s redissession.Session) (map[string]interface{}, error) {

	author := Author{
		FirstName: "Adam",
		LastName:  "Mickiewicz",
	}

	model := map[string]interface{}{}
	model["author"] = author

	return model, nil
}
