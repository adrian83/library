package api

import (
	"encoding/json"
	"net/http"
)

const (
	msgInternalError = "internal server error"
)

// Violation contains information about which structure's field is invalida and why.
type Violation struct {
	Field   string `json:"field"`
	Message string `json:"message"`
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

func HandleError(err error, w http.ResponseWriter, logger Logger) {
	logger.Errorf("handling error: %v", err)

	switch t := err.(type) {
	case *ValidationError:
		ResponseJSON(http.StatusBadRequest, t.Violations, w, logger)
	default:
		ResponseText(http.StatusInternalServerError, msgInternalError, w, logger)
	}
}
