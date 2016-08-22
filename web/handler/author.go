package handler

import (
	mymodel "domain/author/model"
	"encoding/json"
	"github.com/adrian83/go-redis-session"
	"net/http"

	authordal "domain/author/dal"
	authorservice "domain/author/service"

	"web/validation"

	e "errors"
)

type AuthorHandler struct {
	AuthorDal     authordal.AuthorDal
	AuthorService authorservice.AuthorService
}

func (h *AuthorHandler) AddAuthor(w http.ResponseWriter, r *http.Request, s session.Session) (Model, error) {

	model := NewModel()

	var author mymodel.Author
	if err := json.NewDecoder(r.Body).Decode(&author); err != nil {
		return model, Error500(err)
	}

	errors, ok := (&validation.AuthorValidator{}).Validate(author)
	if !ok {
		return model, Error500(e.New("type assertion error"))
	}

	if len(errors) > 0 {
		return model, Error400(errors)
	}

	author, err := h.AuthorDal.Add(author)
	if err != nil {
		return model, Error500(err)
	}

	model.Values["author"] = author
	return model, nil
}

func (h *AuthorHandler) GetAuthors(w http.ResponseWriter, r *http.Request, s session.Session) (Model, error) {

	model := NewModel()

	authors, err := h.AuthorDal.GetAuthors()
	if err != nil {
		return model, Error500(err)
	}

	model.Values["authors"] = authors

	return model, nil
}

func (h *AuthorHandler) UpdateAuthor(w http.ResponseWriter, r *http.Request, s session.Session) (Model, error) {

	authorID := GetPathParam(r, "author_id")

	model := NewModel()

	var authorUpdate mymodel.AuthorUpdate
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

	if err := h.AuthorDal.Update(authorUpdate); err != nil {
		return model, Error500(err)
	}

	return model, nil
}

func (h *AuthorHandler) DeleteAuthor(w http.ResponseWriter, r *http.Request, s session.Session) (Model, error) {

	authorID := GetPathParam(r, "author_id")

	model := NewModel()

	err := h.AuthorDal.Delete(authorID)
	if err != nil {
		return model, Error500(err)
	}

	return model, nil
}

func (h *AuthorHandler) GetAuthor(w http.ResponseWriter, r *http.Request, s session.Session) (Model, error) {

	authorID := GetPathParam(r, "author_id")

	model := NewModel()

	author, err := h.AuthorDal.GetAuthor(authorID)
	if err != nil {
		return model, Error500(err)
	}
	model.Values["author"] = author

	return model, nil
}
