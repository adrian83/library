package api

import (
	"encoding/json"
	"errors"
	"io"
	"net/http"
	"net/http/httptest"
	"strings"
	"testing"

	"github.com/stretchr/testify/assert"
)

type user struct {
	Name string `json:"name"`
}

type mockLogger struct {
	t *testing.T
}

func (m *mockLogger) Info(args ...interface{}) {
	m.t.Logf("%v", args)
}

func (m *mockLogger) Infof(s string, args ...interface{}) {
	m.t.Logf(s, args...)
}

func (m *mockLogger) Errorf(s string, args ...interface{}) {
	m.t.Logf(s, args...)
}

func TestUnmarshalingBody(t *testing.T) {
	// given
	testData := map[string]struct {
		body io.ReadCloser
		err  bool
	}{
		"valid json body":   {io.NopCloser(strings.NewReader(`{"name":"Jan Kowalski"}`)), false},
		"invalid json body": {io.NopCloser(strings.NewReader(`not a json`)), true},
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
			ResponseJSON(data.status, data.body, w, &mockLogger{t})

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
			ResponseText(data.status, data.body, w, &mockLogger{t})

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

func TestParseListRequest(t *testing.T) {
	// given
	testData := map[string]struct {
		input  map[string][]string
		limit  int64
		offset int64
		sort   string
	}{
		"all valid params set": {
			map[string][]string{
				"offset": {"44"},
				"limit":  {"11"},
				"sort":   {"name"},
			},
			11,
			44,
			"name",
		},
		"default values": {
			map[string][]string{},
			defaultLimit,
			defaultOffset,
			defaultSort,
		},
	}

	for name, tData := range testData {
		data := tData

		t.Run(name, func(t *testing.T) {
			// when
			listReq := ParseListRequest(data.input)

			// then
			assert.Equal(t, data.offset, listReq.Offset)
			assert.Equal(t, data.limit, listReq.Limit)
			assert.Equal(t, data.sort, listReq.Sort)
		})
	}
}

func TestUnmarshalAndValidate(t *testing.T) {
	// given
	testData := map[string]struct {
		input string
		valid bool
	}{
		"valid data":   {`{"name":"John"}`, true},
		"invalid data": {`{"name":""}`, false},
	}

	for name, tData := range testData {
		data := tData

		t.Run(name, func(t *testing.T) {
			resp := TestValidable{}

			// when
			err := UnmarshalAndValidate(strings.NewReader(data.input), &resp)

			// then
			if !data.valid {
				assert.Error(t, err)
			}
		})
	}
}

type TestValidable struct {
	Name string `json:"name"`
}

func (v *TestValidable) Validate() error {
	if v.Name == "" {
		return errors.New("empty name")
	}

	return nil
}

func readJSON(t *testing.T, rc io.Reader) *TestBody {
	bts, err := io.ReadAll(rc)
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
	bts, err := io.ReadAll(rc)
	if err != nil {
		t.Errorf("error while reading bytes from response body")
	}

	return bts
}
