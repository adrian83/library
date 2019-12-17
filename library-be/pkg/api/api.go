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

	RequestTimeout = 10 * time.Second
)

func UnmarshalReqBody(rc io.ReadCloser, str interface{}) error {
	bodyBts, err := ioutil.ReadAll(rc)
	if err != nil {
		return err
	}

	if err := json.Unmarshal(bodyBts, str); err != nil {
		return err
	}

	return nil
}

func UnmarshalAndValidate(rc io.ReadCloser, val Validable) error {

	if err := UnmarshalReqBody(rc, val); err != nil {
		return err
	}

	if err := val.Validate(); err != nil {
		return err
	}

	return nil
}

func ResponseText(status int, msg string, w http.ResponseWriter) {
	w.Header().Add(contentType, typeText)
	w.WriteHeader(status)
	w.Write([]byte(msg))
}

func ResponseJson(status int, respBts []byte, w http.ResponseWriter) {
	w.Header().Add(contentType, typeJSON)
	w.WriteHeader(status)
	w.Write(respBts)
}

type Validable interface {
	Validate() *ValidationError
}
