package api

import (
	"errors"
	"io/ioutil"
	"net/http"
	"net/http/httptest"
	"testing"

	"github.com/adrian83/library/pkg/errs"
	"github.com/stretchr/testify/assert"
)

func TestHandleError(t *testing.T) {
	// given

	msgValidationErr := "invalid name"

	testData := map[string]struct {
		err          error
		status       int
		containsText string
	}{
		"author not found error": {errs.NewAuthorNotFoundErr(), http.StatusNotFound, msgAuthorNotFound},
		"book not found error":   {errs.NewBookNotFoundErr(), http.StatusNotFound, msgBookNotFound},
		"validation error":       {NewValidationError(NewViolation("name", msgValidationErr)), http.StatusBadRequest, msgValidationErr},
		"generic error":          {errors.New("cannot read from db"), http.StatusInternalServerError, msgInternalError},
	}

	for name, tData := range testData {
		data := tData

		t.Run(name, func(t *testing.T) {

			w := httptest.NewRecorder()
			// when
			HandleError(data.err, w, &mockLogger{t})

			// then
			resp := w.Result()

			body, err := ioutil.ReadAll(resp.Body)
			if err != nil {
				t.Errorf("cannot read response body, error: %v", err)
			}
			defer resp.Body.Close()

			assert.Equal(t, data.status, resp.StatusCode)
			assert.Contains(t, string(body), data.containsText)
		})
	}
}
