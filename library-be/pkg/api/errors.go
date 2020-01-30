package api

import (
	"encoding/json"
	"errors"
	"net/http"

	"github.com/adrian83/library/pkg/errs"
)

const (
	msgInternalError = "internal server error"
)

// Violation contains information about which structure's field is invalida and why.
type Violation struct {
	Field   string `json:"field"`
	Message string `json:"message"`
}

func (v *Violation) String() string {
	bts, _ := json.Marshal(v)
	return string(bts)
}

// NewViolation is a constructor for Violation struct.
func NewViolation(field, msg string) *Violation {
	return &Violation{
		Field:   field,
		Message: msg,
	}
}

type ValidationError struct {
	Violations []*Violation
}

func (e *ValidationError) Error() string {
	bts, _ := json.Marshal(e.Violations)
	return string(bts)
}

func NewValidationError(violations ...*Violation) *ValidationError {
	return &ValidationError{
		Violations: violations,
	}
}

type errorMsg struct {
	Message string `json:"message"`
}

func HandleError(err error, w http.ResponseWriter, logger Logger) {
	logger.Errorf("handling error: %v", err)

	var libErr *errs.LibError
	if errors.As(err, &libErr) {
		if libErr.AuthorNotFound() {
			msg := errorMsg{Message: "Author not found"}
			ResponseJSON(http.StatusNotFound, msg, w, logger)
			return
		} else if libErr.BookNotFound() {
			msg := errorMsg{Message: "Book not found"}
			ResponseJSON(http.StatusNotFound, msg, w, logger)
			return
		} else {

			msg := errorMsg{Message: "Not found"}
			ResponseJSON(http.StatusNotFound, msg, w, logger)
			return
		}
	}

	var vErr *ValidationError
	if errors.As(err, &vErr) {
		ResponseJSON(http.StatusBadRequest, vErr.Violations, w, logger)
		return
	}

	ResponseText(http.StatusInternalServerError, msgInternalError, w, logger)
}
