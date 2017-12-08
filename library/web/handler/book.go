package handler

import (
	// std lib
	"encoding/json"
	"log"
	"net/http"

	// ours
	book "github.com/adrian83/go-mvc-library/library/domain/book"
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
	BookService  book.BookService
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

func (bh *BookHandler) addBook(w http.ResponseWriter, r *http.Request, s session.Session) error {

	newBook := new(forms.BookForm)
	if err := json.NewDecoder(r.Body).Decode(&newBook); err != nil {
		return liberrors.Error500(err)
	}

	// temporary for testing
	newBook.Authors = []forms.AuthorForm{
		forms.AuthorForm{
			ID:        "5a1f1d84e0880e12fd32199a",
			FirstName: "Henryk",
			LastName:  "Sienkiewicz",
		},
	}

	log.Printf("Create new book. Form: %v", newBook)

	if validationErrs := newBook.Validate(); !validationErrs.Empty() {
		return liberrors.Error400(validationErrs)
	}

	book, err := bh.BookService.Add(newBook.ToBook())
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

func (bh *BookHandler) getBooks(w http.ResponseWriter, r *http.Request, s session.Session) error {

	books, err := bh.BookService.GetBooks()
	if err != nil {
		log.Printf("Error while getting books. Error: %v", err)
		return liberrors.Error500(err)
	}

	// return books
	err = json.NewEncoder(w).Encode(books)
	if err != nil {
		log.Printf("Error while marshalling books to JSON. Error: %v", err)
		return liberrors.Error500(err)
	}

	return nil
}

func (bh *BookHandler) getBook(w http.ResponseWriter, r *http.Request, s session.Session) error {

	bookID := GetPathParam(r, bookIDLabel)
	if !model.IsIDValid(bookID) {
		return liberrors.Error400([]*model.ValidationError{&model.InvalidID})
	}

	book, err := bh.BookService.GetBook(bookID)
	if err != nil {
		return liberrors.Error500(err)
	}

	//return liberrors.Error404()

	// return book
	js, err := json.Marshal(book)
	if err != nil {
		return liberrors.Error500(err)
	}
	w.Write(js)

	return nil
}

func (bh *BookHandler) deleteBook(w http.ResponseWriter, r *http.Request, s session.Session) error {

	bookID := GetPathParam(r, bookIDLabel)

	err := bh.BookService.Delete(bookID)
	if err != nil {
		return liberrors.Error500(err)
	}

	return nil
}

func (bh *BookHandler) updateBook(w http.ResponseWriter, r *http.Request, s session.Session) error {

	bookID := GetPathParam(r, bookIDLabel)
	if !model.IsIDValid(bookID) {
		return liberrors.Error400([]*model.ValidationError{&model.InvalidID})
	}

	bookUpdate := new(forms.BookForm)
	if err := json.NewDecoder(r.Body).Decode(&bookUpdate); err != nil {
		return liberrors.Error500(err)
	}

	bookUpdate.ID = bookID

	if validationErrs := bookUpdate.Validate(); !validationErrs.Empty() {
		return liberrors.Error400(validationErrs)
	}

	if err := bh.BookService.Update(bookUpdate.ToBook()); err != nil {
		return liberrors.Error500(err)
	}

	return nil
}
