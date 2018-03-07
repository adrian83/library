package handler

import (
	// std lib
	"encoding/json"
	"log"
	"net/http"

	// ours
	libbook "github.com/adrian83/go-mvc-library/library/domain/book"
	"github.com/adrian83/go-mvc-library/library/domain/common/model"
	liberrors "github.com/adrian83/go-mvc-library/library/web/errors"
	"github.com/adrian83/go-mvc-library/library/web/forms"
	libjson "github.com/adrian83/go-mvc-library/library/web/json"
	libsession "github.com/adrian83/go-mvc-library/library/web/session"

	// 3th party
	"github.com/adrian83/go-redis-session"
)

const (
	bookIDLabel = "book_id"
	bookLabel   = "book"
	booksLabel  = "books"
)

// BookHandler is a handler for everything book-related.
type BookHandler struct {
	SessionStore session.Store
	BookService  libbook.Service
}

// Routes implements Controller interface.
func (bh *BookHandler) Routes() []Route {
	return []Route{
		Route{
			Path:    apiV1 + "books",
			Handler: &libjson.JsonHandler{Handler: libsession.WithSession(bh.SessionStore, bh.addBook)},
			Method:  "POST",
		},
		Route{
			Path:    apiV1 + "books",
			Handler: &libjson.JsonHandler{Handler: libsession.WithSession(bh.SessionStore, bh.getBooks)},
			Method:  "GET",
		},
		Route{
			Path:    apiV1 + "books/{book_id}",
			Handler: &libjson.JsonHandler{Handler: libsession.WithSession(bh.SessionStore, bh.updateBook)},
			Method:  "PUT",
		},
		Route{
			Path:    apiV1 + "books/{book_id}",
			Handler: &libjson.JsonHandler{Handler: libsession.WithSession(bh.SessionStore, bh.deleteBook)},
			Method:  "DELETE",
		},
		Route{
			Path:    apiV1 + "books/{book_id}",
			Handler: &libjson.JsonHandler{Handler: libsession.WithSession(bh.SessionStore, bh.getBook)},
			Method:  "GET",
		},
	}
}

func (bh *BookHandler) addBook(w http.ResponseWriter, r *http.Request, s session.Session) {

	newBookForm := new(forms.BookForm)
	if err := json.NewDecoder(r.Body).Decode(&newBookForm); err != nil {
		log.Printf("Error while decoding new book. Error: %v", err)
		liberrors.Error500(err).Write(w)
	}

	log.Printf("Create new book. Form: %v", newBookForm)

	if validationErrs := newBookForm.Validate(); !validationErrs.Empty() {
		log.Printf("Validation of new book failed. Errors: %v", validationErrs)
		liberrors.Error400(validationErrs).Write(w)
	}

	book, err := bh.BookService.Save(newBookForm.ToBook())
	if err != nil {
		log.Printf("Persisting new book failed. Errors: %v", err)
		liberrors.Error500(err).Write(w)
	}

	if err = json.NewEncoder(w).Encode(book); err != nil {
		log.Printf("Error while marshaling book to JSON. Error: %v", err)
		liberrors.Error500(err).Write(w)
	}
}

func (bh *BookHandler) getBooks(w http.ResponseWriter, r *http.Request, s session.Session) {
	pageInfo := PageInfoFrom(r)

	books, err := bh.BookService.Books(pageInfo)
	if err != nil {
		log.Printf("Error while getting books. Error: %v", err)
		liberrors.Error500(err).Write(w)
	}

	if err = json.NewEncoder(w).Encode(books); err != nil {
		log.Printf("Error while marshalling books to JSON. Error: %v", err)
		liberrors.Error500(err).Write(w)
	}
}

func (bh *BookHandler) getBook(w http.ResponseWriter, r *http.Request, s session.Session) {

	bookID := GetPathParam(r, bookIDLabel)
	if !model.IsIDValid(bookID) {
		log.Printf("Invalid book ID %v", bookID)
		liberrors.Error400([]*model.ValidationError{&model.InvalidID}).Write(w)
	}

	book, err := bh.BookService.GetBook(bookID)
	if err != nil {
		log.Printf("Error while getting book from DB. Error: %v", err)
		liberrors.Error500(err).Write(w)
	}

	if err = json.NewEncoder(w).Encode(book); err != nil {
		log.Printf("Error while marshalling book to JSON. Error: %v", err)
		liberrors.Error500(err).Write(w)
	}
}

func (bh *BookHandler) deleteBook(w http.ResponseWriter, r *http.Request, s session.Session) {

	bookID := GetPathParam(r, bookIDLabel)
	if !model.IsIDValid(bookID) {
		log.Printf("Invalid book ID %v", bookID)
		liberrors.Error400([]*model.ValidationError{&model.InvalidID}).Write(w)
	}

	if err := bh.BookService.Delete(bookID); err != nil {
		log.Printf("Error while deleting book from DB. Error: %v", err)
		liberrors.Error500(err).Write(w)
	}
}

func (bh *BookHandler) updateBook(w http.ResponseWriter, r *http.Request, s session.Session) {

	bookID := GetPathParam(r, bookIDLabel)
	if !model.IsIDValid(bookID) {
		log.Printf("Invalid book ID %v", bookID)
		liberrors.Error400([]*model.ValidationError{&model.InvalidID}).Write(w)
	}

	bookForm := new(forms.BookForm)
	if err := json.NewDecoder(r.Body).Decode(&bookForm); err != nil {
		log.Printf("Error while decoding book. Error: %v", err)
		liberrors.Error500(err).Write(w)
	}

	bookForm.ID = bookID

	if validationErrs := bookForm.Validate(); !validationErrs.Empty() {
		log.Printf("Validation of updated book failed. Errors: %v", validationErrs)
		liberrors.Error400(validationErrs).Write(w)
	}

	if err := bh.BookService.Update(bookForm.ToBook()); err != nil {
		log.Printf("Error while updating book %v. Error: %v", bookForm, err)
		liberrors.Error500(err).Write(w)
	}

	if err := json.NewEncoder(w).Encode(bookForm); err != nil {
		log.Printf("Error while marshaling book %v to JSON. Error: %v", bookForm, err)
		liberrors.Error500(err).Write(w)
	}
}
