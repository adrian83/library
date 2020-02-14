package author

import (
	"context"
	"encoding/json"
	"io/ioutil"
	"net/http"
	"net/http/httptest"
	"testing"

	"github.com/adrian83/library/pkg/author"
	"github.com/adrian83/library/pkg/common"
	"github.com/stretchr/testify/assert"
)

const (
	url = "http://unexisting.com/test"
)

var (
	authorShakespeare = author.NewAuthor("William Shakespeare", "Shakespeare was born and raised in Stratford-upon-Avon, Warwickshire. At the age...")
	authorGoethe      = author.NewAuthor("Johann Wolfgang von Goethe", "Johann Wolfgang von Goethe was a German writer and statesman. His works...")
)

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

// ----- LISTING -----

type authorListerMock struct {
	page  *author.AuthorsPage
	err   error
	calls int
}

func (m *authorListerMock) List(ctx context.Context, listAuthors *common.ListRequest) (*author.AuthorsPage, error) {
	m.calls++
	return m.page, m.err
}

func (m *authorListerMock) VerifyListCalls(t *testing.T, count int) {
	if m.calls != count {
		t.Errorf("List should be called: %v times, but was: %v times", count, m.calls)
	}
}

func TestAuthorListing(t *testing.T) {
	// given
	authors := author.NewAuthors(authorShakespeare, authorGoethe)
	authorPage := author.NewAuthorsPage(authors, 10, 5, 7)

	lister := authorListerMock{page: authorPage}
	logger := mockLogger{t}

	req := httptest.NewRequest(http.MethodGet, url, nil)
	w := httptest.NewRecorder()

	// when
	HandleListing(&lister, &logger)(w, req)

	// then
	resp := w.Result()

	respBodyBytes := responseBody(t, resp)
	authorPageBytes := marshal(t, authorPage)

	assert.Equal(t, http.StatusOK, resp.StatusCode)
	assert.Equal(t, respBodyBytes, authorPageBytes)
}

func responseBody(t *testing.T, resp *http.Response) []byte {
	body, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		t.Errorf("cannot read response body, error: %v", err)
	}
	defer resp.Body.Close()

	return body
}

func marshal(t *testing.T, str interface{}) []byte {
	bts, err := json.Marshal(str)
	if err != nil {
		t.Errorf("cannot marshal to json, error: %v", err)
	}

	return bts
}
