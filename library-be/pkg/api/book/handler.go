package book

import (
	"context"
	"net/http"

	"github.com/adrian83/library/pkg/api"
	"github.com/adrian83/library/pkg/book"
	"github.com/gorilla/mux"
)

const (
	bookIDParam = "bookId"
)

type bookPersister interface {
	Persist(ctx context.Context, req *book.CreateBookCommand) (*book.Book, error)
}

type booksLister interface {
	List(ctx context.Context, listBooks *book.ListBooksQuery) (*book.BooksPage, error)
}

type bookUpdater interface {
	Update(ctx context.Context, req *book.UpdateBookCommand) error
}

type bookDeleter interface {
	Delete(ctx context.Context, command *book.DeleteBookCommand) error
}

type bookGetter interface {
	Find(ctx context.Context, query *book.FindBookQuery) (*book.Book, error)
}

func HandleGetting(bookGetter bookGetter, logger api.Logger) func(http.ResponseWriter, *http.Request) {
	return func(w http.ResponseWriter, r *http.Request) {
		ctx, cancel := context.WithTimeout(context.Background(), api.RequestTimeout)
		defer cancel()

		bookID := mux.Vars(r)[bookIDParam]

		findBookQuery := book.NewFindBookQuery(bookID)

		logger.Infof("get book by id request, id: %s", bookID)

		bkg, err := bookGetter.Find(ctx, findBookQuery)
		if err != nil {
			api.HandleError(err, w, logger)
			return
		}

		logger.Infof("get book by id result, book: %s", bkg)

		api.ResponseJSON(http.StatusOK, bkg, w, logger)
	}
}

// HandleDeleting is a handler / controller for deleting books.
func HandleDeleting(bookDeleter bookDeleter, logger api.Logger) func(http.ResponseWriter, *http.Request) {
	return func(w http.ResponseWriter, r *http.Request) {
		ctx, cancel := context.WithTimeout(context.Background(), api.RequestTimeout)
		defer cancel()

		bookID := mux.Vars(r)[bookIDParam]

		logger.Infof("delete book by id request, id: %s", bookID)

		deleteBookCommand := book.NewDeleteBookCommand(bookID)

		if err := bookDeleter.Delete(ctx, deleteBookCommand); err != nil {
			api.HandleError(err, w, logger)
			return
		}

		logger.Info("delete book by id result, ok")

		api.ResponseJSON(http.StatusOK, nil, w, logger)
	}
}

// HandlePersisting is a handler / controller for persisting book.
func HandlePersisting(bookPersister bookPersister, logger api.Logger) func(http.ResponseWriter, *http.Request) {
	return func(w http.ResponseWriter, r *http.Request) {
		ctx, cancel := context.WithTimeout(context.Background(), api.RequestTimeout)
		defer cancel()

		var createBook CreateBook
		if err := api.UnmarshalAndValidate(r.Body, &createBook); err != nil {
			api.HandleError(err, w, logger)
			return
		}

		logger.Infof("persist book request, data: %s", createBook)

		req := book.NewCreateBookCommand(createBook.Title, createBook.Description, createBook.ISBN)

		bkg, err := bookPersister.Persist(ctx, req)
		if err != nil {
			api.HandleError(err, w, logger)
			return
		}

		logger.Infof("persist book response, book: %v", bkg)

		api.ResponseJSON(http.StatusCreated, bkg, w, logger)
	}
}

// HandleUpdating is a handler / controller for updating book.
func HandleUpdating(bookUpdater bookUpdater, logger api.Logger) func(http.ResponseWriter, *http.Request) {
	return func(w http.ResponseWriter, r *http.Request) {
		ctx, cancel := context.WithTimeout(context.Background(), api.RequestTimeout)
		defer cancel()

		bookID := mux.Vars(r)[bookIDParam]

		var updateBook UpdateBook
		if err := api.UnmarshalAndValidate(r.Body, &updateBook); err != nil {
			api.HandleError(err, w, logger)
			return
		}

		req := book.NewUpdateBookCommand(bookID, updateBook.Title, updateBook.Description, updateBook.ISBN, updateBook.Authors)

		logger.Infof("update book by id request, data: %s", req)

		if err := bookUpdater.Update(ctx, req); err != nil {
			api.HandleError(err, w, logger)
			return
		}

		logger.Info("update book by id response: ok")

		api.ResponseJSON(http.StatusOK, nil, w, logger)
	}
}

// HandleListing is a handler / controller for listing books.
func HandleListing(booksLister booksLister, logger api.Logger) func(http.ResponseWriter, *http.Request) {
	return func(w http.ResponseWriter, r *http.Request) {
		ctx, cancel := context.WithTimeout(context.Background(), api.RequestTimeout)
		defer cancel()

		logger.Info("list books request")

		listBooks := api.ParseListRequest(r.URL.Query())
		listBooksQuery := book.NewListBooksQuery(listBooks)

		page, err := booksLister.List(ctx, listBooksQuery)
		if err != nil {
			api.HandleError(err, w, logger)
			return
		}

		logger.Infof("list books response, page: %s", page)

		api.ResponseJSON(http.StatusOK, page, w, logger)
	}
}
