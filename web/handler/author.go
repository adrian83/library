package handler

import (
	author "domain/author"
	"encoding/json"
	"github.com/adrian83/go-redis-session"
	"net/http"

	"web/validation"

	e "errors"
)

type AuthorHandler struct {
	AuthorService author.AuthorService
}

func (h *AuthorHandler) AddAuthor(w http.ResponseWriter, r *http.Request, s session.Session) (Model, error) {

	model := NewModel()

	var a author.Author
	if err := json.NewDecoder(r.Body).Decode(&a); err != nil {
		return model, Error500(err)
	}

	errors, ok := (&validation.AuthorValidator{}).Validate(a)
	if !ok {
		return model, Error500(e.New("type assertion error"))
	}

	if len(errors) > 0 {
		return model, Error400(errors)
	}

	a, err := h.AuthorService.Add(a)
	if err != nil {
		return model, Error500(err)
	}

	model.Values["author"] = a
	return model, nil
}

func (h *AuthorHandler) GetAuthors(w http.ResponseWriter, r *http.Request, s session.Session) (Model, error) {

	model := NewModel()

	authors, err := h.AuthorService.GetAuthors()
	if err != nil {
		return model, Error500(err)
	}

	model.Values["authors"] = authors

	return model, nil
}

func (h *AuthorHandler) UpdateAuthor(w http.ResponseWriter, r *http.Request, s session.Session) (Model, error) {

	authorID := GetPathParam(r, "author_id")

	model := NewModel()

	var authorUpdate author.AuthorUpdate
	if err := json.NewDecoder(r.Body).Decode(&authorUpdate); err != nil {
		return model, Error500(err)
	}

	authorUpdate.ID = authorID

	errors, ok := (&validation.AuthorUpdateValidator{}).Validate(authorUpdate)
	if !ok {
		return model, Error500(e.New("type assertion error"))
	}
	if len(errors) > 0 {
		return model, Error400(errors)
	}

	if err := h.AuthorService.Update(authorUpdate); err != nil {
		return model, Error500(err)
	}

	return model, nil
}

func (h *AuthorHandler) DeleteAuthor(w http.ResponseWriter, r *http.Request, s session.Session) (Model, error) {

	authorID := GetPathParam(r, "author_id")

	model := NewModel()

	err := h.AuthorService.Delete(authorID)
	if err != nil {
		return model, Error500(err)
	}

	return model, nil
}

func (h *AuthorHandler) GetAuthor(w http.ResponseWriter, r *http.Request, s session.Session) (Model, error) {

	authorID := GetPathParam(r, "author_id")

	model := NewModel()

	author, err := h.AuthorService.GetAuthor(authorID)
	if err != nil {
		return model, Error500(err)
	}
	model.Values["author"] = author

	return model, nil
}
