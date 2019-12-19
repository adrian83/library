package book

import (
	"context"
	"encoding/json"
	"net/http"

	"github.com/adrian83/library/pkg/api"
	"github.com/adrian83/library/pkg/book"
	"github.com/gorilla/mux"
)

const (
	bookIDParam = "bookId"
)

type bookPersister interface {
	Persist(ctx context.Context, b book.Book) error
}

type booksLister interface {
	List(ctx context.Context, listBooks *book.ListBooks) (book.Page, error)
}

type bookUpdater interface {
	Update(ctx context.Context, b book.Book) error
}

// HandlePersisting is a handler / controller for persisting book.
func HandlePersisting(bookPersister bookPersister) func(http.ResponseWriter, *http.Request) {

	return func(w http.ResponseWriter, r *http.Request) {

		ctx, cancel := context.WithTimeout(context.Background(), api.RequestTimeout)
		defer cancel()

		var createBook CreateBook
		if err := api.UnmarshalAndValidate(r.Body, &createBook); err != nil {
			api.HandleError(err, w)
			return
		}

		bkg := book.NewBook(createBook.Title)
		if err := bookPersister.Persist(ctx, *bkg); err != nil {
			api.HandleError(err, w)
			return
		}

		respBts, err := json.Marshal(bkg)
		if err != nil {
			api.HandleError(err, w)
			return
		}

		api.ResponseJSON(http.StatusCreated, respBts, w)
	}
}

// HandleUpdating is a handler / controller for updating book.
func HandleUpdating(bookUpdater bookUpdater) func(http.ResponseWriter, *http.Request) {

	return func(w http.ResponseWriter, r *http.Request) {

		ctx, cancel := context.WithTimeout(context.Background(), api.RequestTimeout)
		defer cancel()

		bookID := mux.Vars(r)[bookIDParam]

		var updateBook UpdateBook
		if err := api.UnmarshalAndValidate(r.Body, &updateBook); err != nil {
			api.HandleError(err, w)
			return
		}

		bkg := book.NewBookWithID(bookID, updateBook.Title)
		if err := bookUpdater.Update(ctx, *bkg); err != nil {
			api.HandleError(err, w)
			return
		}

		respBts, err := json.Marshal(bkg)
		if err != nil {
			api.HandleError(err, w)
			return
		}

		api.ResponseJSON(http.StatusOK, respBts, w)
	}
}

func HandleListing(booksLister booksLister) func(http.ResponseWriter, *http.Request) {
	return func(w http.ResponseWriter, r *http.Request) {

		ctx, cancel := context.WithTimeout(context.Background(), api.RequestTimeout)
		defer cancel()

		listBooks := book.NewListBooks(0, 100, "title")

		page, err := booksLister.List(ctx, listBooks)
		if err != nil {
			api.HandleError(err, w)
			return
		}

		respBts, err := json.Marshal(page)
		if err != nil {
			api.HandleError(err, w)
			return
		}

		api.ResponseJSON(http.StatusOK, respBts, w)
	}
}
