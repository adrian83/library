package handler

import (
	author "domain/author"
	"encoding/json"
	"github.com/adrian83/go-redis-session"
	"net/http"

	"web/validation"

	e "errors"
)

const (
	authorIDLabel = "author_id"
	authorLabel   = "author"
	authorsLabel  = "authors"
)

type AuthorHandler struct {
	AuthorService author.AuthorService
}

func (h *AuthorHandler) AddAuthor(w http.ResponseWriter, r *http.Request, s session.Session) error {

	var a author.Author
	if err := json.NewDecoder(r.Body).Decode(&a); err != nil {
		return Error500(err)
	}

	errors, ok := (&validation.AuthorValidator{}).Validate(a)
	if !ok {
		return Error500(e.New("type assertion error"))
	}

	if len(errors) > 0 {
		return Error400(errors)
	}

	a, err := h.AuthorService.Add(a)
	if err != nil {
		return Error500(err)
	}

	// return author
	js, err := json.Marshal(a)
	if err != nil {
		return Error500(err)
	}
	w.Write(js)

	return nil
}

func (h *AuthorHandler) GetAuthors(w http.ResponseWriter, r *http.Request, s session.Session) error {

	authors, err := h.AuthorService.GetAuthors()
	if err != nil {
		return Error500(err)
	}

	// return authors
	js, err := json.Marshal(authors)
	if err != nil {
		return Error500(err)
	}
	w.Write(js)

	return nil
}

func (h *AuthorHandler) UpdateAuthor(w http.ResponseWriter, r *http.Request, s session.Session) error {

	authorID := GetPathParam(r, authorIDLabel)

	var authorUpdate author.AuthorUpdate
	if err := json.NewDecoder(r.Body).Decode(&authorUpdate); err != nil {
		return Error500(err)
	}

	authorUpdate.ID = authorID

	errors, ok := (&validation.AuthorUpdateValidator{}).Validate(authorUpdate)
	if !ok {
		return Error500(e.New("type assertion error"))
	}
	if len(errors) > 0 {
		return Error400(errors)
	}

	if err := h.AuthorService.Update(authorUpdate); err != nil {
		return Error500(err)
	}

	return nil
}

func (h *AuthorHandler) DeleteAuthor(w http.ResponseWriter, r *http.Request, s session.Session) error {

	authorID := GetPathParam(r, authorIDLabel)

	err := h.AuthorService.Delete(authorID)
	if err != nil {
		return Error500(err)
	}

	return nil
}

func (h *AuthorHandler) GetAuthor(w http.ResponseWriter, r *http.Request, s session.Session) error {

	authorID := GetPathParam(r, authorIDLabel)

	author, err := h.AuthorService.GetAuthor(authorID)
	if err != nil {
		return Error500(err)
	}

	// return author
	js, err := json.Marshal(author)
	if err != nil {
		return Error500(err)
	}
	w.Write(js)

	return nil
}
