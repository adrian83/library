package api

import (
	"context"
	"encoding/json"
	"net/http"

	"github.com/adrian83/library/pkg/book"
)

type bookPersister interface {
	Persist(ctc context.Context, b book.Book) error
}

// HandleBooksPersisting is a handler / controller for persisting book.
func HandleBooksPersisting(bookPersister bookPersister) func(http.ResponseWriter, *http.Request) {

	return func(w http.ResponseWriter, r *http.Request) {

		ctx, _ := context.WithTimeout(context.Background(), requestTimeout)

		createBook := new(CreateBook)
		if err := unmarshalAndValidate(r.Body, addAuthor); err != nil {
			handleError(err, w)
			return
		}

		book := book.NewBook(createBook.Title)
		if err := bookPersister.Persist(ctx, *book); err != nil {
			handleError(err, w)
			return
		}

		respBts, err := json.Marshal(book)
		if err != nil {
			handleError(err, w)
			return
		}

		responseJson(http.StatusCreated, respBts, w)
	}
}

// CreateBook represents data in request body.
type CreateBook struct {
	Title string `json:"title"`
}

func (cb *CreateBook) Validate() *ValidationError {
	violations := make([]*Violation, 0)

	if cb.Title == "" {
		violations = append(violations, NewViolation("title", "title cannot be empty"))
	}

	if len(violations) > 0 {
		return NewValidationError(violations...)
	}
	return nil
}
