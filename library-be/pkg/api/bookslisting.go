package api

import (
	"net/http"

	"github.com/adrian83/library/pkg/book"
)

type booksLister interface {
	ListBooks(offset, limit int) book.Page
}

func HandleBooksListing(booksLister booksLister, w http.ResponseWriter, r *http.Request) {

}
