package api

import (
	"context"
	"encoding/json"
	"net/http"

	"github.com/gorilla/mux"
)

// HandleRemovingAuthor is a handler / controller for removing author from book.
func HandleRemovingAuthor(service bookReaderPersister) func(http.ResponseWriter, *http.Request) {

	return func(w http.ResponseWriter, r *http.Request) {

		ctx, _ := context.WithTimeout(context.Background(), RequestTimeout)

		vars := mux.Vars(r)
		bookID := vars["bookId"]
		authorID := vars["authorId"]

		removeAuthor := &RemoveAuthor{
			BookID:   bookID,
			AuthorID: authorID,
		}
		if err := removeAuthor.Validate(); err != nil {
			HandleError(err, w)
			return
		}

		b, err := service.Find(ctx, removeAuthor.BookID)
		if err != nil {
			HandleError(err, w)
			return
		}

		if err := b.RemoveAuthor(removeAuthor.AuthorID); err != nil {
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

		ResponseJSON(http.StatusCreated, respBts, w)
	}
}

// RemoveAuthor represents data taken from request.
type RemoveAuthor struct {
	BookID   string
	AuthorID string
}

func (ra *RemoveAuthor) Validate() *ValidationError {
	violations := make([]*Violation, 0)

	if ra.BookID == "" {
		violations = append(violations, NewViolation("bookID", "bookId cannot be empty"))
	}

	if ra.AuthorID == "" {
		violations = append(violations, NewViolation("authorID", "authorID cannot be empty"))
	}

	if len(violations) > 0 {
		return NewValidationError(violations...)
	}
	return nil
}
