package api

import (
	"encoding/json"
	"io"
	"io/ioutil"
	"net/http"
	"net/http/httptest"
	"strings"
	"testing"

	"github.com/stretchr/testify/assert"
)

type user struct {
	Name string `json:"name"`
}

func TestUnmarshalingBody(t *testing.T) {
	// given
	testData := map[string]struct {
		body io.ReadCloser
		err  bool
	}{
		"valid json body":   {ioutil.NopCloser(strings.NewReader(`{"name":"Jan Kowalski"}`)), false},
		"invalid json body": {ioutil.NopCloser(strings.NewReader(`not a json`)), true},
	}

	for name, tData := range testData {
		data := tData

		t.Run(name, func(t *testing.T) {
			var usr user

			// when
			err := UnmarshalReqBody(data.body, &usr)

			// then
			if data.err {
				assert.Error(t, err)
			} else {
				assert.NoError(t, err)
			}
		})
	}
}

type TestBody struct {
	Status string `json:"status"`
}

func TestJSONResponses(t *testing.T) {
	// given
	testData := map[string]struct {
		status int
		body   TestBody
	}{
		"ok with json":           {http.StatusOK, TestBody{Status: "ok"}},
		"server error with json": {http.StatusInternalServerError, TestBody{Status: "error"}},
		"not found with json":    {http.StatusNotFound, TestBody{Status: "not found"}},
	}

	for name, tData := range testData {
		data := tData

		t.Run(name, func(t *testing.T) {
			w := httptest.NewRecorder()

			// when
			ResponseJSON(data.status, data.body, w)

			// then
			resp := w.Result()
			body := readJSON(t, resp.Body)
			defer resp.Body.Close()

			assert.Equal(t, data.status, resp.StatusCode)
			assert.Equal(t, data.body.Status, body.Status)
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
		"ok with text":           {http.StatusOK, "it works"},
		"server error with text": {http.StatusInternalServerError, "opsss"},
		"not found with text":    {http.StatusNotFound, "not found"},
	}

	for name, tData := range testData {
		data := tData

		t.Run(name, func(t *testing.T) {
			w := httptest.NewRecorder()

			// when
			ResponseText(data.status, data.body, w)

			// then
			resp := w.Result()
			body := readText(t, resp.Body)
			defer resp.Body.Close()

			assert.Equal(t, data.status, resp.StatusCode)
			assert.Equal(t, data.body, string(body))
			assert.Equal(t, typeText, resp.Header.Get(contentType))
		})
	}
}

func readJSON(t *testing.T, rc io.Reader) *TestBody {
	bts, err := ioutil.ReadAll(rc)
	if err != nil {
		t.Errorf("error while reading bytes from response body")
	}

	var body TestBody
	if err := json.Unmarshal(bts, &body); err != nil {
		t.Errorf("cannot transform bytes to TestBody instance")
	}

	return &body
}

func readText(t *testing.T, rc io.Reader) []byte {
	bts, err := ioutil.ReadAll(rc)
	if err != nil {
		t.Errorf("error while reading bytes from response body")
	}

	return bts
}
