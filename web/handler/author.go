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

	decoder := json.NewDecoder(r.Body)
	var author mymodel.Author
	if err := decoder.Decode(&author); err != nil {
		return model, Error500(err)
	}

	var validator validation.Validator = &AuthorValidator{}
	errors, ok := validator.Validate(author)
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

	decoder := json.NewDecoder(r.Body)
	var authorUpdate mymodel.AuthorUpdate
	if err := decoder.Decode(&authorUpdate); err != nil {
		return model, Error500(err)
	}

	authorUpdate.ID = authorID

	var validator validation.Validator = &AuthorUpdateValidator{}
	errors, ok := validator.Validate(authorUpdate)
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

type AuthorValidator struct {
}

func (v *AuthorValidator) Validate(entity interface{}) ([]validation.ValidationError, bool) {
	errors := make([]validation.ValidationError, 0)

	author, ok := entity.(mymodel.Author)
	if !ok {
		return errors, ok
	}

	if validation.IsStringEmpty(author.LastName) {
		errors = append(errors, validation.EmptyAuthorLastName)
	}

	return errors, true
}

type AuthorUpdateValidator struct {
}

func (v *AuthorUpdateValidator) Validate(entity interface{}) ([]validation.ValidationError, bool) {
	errors := make([]validation.ValidationError, 0)

	author, ok := entity.(mymodel.AuthorUpdate)
	if !ok {
		return errors, ok
	}

	if validation.IsStringPtrNil(author.LastName) || validation.IsStringEmpty(*author.LastName) {
		errors = append(errors, validation.EmptyAuthorLastName)
	}

	return errors, true
}
