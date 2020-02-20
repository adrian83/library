package author

import (
	"bytes"
	"context"
	"encoding/json"
	"errors"
	"fmt"
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
	assert.Contains(t, string(respBodyBytes), fmt.Sprintf(`"offset":%v`, authorPage.Offset))
	assert.Contains(t, string(respBodyBytes), fmt.Sprintf(`"limit":%v`, authorPage.Limit))
	assert.Contains(t, string(respBodyBytes), fmt.Sprintf(`"total":%v`, authorPage.Total))

	lister.VerifyListCalls(t, 1)
}

func TestAuthorListingError(t *testing.T) {
	// given
	lister := authorListerMock{err: errors.New("error")}
	logger := mockLogger{t}

	req := httptest.NewRequest(http.MethodGet, url, nil)
	w := httptest.NewRecorder()

	// when
	HandleListing(&lister, &logger)(w, req)

	// then
	resp := w.Result()

	respBodyBytes := responseBody(t, resp)

	assert.Equal(t, http.StatusInternalServerError, resp.StatusCode)
	assert.Contains(t, string(respBodyBytes), `"message"`)

	lister.VerifyListCalls(t, 1)
}

// ----- GETTING -----

type authorGetterMock struct {
	author *author.Author
	err    error
	calls  int
}

func (m *authorGetterMock) Find(ctx context.Context, id string) (*author.Author, error) {
	m.calls++
	return m.author, m.err
}

func (m *authorGetterMock) VerifyFindCalls(t *testing.T, count int) {
	if m.calls != count {
		t.Errorf("Find should be called: %v times, but was: %v times", count, m.calls)
	}
}

func TestHandleGetting(t *testing.T) {
	// given
	getter := authorGetterMock{author: authorShakespeare}
	logger := mockLogger{t}

	req := httptest.NewRequest(http.MethodGet, url, nil)
	w := httptest.NewRecorder()

	// when
	HandleGetting(&getter, &logger)(w, req)

	// then
	resp := w.Result()

	respBodyBytes := responseBody(t, resp)
	authorBytes := marshal(t, authorShakespeare)

	assert.Equal(t, http.StatusOK, resp.StatusCode)
	assert.Equal(t, respBodyBytes, authorBytes)

	getter.VerifyFindCalls(t, 1)
}

func TestHandleGettingError(t *testing.T) {
	// given
	getter := authorGetterMock{err: errors.New("test")}
	logger := mockLogger{t}

	req := httptest.NewRequest(http.MethodGet, url, nil)
	w := httptest.NewRecorder()

	// when
	HandleGetting(&getter, &logger)(w, req)

	// then
	resp := w.Result()

	respBodyBytes := responseBody(t, resp)

	assert.Equal(t, http.StatusInternalServerError, resp.StatusCode)
	assert.Contains(t, string(respBodyBytes), `"message"`)

	getter.VerifyFindCalls(t, 1)
}

// ----- UPDATING -----

type authorUpdaterMock struct {
	err   error
	calls int
}

func (m *authorUpdaterMock) Update(context.Context, *author.UpdateAuthorReq) error {
	m.calls++
	return m.err
}

func (m *authorUpdaterMock) VerifyUpdateCalls(t *testing.T, count int) {
	if m.calls != count {
		t.Errorf("Update should be called: %v times, but was: %v times", count, m.calls)
	}
}

func TestHandleUpdating(t *testing.T) {
	// given
	updater := authorUpdaterMock{}
	logger := mockLogger{t}

	updateAuthor := UpdateAuthor{CreateAuthor{Name: authorShakespeare.Name, Description: authorShakespeare.Description}}
	updateAuthorBytes := marshal(t, updateAuthor)
	updateAuthorReader := bytes.NewReader(updateAuthorBytes)

	req := httptest.NewRequest(http.MethodPut, url, updateAuthorReader)
	w := httptest.NewRecorder()

	// when
	HandleUpdating(&updater, &logger)(w, req)

	// then
	resp := w.Result()
	defer resp.Body.Close()

	assert.Equal(t, http.StatusOK, resp.StatusCode)

	updater.VerifyUpdateCalls(t, 1)
}

func TestHandleUpdatingError(t *testing.T) {
	// given
	updater := authorUpdaterMock{err: errors.New("test")}
	logger := mockLogger{t}

	updateAuthor := UpdateAuthor{CreateAuthor{Name: authorShakespeare.Name, Description: authorShakespeare.Description}}
	updateAuthorBytes := marshal(t, updateAuthor)
	updateAuthorReader := bytes.NewReader(updateAuthorBytes)

	req := httptest.NewRequest(http.MethodPut, url, updateAuthorReader)
	w := httptest.NewRecorder()

	// when
	HandleUpdating(&updater, &logger)(w, req)

	// then
	resp := w.Result()

	respBodyBytes := responseBody(t, resp)

	assert.Equal(t, http.StatusInternalServerError, resp.StatusCode)
	assert.Contains(t, string(respBodyBytes), `"message"`)

	updater.VerifyUpdateCalls(t, 1)
}

func TestHandleUpdatingInvalidRequestBodyError(t *testing.T) {
	// given
	updater := authorUpdaterMock{}
	logger := mockLogger{t}

	bodyReader := bytes.NewReader([]byte("this is not JSON but it should be"))

	req := httptest.NewRequest(http.MethodPut, url, bodyReader)
	w := httptest.NewRecorder()

	// when
	HandleUpdating(&updater, &logger)(w, req)

	// then
	resp := w.Result()

	respBodyBytes := responseBody(t, resp)

	assert.Equal(t, http.StatusInternalServerError, resp.StatusCode)
	assert.Contains(t, string(respBodyBytes), `"message"`)

	updater.VerifyUpdateCalls(t, 0)
}

func TestHandleUpdatingValidationError(t *testing.T) {
	// given
	updater := authorUpdaterMock{}
	logger := mockLogger{t}

	updateAuthor := UpdateAuthor{CreateAuthor{Name: "", Description: ""}}
	updateAuthorBytes := marshal(t, updateAuthor)
	updateAuthorReader := bytes.NewReader(updateAuthorBytes)

	req := httptest.NewRequest(http.MethodPut, url, updateAuthorReader)
	w := httptest.NewRecorder()

	// when
	HandleUpdating(&updater, &logger)(w, req)

	// then
	resp := w.Result()
	defer resp.Body.Close()

	assert.Equal(t, http.StatusBadRequest, resp.StatusCode)

	updater.VerifyUpdateCalls(t, 0)
}

// ----- DELETING -----

type authorDeleterMock struct {
	err   error
	calls int
}

func (m *authorDeleterMock) Delete(ctx context.Context, authorID string) error {
	m.calls++
	return m.err
}

func (m *authorDeleterMock) VerifyDeleteCalls(t *testing.T, count int) {
	if m.calls != count {
		t.Errorf("Delete should be called: %v times, but was: %v times", count, m.calls)
	}
}

func TestHandleDeleting(t *testing.T) {
	// given
	deleter := authorDeleterMock{}
	logger := mockLogger{t}

	req := httptest.NewRequest(http.MethodDelete, url, nil)
	w := httptest.NewRecorder()

	// when
	HandleDeleting(&deleter, &logger)(w, req)

	// then
	resp := w.Result()
	defer resp.Body.Close()

	assert.Equal(t, http.StatusOK, resp.StatusCode)

	deleter.VerifyDeleteCalls(t, 1)
}

func TestHandleDeletingError(t *testing.T) {
	// given
	deleter := authorDeleterMock{err: errors.New("test")}
	logger := mockLogger{t}

	req := httptest.NewRequest(http.MethodDelete, url, nil)
	w := httptest.NewRecorder()

	// when
	HandleDeleting(&deleter, &logger)(w, req)

	// then
	resp := w.Result()

	respBodyBytes := responseBody(t, resp)

	assert.Equal(t, http.StatusInternalServerError, resp.StatusCode)
	assert.Contains(t, string(respBodyBytes), `"message"`)

	deleter.VerifyDeleteCalls(t, 1)
}

// ----- PERSISTING -----

type authorPersisterMock struct {
	author *author.Author
	err    error
	calls  int
}

func (m *authorPersisterMock) Persist(context.Context, *author.CreateAuthorReq) (*author.Author, error) {
	m.calls++
	return m.author, m.err
}

func (m *authorPersisterMock) VerifyPersistCalls(t *testing.T, count int) {
	if m.calls != count {
		t.Errorf("Persist should be called: %v times, but was: %v times", count, m.calls)
	}
}

func TestHandlePersisting(t *testing.T) {
	// given
	persister := authorPersisterMock{author: authorGoethe}
	logger := mockLogger{t}

	createAuthor := CreateAuthor{Name: authorGoethe.Name, Description: authorGoethe.Description}
	createAuthorBytes := marshal(t, createAuthor)
	createAuthorReader := bytes.NewReader(createAuthorBytes)

	req := httptest.NewRequest(http.MethodPut, url, createAuthorReader)
	w := httptest.NewRecorder()

	// when
	HandlePersisting(&persister, &logger)(w, req)

	// then
	resp := w.Result()

	respBodyBytes := responseBody(t, resp)
	authorBytes := marshal(t, authorGoethe)

	assert.Equal(t, http.StatusCreated, resp.StatusCode)
	assert.Equal(t, respBodyBytes, authorBytes)

	persister.VerifyPersistCalls(t, 1)
}

func TestHandlePersistingError(t *testing.T) {
	// given
	persister := authorPersisterMock{err: errors.New("test")}
	logger := mockLogger{t}

	createAuthor := CreateAuthor{Name: authorGoethe.Name, Description: authorGoethe.Description}
	createAuthorBytes := marshal(t, createAuthor)
	createAuthorReader := bytes.NewReader(createAuthorBytes)

	req := httptest.NewRequest(http.MethodPut, url, createAuthorReader)
	w := httptest.NewRecorder()

	// when
	HandlePersisting(&persister, &logger)(w, req)

	// then
	resp := w.Result()

	respBodyBytes := responseBody(t, resp)

	assert.Equal(t, http.StatusInternalServerError, resp.StatusCode)
	assert.Contains(t, string(respBodyBytes), `"message"`)

	persister.VerifyPersistCalls(t, 1)
}

func TestHandlePersistingInvalidRequestBodyError(t *testing.T) {
	// given
	persister := authorPersisterMock{author: authorGoethe}
	logger := mockLogger{t}

	bodyReader := bytes.NewReader([]byte("this is not JSON but it should be"))

	req := httptest.NewRequest(http.MethodPut, url, bodyReader)
	w := httptest.NewRecorder()

	// when
	HandlePersisting(&persister, &logger)(w, req)

	// then
	resp := w.Result()

	respBodyBytes := responseBody(t, resp)

	assert.Equal(t, http.StatusInternalServerError, resp.StatusCode)
	assert.Contains(t, string(respBodyBytes), `"message"`)

	persister.VerifyPersistCalls(t, 0)
}

func TestHandlePersistingValidationError(t *testing.T) {
	// given
	persister := authorPersisterMock{author: authorGoethe}
	logger := mockLogger{t}

	createAuthor := CreateAuthor{Name: "", Description: ""}
	createAuthorBytes := marshal(t, createAuthor)
	createAuthorReader := bytes.NewReader(createAuthorBytes)

	req := httptest.NewRequest(http.MethodPut, url, createAuthorReader)
	w := httptest.NewRecorder()

	// when
	HandlePersisting(&persister, &logger)(w, req)

	// then
	resp := w.Result()
	defer resp.Body.Close()

	assert.Equal(t, http.StatusBadRequest, resp.StatusCode)

	persister.VerifyPersistCalls(t, 0)
}

// ----- HELPERS -----

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
