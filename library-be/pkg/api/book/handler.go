package book

import (
	"context"
	"fmt"
	"net/http"

	"github.com/adrian83/library/pkg/api"
	"github.com/adrian83/library/pkg/book"
	"github.com/adrian83/library/pkg/common"
	"github.com/gorilla/mux"
)

const (
	bookIDParam = "bookId"
)

type bookPersister interface {
	Persist(ctx context.Context, b *book.Book) error
}

type booksLister interface {
	List(ctx context.Context, listBooks *common.ListRequest) (*book.BooksPage, error)
}

type bookUpdater interface {
	Update(ctx context.Context, b *book.Book) error
}

type bookDeleter interface {
	Delete(ctx context.Context, bookID string) error
}

type bookGetter interface {
	Find(ctx context.Context, id string) (*book.Book, error)
}

func HandleGetting(bookGetter bookGetter) func(http.ResponseWriter, *http.Request) {

	return func(w http.ResponseWriter, r *http.Request) {
		ctx, cancel := context.WithTimeout(context.Background(), api.RequestTimeout)
		defer cancel()

		bookID := mux.Vars(r)[bookIDParam]

		bkg, err := bookGetter.Find(ctx, bookID)
		if err != nil {
			api.HandleError(err, w)
			return
		}

		api.ResponseJSON(http.StatusOK, bkg, w)
	}
}

// HandleDeleting is a handler / controller for deleting books.
func HandleDeleting(bookDeleter bookDeleter) func(http.ResponseWriter, *http.Request) {

	return func(w http.ResponseWriter, r *http.Request) {
		ctx, cancel := context.WithTimeout(context.Background(), api.RequestTimeout)
		defer cancel()

		bookID := mux.Vars(r)[bookIDParam]

		if err := bookDeleter.Delete(ctx, bookID); err != nil {
			api.HandleError(err, w)
			return
		}

		api.ResponseJSON(http.StatusOK, nil, w)
	}
}

// HandlePersisting is a handler / controller for persisting book.
func HandlePersisting(bookPersister bookPersister) func(http.ResponseWriter, *http.Request) {

	return func(w http.ResponseWriter, r *http.Request) {

		ctx, cancel := context.WithTimeout(context.Background(), api.RequestTimeout)
		defer cancel()

		var createBook CreateBook
		err := api.UnmarshalAndValidate(r.Body, &createBook)
		fmt.Printf("ERROR: %t", err)
		if err != nil {
			api.HandleError(err, w)
			return
		}

		bkg := book.NewBook(createBook.Title)
		if err := bookPersister.Persist(ctx, bkg); err != nil {
			api.HandleError(err, w)
			return
		}

		api.ResponseJSON(http.StatusCreated, bkg, w)
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
		if err := bookUpdater.Update(ctx, bkg); err != nil {
			api.HandleError(err, w)
			return
		}

		api.ResponseJSON(http.StatusOK, bkg, w)
	}
}

// HandleListing is a handler / controller for listing books.
func HandleListing(booksLister booksLister) func(http.ResponseWriter, *http.Request) {
	return func(w http.ResponseWriter, r *http.Request) {

		ctx, cancel := context.WithTimeout(context.Background(), api.RequestTimeout)
		defer cancel()

		listBooks := common.NewListRequest(0, 100, "title")

		page, err := booksLister.List(ctx, listBooks)
		if err != nil {
			api.HandleError(err, w)
			return
		}

		api.ResponseJSON(http.StatusOK, page, w)
	}
}
