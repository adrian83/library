package errors

import (
	"encoding/json"
	"fmt"
	"log"
	"net/http"

	"github.com/adrian83/go-mvc-library/library/domain/common"
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
	info["httpStatus"] = e.HttpStatus
	info["code"] = e.Code
	info["message"] = e.Message

	model := make(map[string]interface{})
	model["generalInformation"] = info

	for k, v := range e.model {
		model[k] = v
	}

	return model
}

// Write writer error (as json) to given ResponseWriter.
func (e *AppError) Write(w http.ResponseWriter) {
	js, err := json.Marshal(e)
	if err != nil {
		log.Printf("Error while marshaling error to JSON. Error: %v", err)
		return
	}
	_, err = w.Write(js)
	if err != nil {
		log.Printf("Error while sending error. Error: %v", err)
		return
	}
}

// Error400 returns AppError representing 400 http status.
func Error400(errors common.ValidationErrors) *AppError {
	return &AppError{
		HttpStatus: http.StatusBadRequest,
		Code:       "error.generic.400",
		Message:    "problem with validation",
		model:      map[string]interface{}{"validationErrors": errors},
	}
}

// Error404 returns AppError representing 404 http status.
func Error404() *AppError {
	return &AppError{
		HttpStatus: http.StatusNotFound,
		Code:       "error.generic.404",
		Message:    "not found",
	}
}

// Error500 returns AppError representing 500 http status.
func Error500(err error) *AppError {
	return &AppError{
		HttpStatus: http.StatusInternalServerError,
		Code:       "error.generic.500",
		Message:    err.Error(),
	}
}
