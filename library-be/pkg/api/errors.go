package api

import (
	"encoding/json"
	"fmt"
	"net/http"
)

const (
	msgInternalError = "internal server error"
)

// Violation 
type Violation struct {
	Field   string `json:"field"`
	Message string `json:"message"`
}

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

func handleError(err error, w http.ResponseWriter) {

	fmt.Printf("Error in API: %v", err)

	switch t := err.(type) {
	case *ValidationError:

		respBts, err := json.Marshal(t.Violations)
		if err != nil {
			handleError(err, w)
			return
		}

		responseJson(http.StatusBadRequest, respBts, w)
	default:
		responseText(http.StatusInternalServerError, msgInternalError, w)
	}
}
