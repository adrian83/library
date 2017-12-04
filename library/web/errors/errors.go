package errors

import (
	"fmt"
	"net/http"

	"github.com/adrian83/go-mvc-library/library/domain/common/model"
)

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

func Error400(errors model.ValidationErrors) *AppError {
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

func Error500(err error) *AppError {
	return &AppError{
		HttpStatus: http.StatusInternalServerError,
		Code:       "error.generic.500",
		Message:    err.Error(),
	}
}
