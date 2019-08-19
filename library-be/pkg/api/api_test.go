package api

import (
	"io"
	"io/ioutil"
	"net/http"
	"net/http/httptest"
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestJSONResponses(t *testing.T) {

	// given
	testData := map[string]struct {
		status int
		body   []byte
	}{
		"ok with json":           {http.StatusOK, []byte("{\"status\":\"ok\"}")},
		"server error with json": {http.StatusInternalServerError, []byte("{\"status\":\"error\"}")},
		"not found with json":    {http.StatusNotFound, []byte("{\"status\":\"not found\"}")},
	}

	for name, tData := range testData {
		data := tData

		t.Run(name, func(t *testing.T) {

			w := httptest.NewRecorder()

			// when
			responseJson(data.status, data.body, w)

			// then
			resp := w.Result()
			body := readBody(t, resp.Body)

			assert.Equal(t, data.status, resp.StatusCode)
			assert.Equal(t, data.body, body)
			assert.Equal(t, typeJSON, resp.Header.Get(contentType))
		})
	}
}

func TestTextResponses(t *testing.T) {

	// given
	testData := map[string]struct {
		status int
		body   string
	}{
		"ok with json":           {http.StatusOK, "it works"},
		"server error with json": {http.StatusInternalServerError, "opsss"},
		"not found with json":    {http.StatusNotFound, "not found"},
	}

	for name, tData := range testData {
		data := tData

		t.Run(name, func(t *testing.T) {

			w := httptest.NewRecorder()

			// when
			responseText(data.status, data.body, w)

			// then
			resp := w.Result()
			body := readBody(t, resp.Body)

			assert.Equal(t, data.status, resp.StatusCode)
			assert.Equal(t, data.body, string(body))
			assert.Equal(t, typeText, resp.Header.Get(contentType))
		})
	}
}

func readBody(t *testing.T, rc io.ReadCloser) []byte {
	body, err := ioutil.ReadAll(rc)
	if err != nil {
		t.Errorf("error while reading bytes from response body")
	}
	return body
}
