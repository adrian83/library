package handler

import (
	// std lib
	"encoding/json"
	"errors"
	"net/http"

	// ours
	book "github.com/adrian83/go-mvc-library/library/domain/book"
	liberrors "github.com/adrian83/go-mvc-library/library/web/errors"
	"github.com/adrian83/go-mvc-library/library/web/validation"

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

// Routes implements Controller interface.
func (bh *BookHandler) Routes() []Route {
	return []Route{}
}

func (h *BookHandler) AddBook(w http.ResponseWriter, r *http.Request, s session.Session) error {

	var newBook book.NewBook
	if err := json.NewDecoder(r.Body).Decode(&newBook); err != nil {
		return liberrors.Error500(err)
	}

	errs, ok := (&validation.BookValidator{}).Validate(newBook)
	if !ok {
		return liberrors.Error500(errors.New("type assertion error"))
	}

	if len(errs) > 0 {
		return liberrors.Error400(errs)
	}

	book, err := h.BookService.Add(newBook)
	if err != nil {
		return liberrors.Error500(err)
	}

	// return book
	js, err := json.Marshal(book)
	if err != nil {
		return liberrors.Error500(err)
	}
	w.Write(js)

	return nil
}

func (h *BookHandler) GetBooks(w http.ResponseWriter, r *http.Request, s session.Session) error {

	books, err := h.BookService.GetBooks()
	if err != nil {
		return liberrors.Error500(err)
	}

	// return books
	js, err := json.Marshal(books)
	if err != nil {
		return liberrors.Error500(err)
	}
	w.Write(js)

	return nil
}

func (h *BookHandler) GetBook(w http.ResponseWriter, r *http.Request, s session.Session) error {

	bookID := GetPathParam(r, bookIDLabel)
	if !validation.IsIDValid(bookID) {
		return liberrors.Error400([]validation.ValidationError{validation.InvalidID})
	}

	book, ok, err := h.BookService.GetBook(bookID)
	if err != nil {
		return liberrors.Error500(err)
	}
	if !ok {
		return liberrors.Error404()
	}

	// return book
	js, err := json.Marshal(book)
	if err != nil {
		return liberrors.Error500(err)
	}
	w.Write(js)

	return nil
}

func (h *BookHandler) DeleteBook(w http.ResponseWriter, r *http.Request, s session.Session) error {

	bookID := GetPathParam(r, bookIDLabel)

	err := h.BookService.Delete(bookID)
	if err != nil {
		return liberrors.Error500(err)
	}

	return nil
}

func (h *BookHandler) UpdateBook(w http.ResponseWriter, r *http.Request, s session.Session) error {

	bookID := GetPathParam(r, bookIDLabel)
	if !validation.IsIDValid(bookID) {
		return liberrors.Error400([]validation.ValidationError{validation.InvalidID})
	}

	var bookUpdate book.BookUpdate
	if err := json.NewDecoder(r.Body).Decode(&bookUpdate); err != nil {
		return liberrors.Error500(err)
	}

	bookUpdate.ID = bookID

	errs, ok := (&validation.BookUpdateValidator{}).Validate(bookUpdate)
	if !ok {
		return liberrors.Error500(errors.New("type assertion error"))
	}
	if len(errs) > 0 {
		return liberrors.Error400(errs)
	}

	if err := h.BookService.Update(bookUpdate); err != nil {
		return liberrors.Error500(err)
	}

	return nil
}
