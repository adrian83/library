package handler

import (
	"fmt"
	"github.com/adrian83/go-redis-session"
	"net/http"
	"web/validation"
)

/*
type ModelHandler interface {
	Handle(w http.ResponseWriter, r *http.Request) (map[string]interface{}, error)
}
*/

const (
	errorProp = "error"
)

type Handler func(w http.ResponseWriter, r *http.Request, s redissession.Session) (Model, error)

type Model struct {
	Values     map[string]interface{}
	HttpStatus int
}

func (m *Model) Error500(err error) {
	m.Values[errorProp] = err.Error()
	m.HttpStatus = http.StatusInternalServerError
}

func NewModel() Model {
	return Model{
		Values:     make(map[string]interface{}, 0),
		HttpStatus: http.StatusOK,
	}
}

type AppError struct {
	HttpStatus int    `json:"httpStatus"`
	Code       string `json:"code"`
	Message    string `json:"message"`
}

func (e *AppError) Error() string {
	return fmt.Sprintf("Error {HttpStatus: %v, Code: %v, Message: %v}", e.HttpStatus, e.Code, e.Message)
}

func Error500(err error) *AppError {
	return &AppError{
		HttpStatus: http.StatusInternalServerError,
		Code:       "error.generic.500",
		Message:    err.Error(),
	}
}

type ValidationError struct {
	AppError
	ValidationErrors []validation.ValidationError `json:"validationErrors"`
}

func (e *ValidationError) Error() string {
	return fmt.Sprintf("ValidationError {HttpStatus: %v, Code: %v, Message: %v, ValidationErrors: %v}", e.HttpStatus,
		e.Code, e.Message, e.ValidationErrors)
}

func Error400(errors []validation.ValidationError) *ValidationError {
	appError := AppError{
		HttpStatus: http.StatusBadRequest,
		Code:       "error.generic.400",
		Message:    "problem with validation",
	}

	return &ValidationError{appError, errors}
}
