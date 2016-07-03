package handler

import (
	"domain/author/model"
	"encoding/json"
	"github.com/adrian83/go-redis-session"
	"net/http"

	authordal "domain/author/dal"
)

type AuthorHandler struct {
	AuthorDal authordal.AuthorDal
}

func (h *AuthorHandler) AddAuthor(w http.ResponseWriter, r *http.Request, s redissession.Session) (map[string]interface{}, error) {

	decoder := json.NewDecoder(r.Body)
	var author model.Author
	if err := decoder.Decode(&author); err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
	}

	h.AuthorDal.Add(author)

	model := map[string]interface{}{}
	model["author"] = author

	return model, nil
}

func (h *AuthorHandler) GetAuthors(w http.ResponseWriter, r *http.Request, s redissession.Session) (map[string]interface{}, error) {

	authors, err := h.AuthorDal.GetAuthors()
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
	}

	model := map[string]interface{}{}
	model["authors"] = authors

	return model, nil
}
