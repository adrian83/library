package api

import (
	"context"
	"encoding/json"
	"net/http"

	"github.com/adrian83/library/pkg/book"
	"github.com/gorilla/mux"
)

type bookReaderPersister interface {
	Find(ctc context.Context, id string) (book.Book, error)
	Update(ctx context.Context, book book.Book) error
}

// HandleAddingAuthor is a handler / controller for adding author to book.
func HandleAddingAuthor(service bookReaderPersister) func(http.ResponseWriter, *http.Request) {

	return func(w http.ResponseWriter, r *http.Request) {

		ctx, _ := context.WithTimeout(context.Background(), RequestTimeout)

		vars := mux.Vars(r)
		bookID := vars["bookId"]

		addAuthor := new(AddAuthor)
		if err := UnmarshalAndValidate(r.Body, addAuthor); err != nil {
			HandleError(err, w)
			return
		}

		b, err := service.Find(ctx, bookID)
		if err != nil {
			HandleError(err, w)
			return
		}

		author := book.NewAuthor(addAuthor.ID, addAuthor.Name)
		if err := b.AddAuthor(*author); err != nil {
			HandleError(err, w)
			return
		}

		if err := service.Update(ctx, b); err != nil {
			HandleError(err, w)
			return
		}

		respBts, err := json.Marshal(b)
		if err != nil {
			HandleError(err, w)
			return
		}

		ResponseJson(http.StatusCreated, respBts, w)
	}
}

// AddAuthor represents data in request body.
type AddAuthor struct {
	ID   string `json:"id"`
	Name string `json:"name"`
}

func (aa *AddAuthor) Validate() *ValidationError {
	violations := make([]*Violation, 0)

	if aa.Name == "" {
		violations = append(violations, NewViolation("name", "name cannot be empty"))
	}

	if len(violations) > 0 {
		return NewValidationError(violations...)
	}
	return nil
}
