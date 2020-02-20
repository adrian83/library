package errs

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestErrors(t *testing.T) {
	testData := map[string]struct {
		err              *LibError
		code             ErrCode
		isAuthorNotFound bool
		isBookNotFound   bool
	}{
		"author not found error": {
			err:              NewAuthorNotFoundErr(),
			code:             AuthorNotFound,
			isAuthorNotFound: true,
			isBookNotFound:   false,
		},
		"boo not found error": {
			err:              NewBookNotFoundErr(),
			code:             BookNotFound,
			isAuthorNotFound: false,
			isBookNotFound:   true,
		},
	}

	for name, tData := range testData {
		data := tData

		t.Run(name, func(t *testing.T) {
			assert.Error(t, data.err)
			assert.Equal(t, data.isAuthorNotFound, data.err.AuthorNotFound())
			assert.Equal(t, data.isBookNotFound, data.err.BookNotFound())
			assert.Contains(t, data.err.Error(), data.code)
		})
	}
}
