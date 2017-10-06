package handler

import (
	"fmt"
	"github.com/adrian83/go-redis-session"
	"github.com/gorilla/mux"
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

type Handler func(w http.ResponseWriter, r *http.Request, s session.Session) (Model, error)

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

func GetPathParam(r *http.Request, name string) string {
	vars := mux.Vars(r)
	return vars[name]
}

type AppError struct {
	HttpStatus int
	Code       string
	Message    string
	model      map[string]interface{}
}

func (e *AppError) Error() string {
	return fmt.Sprintf("Error {HttpStatus: %v, Code: %v, Message: %v}", e.HttpStatus, e.Code, e.Message)
}

func (e *AppError) Dict() map[string]interface{} {

	info := make(map[string]interface{})
	info["HttpStatus"] = e.HttpStatus
	info["Code"] = e.Code
	info["Message"] = e.Message

	model := make(map[string]interface{})
	model["generalInformation"] = info

	for k, v := range e.model {
		model[k] = v
	}

	return model
}

func Error500(err error) *AppError {
	return &AppError{
		HttpStatus: http.StatusInternalServerError,
		Code:       "error.generic.500",
		Message:    err.Error(),
	}
}

func Error400(errors []validation.ValidationError) *AppError {
	return &AppError{
		HttpStatus: http.StatusBadRequest,
		Code:       "error.generic.400",
		Message:    "problem with validation",
		model:      map[string]interface{}{"validationErrors": errors},
	}
}

func Error404() *AppError {
	return &AppError{
		HttpStatus: http.StatusNotFound,
		Code:       "error.generic.404",
		Message:    "not found",
	}
}
