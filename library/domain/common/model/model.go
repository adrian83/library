package model

import (
	"fmt"

	"gopkg.in/mgo.v2/bson"
)

// NotFoundError represents struct returned when entity cannot be found.
type NotFoundError struct {
	Type string
}

// Error implements error interface.
func (nfe *NotFoundError) Error() string {
	return fmt.Sprintf("%v cannot be found.", nfe.Type)
}

var (
	InvalidID = ValidationError{
		Field:   "id",
		Code:    "incorrect.id",
		Message: "Invalid ID",
	}
)

// Validable is an interface for all structs that can be validated.
type Validable interface {
	Validate() ValidationErrors
}

// ValidationError retresents validation error.
type ValidationError struct {
	Field   string `json:"field"`
	Code    string `json:"code"`
	Message string `json:"message"`
}

func (e *ValidationError) Error() string {
	return fmt.Sprintf("ValidationError {Field: '%s', Code: '%s', Msg: '%s'}", e.Field, e.Code, e.Message)
}

func (e *ValidationError) String() string {
	return e.Error()
}

// ValidationErrors is a slice of ValidationErrors.
type ValidationErrors []*ValidationError

// Empty returns true if errors are empty.
func (ve ValidationErrors) Empty() bool {
	return len(ve) == 0
}

// IsStringEmpty returns true if given string is empty.
func IsStringEmpty(str string) bool {
	return len(str) == 0
}

func IsStringPtrNil(str *string) bool {
	return str == nil
}

func IsIDValid(id string) bool {
	return len(id) == 24 && bson.ObjectIdHex(id).Valid()
}
