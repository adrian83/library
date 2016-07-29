package handler

import (
	// std lib
	"encoding/json"
	"errors"
	"net/http"

	// ours
	book "domain/book"
	"web/validation"

	// 3th party
	"github.com/adrian83/go-redis-session"
)

const (
	bookIDLabel = "book_id"
	bookLabel   = "book"
	booksLabel  = "books"
)

type BookHandler struct {
	BookService book.BookService
}

func (h *BookHandler) AddBook(w http.ResponseWriter, r *http.Request, s session.Session) (Model, error) {

	model := NewModel()

	decoder := json.NewDecoder(r.Body)
	var newBook book.NewBook
	if err := decoder.Decode(&newBook); err != nil {
		return model, Error500(err)
	}

	var validator validation.Validator = &BookValidator{}
	errs, ok := validator.Validate(newBook)
	if !ok {
		return model, Error500(errors.New("type assertion error"))
	}

	if len(errs) > 0 {
		return model, Error400(errs)
	}

	book, err := h.BookService.Add(newBook)
	if err != nil {
		return model, Error500(err)
	}

	model.Values[bookLabel] = book
	return model, nil
}

func (h *BookHandler) GetBooks(w http.ResponseWriter, r *http.Request, s session.Session) (Model, error) {

	model := NewModel()

	books, err := h.BookService.GetBooks()
	if err != nil {
		return model, Error500(err)
	}

	model.Values[booksLabel] = books

	return model, nil
}

func (h *BookHandler) GetBook(w http.ResponseWriter, r *http.Request, s session.Session) (Model, error) {

	model := NewModel()

	bookID := GetPathParam(r, bookIDLabel)
	if !validation.IsIDValid(bookID) {
		return model, Error400([]validation.ValidationError{validation.InvalidID})
	}

	book, ok, err := h.BookService.GetBook(bookID)
	if err != nil {
		return model, Error500(err)
	}
	if !ok {
		return model, Error404()
	}

	model.Values[bookLabel] = book

	return model, nil
}

func (h *BookHandler) DeleteBook(w http.ResponseWriter, r *http.Request, s session.Session) (Model, error) {

	bookID := GetPathParam(r, "book_id")

	model := NewModel()

	err := h.BookService.Delete(bookID)
	if err != nil {
		return model, Error500(err)
	}

	return model, nil
}

func (h *BookHandler) UpdateBook(w http.ResponseWriter, r *http.Request, s session.Session) (Model, error) {

	model := NewModel()

	bookID := GetPathParam(r, "book_id")
	if !validation.IsIDValid(bookID) {
		return model, Error400([]validation.ValidationError{validation.InvalidID})
	}

	var bookUpdate book.BookUpdate
	if err := json.NewDecoder(r.Body).Decode(&bookUpdate); err != nil {
		return model, Error500(err)
	}

	bookUpdate.ID = bookID

	var validator validation.Validator = &BookUpdateValidator{}
	errs, ok := validator.Validate(bookUpdate)
	if !ok {
		return model, Error500(errors.New("type assertion error"))
	}
	if len(errs) > 0 {
		return model, Error400(errs)
	}

	if err := h.BookService.Update(bookUpdate); err != nil {
		return model, Error500(err)
	}

	return model, nil
}

type BookValidator struct {
}

func (v *BookValidator) Validate(entity interface{}) ([]validation.ValidationError, bool) {
	errors := make([]validation.ValidationError, 0)

	book, ok := entity.(book.NewBook)
	if !ok {
		return errors, ok
	}

	if validation.IsStringEmpty(book.Title) {
		errors = append(errors, validation.EmptyBookTitle)
	}

	if len(book.AuthorID) == 0 {
		errors = append(errors, validation.EmptyAuthorList)
	}

	return errors, true
}

type BookUpdateValidator struct {
}

func (v *BookUpdateValidator) Validate(entity interface{}) ([]validation.ValidationError, bool) {
	errors := make([]validation.ValidationError, 0)

	book, ok := entity.(book.BookUpdate)
	if !ok {
		return errors, ok
	}

	if book.Title != nil && validation.IsStringEmpty(*book.Title) {
		errors = append(errors, validation.EmptyBookTitle)
	}

	if book.AuthorID != nil && len(book.AuthorID) == 0 {
		errors = append(errors, validation.EmptyAuthorList)
	}

	if book.AuthorID != nil && len(book.AuthorID) > 0 {
		for _, authorID := range book.AuthorID {
			if !validation.IsIDValid(authorID) {
				errors = append(errors, validation.InvalidID)
			}
		}
	}

	return errors, true
}
