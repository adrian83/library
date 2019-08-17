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

	requestTimeout = 10 * time.Second
)

func unmarshalReqBody(rc io.ReadCloser, str interface{}) error {
	bodyBts, err := ioutil.ReadAll(rc)
	if err != nil {
		return err
	}

	if err := json.Unmarshal(bodyBts, str); err != nil {
		return err
	}

	return nil
}

func unmarshalAndValidate(rc io.ReadCloser, val Validable) error {

	if err := unmarshalReqBody(rc, val); err != nil {
		return err
	}

	if err := val.Validate(); err != nil {
		return err
	}

	return nil
}

func responseText(status int, msg string, w http.ResponseWriter) {
	w.Header().Add(contentType, typeText)
	w.Write([]byte(msg))
	w.WriteHeader(status)
}

func responseJson(status int, respBts []byte, w http.ResponseWriter) {
	w.Header().Add(contentType, typeJSON)
	w.Write(respBts)
	w.WriteHeader(status)
}

type Validable interface {
	Validate() *ValidationError
}
