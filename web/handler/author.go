package handler

import (
	"domain/author/model"
	"encoding/json"
	"github.com/adrian83/go-redis-session"
	"net/http"

	authordal "domain/author/dal"
	"web/validation"
)

type AuthorHandler struct {
	AuthorDal authordal.AuthorDal
}

func (h *AuthorHandler) AddAuthor(w http.ResponseWriter, r *http.Request, s redissession.Session) (map[string]interface{}, error) {

	modelDict := map[string]interface{}{}

	decoder := json.NewDecoder(r.Body)
	var author model.Author
	if err := decoder.Decode(&author); err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
	}

	var validator validation.Validator = &AuthorValidator{}
	errors, ok := validator.Validate(author)
	if !ok {
		modelDict["500"] = "type assertion error!"
		return modelDict, nil
	}
	if len(errors) > 0 {
		modelDict["validationErrors"] = errors
		return modelDict, nil
	}

	h.AuthorDal.Add(author)
	modelDict["author"] = author

	return modelDict, nil
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

type AuthorValidator struct {
}

func (v *AuthorValidator) Validate(entity interface{}) ([]validation.ValidationError, bool) {
	errors := make([]validation.ValidationError, 0)

	author, ok := entity.(model.Author)
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
