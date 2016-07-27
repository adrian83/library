package validation

import (
	"fmt"
	"gopkg.in/mgo.v2/bson"
)

var (
	InvalidID = ValidationError{
		Field:   "id",
		Code:    "id",
		Message: "Invalid Id"}
)

type ValidationError struct {
	Field   string `json:"field"`
	Code    string `json:"code"`
	Message string `json:"message"`
}

func (e *ValidationError) Error() string {
	return fmt.Sprintf("ValidationError {Field: '%s', Code: '%s', Msg: '%s'}", e.Field, e.Code, e.Message)
}

type Validator interface {
	Validate(entity interface{}) ([]ValidationError, bool)
}

func IsStringEmpty(str string) bool {
	return len(str) == 0
}

func IsStringPtrNil(str *string) bool {
	return str == nil
}

func IsIDValid(id string) bool {
	return len(id) == 24 && bson.ObjectIdHex(id).Valid()
}
