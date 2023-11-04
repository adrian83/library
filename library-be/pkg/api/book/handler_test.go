package book

import (
	"bytes"
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"net/http"
	"net/http/httptest"
	"testing"

	"github.com/adrian83/library/pkg/author"
	"github.com/adrian83/library/pkg/book"
	"github.com/stretchr/testify/assert"
)

const (
	url = "http://unexisting.com/test"
)

var (
	authorShakespeare = author.NewAuthor("William Shakespeare", "Shakespeare was born and raised "+
		"in Stratford-upon-Avon, Warwickshire. At the age...")
	authorGoethe = author.NewAuthor("Johann Wolfgang von Goethe", "Johann Wolfgang von Goethe "+
		"was a German writer and statesman. His works...")

	bookHamlet = book.NewBook("Hamlet", "The Tragedy of Hamlet, Prince of Denmark, often shortened "+
		"to Hamlet, is a tragedy written by William Shakespeare sometime between 1599 and 1601. It is...",
		"isbn-abc-def-ghi", author.NewAuthors(authorShakespeare))
	bookFaust = book.NewBook("Faust", "Faust is a tragic play in two parts by Johann Wolfgang von Goethe,"+
		" usually known in English as Faust, Part One and Faust, Part Two. Although rarely staged in its entirety, it is the play...",
		"isbn-mno-prs-tuv", author.NewAuthors(authorGoethe))
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

type booksListerMock struct {
	page  *book.BooksPage
	err   error
	calls int
}

func (m *booksListerMock) List(ctx context.Context, listBooksQuery *book.ListBooksQuery) (*book.BooksPage, error) {
	m.calls++
	return m.page, m.err
}

func (m *booksListerMock) VerifyListCalls(t *testing.T, count int) {
	if m.calls != count {
		t.Errorf("List should be called: %v times, but was: %v times", count, m.calls)
	}
}

func TestBookListing(t *testing.T) {
	// given
	books := book.NewBooks(bookHamlet, bookFaust)
	bookPage := book.NewBooksPage(books, 10, 5, 7)

	lister := booksListerMock{page: bookPage}
	logger := mockLogger{t}

	req := httptest.NewRequest(http.MethodGet, url, nil)
	w := httptest.NewRecorder()

	// when
	HandleListing(&lister, &logger)(w, req)

	// then
	resp := w.Result()

	respBodyBytes := responseBody(t, resp)
	bookPageBytes := marshal(t, bookPage)

	assert.Equal(t, http.StatusOK, resp.StatusCode)
	assert.Equal(t, respBodyBytes, bookPageBytes)
	assert.Contains(t, string(respBodyBytes), fmt.Sprintf(`"offset":%v`, bookPage.Offset))
	assert.Contains(t, string(respBodyBytes), fmt.Sprintf(`"limit":%v`, bookPage.Limit))
	assert.Contains(t, string(respBodyBytes), fmt.Sprintf(`"total":%v`, bookPage.Total))

	lister.VerifyListCalls(t, 1)
}

func TestBookListingError(t *testing.T) {
	// given
	lister := booksListerMock{err: errors.New("error")}
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

type bookGetterMock struct {
	book  *book.Book
	err   error
	calls int
}

func (m *bookGetterMock) Find(ctx context.Context, query *book.FindBookQuery) (*book.Book, error) {
	m.calls++
	return m.book, m.err
}

func (m *bookGetterMock) VerifyFindCalls(t *testing.T, count int) {
	if m.calls != count {
		t.Errorf("Find should be called: %v times, but was: %v times", count, m.calls)
	}
}

func TestHandleGetting(t *testing.T) {
	// given
	getter := bookGetterMock{book: bookHamlet}
	logger := mockLogger{t}

	req := httptest.NewRequest(http.MethodGet, url, nil)
	w := httptest.NewRecorder()

	// when
	HandleGetting(&getter, &logger)(w, req)

	// then
	resp := w.Result()

	respBodyBytes := responseBody(t, resp)
	bookBytes := marshal(t, bookHamlet)

	assert.Equal(t, http.StatusOK, resp.StatusCode)
	assert.Equal(t, respBodyBytes, bookBytes)

	getter.VerifyFindCalls(t, 1)
}

func TestHandleGettingError(t *testing.T) {
	// given
	getter := bookGetterMock{err: errors.New("test")}
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

type bookUpdaterMock struct {
	err   error
	calls int
}

func (m *bookUpdaterMock) Update(context.Context, *book.UpdateBookCommand) error {
	m.calls++
	return m.err
}

func (m *bookUpdaterMock) VerifyUpdateCalls(t *testing.T, count int) {
	if m.calls != count {
		t.Errorf("Update should be called: %v times, but was: %v times", count, m.calls)
	}
}

func TestHandleUpdating(t *testing.T) {
	// given
	updater := bookUpdaterMock{}
	logger := mockLogger{t}

	updateBook := UpdateBook{
		CreateBook: CreateBook{
			Title:       bookFaust.Title,
			Description: bookFaust.Description,
			ISBN:        bookFaust.ISBN,
		},
		Authors: []string{"1"},
	}
	updateBookBytes := marshal(t, updateBook)
	updateBookReader := bytes.NewReader(updateBookBytes)

	req := httptest.NewRequest(http.MethodPut, url, updateBookReader)
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
	updater := bookUpdaterMock{err: errors.New("test")}
	logger := mockLogger{t}

	updateBook := UpdateBook{
		CreateBook: CreateBook{
			Title:       bookFaust.Title,
			Description: bookFaust.Description,
			ISBN:        bookFaust.ISBN,
		},
		Authors: []string{"1"},
	}
	updateBookBytes := marshal(t, updateBook)
	updateBookReader := bytes.NewReader(updateBookBytes)

	req := httptest.NewRequest(http.MethodPut, url, updateBookReader)
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
	updater := bookUpdaterMock{}
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
	updater := bookUpdaterMock{}
	logger := mockLogger{t}

	updateBook := UpdateBook{
		CreateBook: CreateBook{
			Title:       "",
			Description: bookFaust.Description,
			ISBN:        bookFaust.ISBN,
		},
		Authors: []string{"1"},
	}
	updateBookBytes := marshal(t, updateBook)
	updateBookReader := bytes.NewReader(updateBookBytes)

	req := httptest.NewRequest(http.MethodPut, url, updateBookReader)
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

type bookDeleterMock struct {
	err   error
	calls int
}

func (m *bookDeleterMock) Delete(ctx context.Context, command *book.DeleteBookCommand) error {
	m.calls++
	return m.err
}

func (m *bookDeleterMock) VerifyDeleteCalls(t *testing.T, count int) {
	if m.calls != count {
		t.Errorf("Delete should be called: %v times, but was: %v times", count, m.calls)
	}
}

func TestHandleDeleting(t *testing.T) {
	// given
	deleter := bookDeleterMock{}
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
	deleter := bookDeleterMock{err: errors.New("test")}
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

type bookPersisterMock struct {
	book  *book.Book
	err   error
	calls int
}

func (m *bookPersisterMock) Persist(context.Context, *book.CreateBookCommand) (*book.Book, error) {
	m.calls++
	return m.book, m.err
}

func (m *bookPersisterMock) VerifyPersistCalls(t *testing.T, count int) {
	if m.calls != count {
		t.Errorf("Persist should be called: %v times, but was: %v times", count, m.calls)
	}
}

func TestHandlePersisting(t *testing.T) {
	// given
	persister := bookPersisterMock{book: bookFaust}
	logger := mockLogger{t}

	createBook := CreateBook{
		Title:       bookFaust.Title,
		Description: bookFaust.Description,
		ISBN:        bookFaust.ISBN,
	}
	createBookBytes := marshal(t, createBook)
	createBookReader := bytes.NewReader(createBookBytes)

	req := httptest.NewRequest(http.MethodPut, url, createBookReader)
	w := httptest.NewRecorder()

	// when
	HandlePersisting(&persister, &logger)(w, req)

	// then
	resp := w.Result()

	respBodyBytes := responseBody(t, resp)
	bookBytes := marshal(t, bookFaust)

	assert.Equal(t, http.StatusCreated, resp.StatusCode)
	assert.Equal(t, respBodyBytes, bookBytes)

	persister.VerifyPersistCalls(t, 1)
}

func TestHandlePersistingError(t *testing.T) {
	// given
	persister := bookPersisterMock{err: errors.New("test")}
	logger := mockLogger{t}

	createBook := CreateBook{
		Title:       bookFaust.Title,
		Description: bookFaust.Description,
		ISBN:        bookFaust.ISBN,
	}
	createBookBytes := marshal(t, createBook)
	createBookReader := bytes.NewReader(createBookBytes)

	req := httptest.NewRequest(http.MethodPut, url, createBookReader)
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
	persister := bookPersisterMock{book: bookFaust}
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
	persister := bookPersisterMock{book: bookHamlet}
	logger := mockLogger{t}

	createBook := CreateBook{
		Title:       "",
		Description: bookHamlet.Description,
		ISBN:        bookHamlet.ISBN,
	}
	createBookBytes := marshal(t, createBook)
	createBookReader := bytes.NewReader(createBookBytes)

	req := httptest.NewRequest(http.MethodPut, url, createBookReader)
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
	body, err := io.ReadAll(resp.Body)
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
