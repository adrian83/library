package validation

import (
	"fmt"
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
