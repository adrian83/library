package handler

import (
	mymodel "domain/book/model"
	"encoding/json"
	"github.com/adrian83/go-redis-session"
	"net/http"

	bookservice "domain/book/service"

	"web/validation"

	e "errors"
)

type BookHandler struct {
	BookService bookservice.BookService
}

func (h *BookHandler) AddBook(w http.ResponseWriter, r *http.Request, s redissession.Session) (Model, error) {

	model := NewModel()

	decoder := json.NewDecoder(r.Body)
	var book mymodel.Book
	if err := decoder.Decode(&book); err != nil {
		return model, Error500(err)
	}

	var validator validation.Validator = &BookValidator{}
	errors, ok := validator.Validate(book)
	if !ok {
		return model, Error500(e.New("type assertion error"))
	}

	if len(errors) > 0 {
		return model, Error400(errors)
	}

	h.BookService.Add(book)
	model.Values["book"] = book

	return model, nil
}

func (h *BookHandler) GetBooks(w http.ResponseWriter, r *http.Request, s redissession.Session) (Model, error) {

	model := NewModel()

	books, err := h.BookService.GetBooks()
	if err != nil {
		return model, Error500(err)
	}

	model.Values["books"] = books

	return model, nil
}

type BookValidator struct {
}

func (v *BookValidator) Validate(entity interface{}) ([]validation.ValidationError, bool) {
	errors := make([]validation.ValidationError, 0)

	book, ok := entity.(mymodel.Book)
	if !ok {
		return errors, ok
	}

	if validation.IsStringEmpty(book.Title) {
		errors = append(errors, validation.EmptyBookTitle)
	}

	return errors, true
}
