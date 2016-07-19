package handler

import (
	mymodel "domain/author/model"
	"encoding/json"
	"github.com/adrian83/go-redis-session"
	"github.com/gorilla/mux"
	"net/http"

	authordal "domain/author/dal"
	"fmt"
	"web/validation"
)

type AuthorHandler struct {
	AuthorDal authordal.AuthorDal
}

func (h *AuthorHandler) AddAuthor(w http.ResponseWriter, r *http.Request, s redissession.Session) (Model, error) {

	model := NewModel()

	decoder := json.NewDecoder(r.Body)
	var author mymodel.Author
	if err := decoder.Decode(&author); err != nil {
		model.HttpStatus = http.StatusInternalServerError
		model.Values["error"] = err.Error()
		//http.Error(w, err.Error(), http.StatusInternalServerError)
	}

	var validator validation.Validator = &AuthorValidator{}
	errors, ok := validator.Validate(author)
	if !ok {
		model.HttpStatus = http.StatusInternalServerError
		model.Values["error"] = "type assertion error!"
		return model, nil
	}
	if len(errors) > 0 {
		model.Values["validationErrors"] = errors
		return model, nil
	}

	h.AuthorDal.Add(author)
	model.Values["author"] = author

	return model, nil
}

func (h *AuthorHandler) GetAuthors(w http.ResponseWriter, r *http.Request, s redissession.Session) (Model, error) {

	authors, err := h.AuthorDal.GetAuthors()
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
	}

	model := NewModel()
	model.Values["authors"] = authors

	return model, nil
}

func (h *AuthorHandler) UpdateAuthor(w http.ResponseWriter, r *http.Request, s redissession.Session) (Model, error) {

	vars := mux.Vars(r)
	authorID := vars["author_id"]

	fmt.Println("-----------", authorID)

	model := NewModel()

	decoder := json.NewDecoder(r.Body)
	var authorUpdate mymodel.AuthorUpdate
	if err := decoder.Decode(&authorUpdate); err != nil {
		model.HttpStatus = http.StatusInternalServerError
		model.Values["error"] = err.Error()
	}

	//fmt.Println("----------- ", *authorUpdate.LastName, *authorUpdate.FirstName)

	authorUpdate.ID = authorID

	var validator validation.Validator = &AuthorUpdateValidator{}
	errors, ok := validator.Validate(authorUpdate)
	if !ok {
		model.HttpStatus = http.StatusInternalServerError
		model.Values["error"] = "type assertion error!"
		return model, nil
	}
	if len(errors) > 0 {
		model.Values["validationErrors"] = errors
		return model, nil
	}

	err := h.AuthorDal.Update(authorUpdate)
	if err != nil {
		fmt.Println("-----------err ", err)
	}

	//model.Values["author"] = authorUpdate

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
		e := validation.ValidationError{
			Field:   "LastName",
			Code:    "author.lastName",
			Message: "Author's last name cannot be empty"}

		errors = append(errors, e)
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
		e := validation.ValidationError{
			Field:   "LastName",
			Code:    "author.lastName",
			Message: "Author's last name cannot be empty"}

		errors = append(errors, e)
	}

	return errors, true
}
