package api

import (
	"io/ioutil"
	"net/http"
	"net/http/httptest"
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestJSONResponses(t *testing.T) {

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

			responseJson(data.status, data.body, w)

			resp := w.Result()

			body, _ := ioutil.ReadAll(resp.Body)

			// assert.Equal(t, data.status, resp.StatusCode)
			assert.Equal(t, data.body, body)
			assert.Equal(t, typeJSON, resp.Header.Get(contentType))
		})

	}

}
