package api

import (
	"context"
	"encoding/json"
	"net/http"
	"time"

	"github.com/adrian83/library/pkg/book"
)

type booksLister interface {
	List(ctx context.Context, listBooks *book.ListBooks) (book.Page, error)
}

func HandleBooksListing(booksLister booksLister) func(http.ResponseWriter, *http.Request) {
	return func(w http.ResponseWriter, r *http.Request) {

		ctx, _ := context.WithTimeout(context.Background(), 10*time.Second)

		listBooks := book.NewListBooks(0, 100, "title")

		page, err := booksLister.List(ctx, listBooks)
		if err != nil {
			handleError(err, w)
			return
		}

		respBts, err := json.Marshal(page)
		if err != nil {
			handleError(err, w)
			return
		}

		responseJson(http.StatusOK, respBts, w)
	}
}
