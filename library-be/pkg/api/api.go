package api

import (
	"encoding/json"
	"io"
	"io/ioutil"
	"net/http"
	"time"
)

const (
	contentType = "Content-Type"

	typeJSON = "application/json"
	typeText = "plain/text"

	// RequestTimeout is the default timeout for all requests.
	RequestTimeout = 10 * time.Second
)

// UnmarshalReqBody transforms UnmarshalAndValidate into given interface{}.
func UnmarshalReqBody(rc io.ReadCloser, str interface{}) error {
	bodyBts, err := ioutil.ReadAll(rc)
	if err != nil {
		return err
	}

	return json.Unmarshal(bodyBts, str)
}

// UnmarshalAndValidate transforms UnmarshalAndValidate into given instance of
// Validable, taen validates if the struct is correct.
func UnmarshalAndValidate(rc io.ReadCloser, val Validable) error {
	if err := UnmarshalReqBody(rc, val); err != nil {
		return err
	}

	return val.Validate()
}

// ResponseText writes given text and status into ResponseWriter in form of text.
func ResponseText(status int, msg string, w http.ResponseWriter) {
	w.Header().Add(contentType, typeText)
	w.WriteHeader(status)
	w.Write([]byte(msg))
}

// ResponseJSON writes given bytes and status into ResponseWritercin form of json.
func ResponseJSON(status int, respBts []byte, w http.ResponseWriter) {
	w.Header().Add(contentType, typeJSON)
	w.WriteHeader(status)
	w.Write(respBts)
}

// Validable is an interface for all structures that can be validated.
type Validable interface {
	Validate() *ValidationError
}
