package test

/*
import (
	"encoding/json"
	"io"
	"net/http"
	"testing"

	"github.com/adrian83/go-mvc-library/library/web/validation"
)

const (
	post = "POST"
	get  = "GET"
)

const (
	jsonContentType = "application/json"
)

type BadRequestResponse struct {
	ValidationErrors   []validation.ValidationError `json:"validationErrors"`
	GeneralInformation ErrorGeneralInformation      `json:"generalInformation"`
}

type ErrorGeneralInformation struct {
	HttpStatus int    `json:"HttpStatus"`
	Code       string `json:"Code"`
	Message    string `json:"Message"`
}

func AssertGeneralInfoHttpStatus(t *testing.T, expected, actual int) {
	if actual != expected {
		t.Errorf("HttpStatus should be '%d' but is '%d'.", expected, actual)
	}
}

func AssertGeneralInfoCode(t *testing.T, expected, actual string) {
	if actual != expected {
		t.Errorf("Code should be '%s' but is '%s'.", expected, actual)
	}
}

func Post(t *testing.T, url string, body io.Reader) *http.Response {
	req, err := http.NewRequest(post, url, body)
	if err != nil {
		t.Errorf("Error while making '%v' request to '%v'. Error: %v", post, url, err)
	}
	client := http.Client{}
	resp, err := client.Do(req)
	if err != nil {
		t.Errorf("Error while getting response from '%v'. Error: %v", url, err)
	}
	return resp
}

func DecodeBadRequestResponse(t *testing.T, response *http.Response) BadRequestResponse {
	respData := new(BadRequestResponse)
	if err := json.NewDecoder(response.Body).Decode(&respData); err != nil {
		t.Error("Cannot decore response")
	}
	return *respData
}

func AssertResponseStatus(t *testing.T, response *http.Response, expected int) {
	if response.StatusCode != expected { //http.StatusOK {
		t.Errorf("Response status should be '%d' but is '%d'", expected, response.StatusCode)
	}
}
*/
