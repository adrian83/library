package book

import (
	"context"
	"errors"
	"testing"
	"time"

	"github.com/adrian83/library/pkg/author"
	"github.com/adrian83/library/pkg/common"
	"github.com/adrian83/library/pkg/storage"
	"github.com/stretchr/testify/assert"

	"go.mongodb.org/mongo-driver/bson"
)

var (
	authorShakespeare = author.NewAuthor("William Shakespeare", "Shakespeare was born and "+
		"raised in Stratford-upon-Avon, Warwickshire. At the age...")
	authorGoethe = author.NewAuthor("Johann Wolfgang von Goethe", "Johann Wolfgang von Goethe "+
		"was a German writer and statesman. His works...")

	bookHamlet = NewBook("Hamlet", "The Tragedy of Hamlet, Prince of Denmark, often shortened to Hamlet, "+
		"is a tragedy written by William Shakespeare sometime between 1599 and 1601. It is...",
		"isbn-abc-def-ghi", author.NewAuthors(authorShakespeare))
	bookFaust = NewBook("Faust", "Faust is a tragic play in two parts by Johann Wolfgang von Goethe, "+
		"usually known in English as Faust, Part One and Faust, Part Two. Although rarely staged in its "+
		"entirety, it is the play...",
		"isbn-mno-prs-tuv", author.NewAuthors(authorGoethe))
	bookWithoutAuthor = NewBook("Just a title", "Just a description", "isbn-def-ghi-jkl", nil)
)

type loggerMock struct {
	t *testing.T
}

func (m *loggerMock) Info(args ...interface{}) {
	m.t.Logf("%v", args)
}

func (m *loggerMock) Infof(s string, args ...interface{}) {
	m.t.Logf(s, args...)
}

type authorServiceMock struct {
	authorsMap map[string]*author.Author
	err        error
	calls      int
}

func (m *authorServiceMock) FindAuthorsByIDs(context.Context, []string) (map[string]*author.Author, error) {
	m.calls++
	return m.authorsMap, m.err
}

type bookStoreMock struct {
	insertOneErr  error
	listResult    []map[string]interface{}
	listErr       error
	findOneResult *Entity
	findOneErr    error
	updateOneErr  error
	countResult   int64
	countErr      error
	deleteOneErr  error
}

func (m *bookStoreMock) InsertOne(context.Context, interface{}) error {
	return m.insertOneErr
}

func (m *bookStoreMock) List(context.Context, bson.D, int64, int64) ([]map[string]interface{}, error) {
	return m.listResult, m.listErr
}

func (m *bookStoreMock) FindOne(ctx context.Context, id string, str interface{}) error {
	if m.findOneErr != nil {
		return m.findOneErr
	}

	bookPtr := str.(*Entity)
	bookPtr.ID = m.findOneResult.ID
	bookPtr.Title = m.findOneResult.Title
	bookPtr.Description = m.findOneResult.Description
	bookPtr.ISBN = m.findOneResult.ISBN
	bookPtr.Authors = m.findOneResult.Authors

	return nil
}

func (m *bookStoreMock) UpdateOne(ctx context.Context, id string, update interface{}) error {
	return m.updateOneErr
}

func (m *bookStoreMock) Count(ctx context.Context, filter interface{}) (int64, error) {
	return m.countResult, m.countErr
}

func (m *bookStoreMock) DeleteOne(ctx context.Context, bookID string) error {
	return m.deleteOneErr
}

// ----- PERSISTING -----

func TestPersist(t *testing.T) {
	// given
	bookStore := bookStoreMock{}
	authorService := authorServiceMock{authorsMap: map[string]*author.Author{authorShakespeare.ID: authorShakespeare}}
	logger := loggerMock{t}

	service := NewService(&bookStore, &authorService, &logger)

	createBookReq := NewCreateBookReq(bookHamlet.Title, bookHamlet.Description, bookHamlet.ISBN)

	// when
	book, err := service.Persist(context.TODO(), createBookReq)

	// then
	assert.NoError(t, err)
	assert.NotNil(t, book)
	assert.NotEmpty(t, book.ID)
	assert.Equal(t, createBookReq.Title, book.Title)
	assert.Equal(t, createBookReq.Description, book.Description)
	assert.Equal(t, createBookReq.ISBN, book.ISBN)
}

func TestPersistError(t *testing.T) {
	// given
	bookStore := bookStoreMock{insertOneErr: errors.New("test")}
	authorService := authorServiceMock{}
	logger := loggerMock{t}

	service := NewService(&bookStore, &authorService, &logger)

	createBookReq := NewCreateBookReq(bookHamlet.Title, bookHamlet.Description, bookHamlet.ISBN)

	// when
	book, err := service.Persist(context.TODO(), createBookReq)

	// then
	assert.Error(t, err)
	assert.Nil(t, book)
}

// ----- UPDATING -----

func TestUpdate(t *testing.T) {
	// given
	bookStore := bookStoreMock{}
	authorService := authorServiceMock{}
	logger := loggerMock{t}

	service := NewService(&bookStore, &authorService, &logger)

	updateBookReq := NewUpdateBookReq("abc", bookHamlet.Title, bookHamlet.Description, bookHamlet.ISBN, []string{"1"})

	// when
	err := service.Update(context.TODO(), updateBookReq)

	// then
	assert.NoError(t, err)
}

func TestUpdateError(t *testing.T) {
	// given
	bookStore := bookStoreMock{updateOneErr: errors.New("test")}
	authorService := authorServiceMock{}
	logger := loggerMock{t}

	service := NewService(&bookStore, &authorService, &logger)

	updateBookReq := NewUpdateBookReq("abc", bookHamlet.Title, bookHamlet.Description, bookHamlet.ISBN, []string{"1"})

	// when
	err := service.Update(context.TODO(), updateBookReq)

	// then
	assert.Error(t, err)
}

// ----- DELETING -----

func TestDelete(t *testing.T) {
	// given
	bookStore := bookStoreMock{}
	authorService := authorServiceMock{}
	logger := loggerMock{t}

	service := NewService(&bookStore, &authorService, &logger)

	// when
	err := service.Delete(context.TODO(), bookHamlet.ID)

	// then
	assert.NoError(t, err)
}

func TestDeleteError(t *testing.T) {
	// given
	bookStore := bookStoreMock{deleteOneErr: storage.ErrNotFound}
	authorService := authorServiceMock{}
	logger := loggerMock{t}

	service := NewService(&bookStore, &authorService, &logger)

	// when
	err := service.Delete(context.TODO(), bookFaust.ID)

	// then
	assert.Error(t, err)
}

// ----- FINDING -----

func TestFind(t *testing.T) {
	// given
	entity := NewEntityFromBook(bookFaust)

	bookStore := bookStoreMock{findOneResult: entity}
	authorService := authorServiceMock{authorsMap: map[string]*author.Author{authorGoethe.ID: authorGoethe}}
	logger := loggerMock{t}

	service := NewService(&bookStore, &authorService, &logger)

	// when
	book, err := service.Find(context.TODO(), bookFaust.ID)

	// then
	assert.NoError(t, err)
	assert.NotNil(t, book)
	assert.Len(t, book.Authors, 1)

	assert.Equal(t, bookFaust.ID, book.ID)
	assert.Equal(t, bookFaust.Title, book.Title)
	assert.Equal(t, bookFaust.Description, book.Description)
	assert.Equal(t, bookFaust.ISBN, book.ISBN)

	expectedAuthor := bookFaust.Authors[0]
	actualAuthor := book.Authors[0]

	assertEqualAuthors(t, expectedAuthor, actualAuthor)
}

func TestFindBookWithoutAuthor(t *testing.T) {
	// given
	entity := NewEntityFromBook(bookWithoutAuthor)

	bookStore := bookStoreMock{findOneResult: entity}
	authorService := authorServiceMock{}
	logger := loggerMock{t}

	service := NewService(&bookStore, &authorService, &logger)

	// when
	book, err := service.Find(context.TODO(), bookFaust.ID)

	// then
	assert.NoError(t, err)
	assert.NotNil(t, book)
	assert.Len(t, book.Authors, 0)

	assert.Equal(t, bookWithoutAuthor.ID, book.ID)
	assert.Equal(t, bookWithoutAuthor.Title, book.Title)
	assert.Equal(t, bookWithoutAuthor.Description, book.Description)
	assert.Equal(t, bookWithoutAuthor.ISBN, book.ISBN)
}

func TestFindErrorWhileGettingBook(t *testing.T) {
	// given
	bookStore := bookStoreMock{findOneErr: errors.New("test")}
	authorService := authorServiceMock{authorsMap: map[string]*author.Author{authorGoethe.ID: authorGoethe}}
	logger := loggerMock{t}

	service := NewService(&bookStore, &authorService, &logger)

	// when
	book, err := service.Find(context.TODO(), bookFaust.ID)

	// then
	assert.Error(t, err)
	assert.Nil(t, book)
}

func TestFindErrorWhileGettingAuthors(t *testing.T) {
	// given
	entity := NewEntityFromBook(bookFaust)

	bookStore := bookStoreMock{findOneResult: entity}
	authorService := authorServiceMock{err: errors.New("test")}
	logger := loggerMock{t}

	service := NewService(&bookStore, &authorService, &logger)

	// when
	book, err := service.Find(context.TODO(), bookFaust.ID)

	// then
	assert.Error(t, err)
	assert.Nil(t, book)
}

// ----- LISTING -----

func TestList(t *testing.T) {
	// given
	documents := []map[string]interface{}{}

	books := []*Book{bookFaust, bookHamlet}
	for _, book := range books {
		documents = append(documents, bookToDoc(t, book))
	}

	authors := []*author.Author{}
	authors = append(authors, bookFaust.Authors...)
	authors = append(authors, bookHamlet.Authors...)

	authorsMap := map[string]*author.Author{}
	for _, a := range authors {
		authorsMap[a.ID] = a
	}

	bookStore := bookStoreMock{listResult: documents, countResult: 2}
	authorService := authorServiceMock{authorsMap: authorsMap}
	logger := loggerMock{t}

	service := NewService(&bookStore, &authorService, &logger)

	listReq := common.NewListRequest(0, 10, "_id")

	// when
	booksPage, err := service.List(context.TODO(), listReq)

	// then
	assert.NoError(t, err)
	assert.NotNil(t, booksPage)
	assert.Len(t, booksPage.Books, 2)

	for _, book := range booksPage.Books {
		assertBookInBooks(t, book, books)

		for _, athr := range book.Authors {
			assertAuthorInAuthors(t, athr, authors)
		}
	}
}

func TestListErrorWhileListingBooks(t *testing.T) {
	// given
	bookStore := bookStoreMock{listErr: errors.New("test")}
	authorService := authorServiceMock{}
	logger := loggerMock{t}

	service := NewService(&bookStore, &authorService, &logger)

	listReq := common.NewListRequest(0, 10, "_id")

	// when
	booksPage, err := service.List(context.TODO(), listReq)

	// then
	assert.Error(t, err)
	assert.Nil(t, booksPage)
}

func TestListErrorWhileGettingAuthors(t *testing.T) {
	// given
	documents := []map[string]interface{}{}

	books := []*Book{bookFaust, bookHamlet}
	for _, book := range books {
		documents = append(documents, bookToDoc(t, book))
	}

	bookStore := bookStoreMock{listResult: documents}
	authorService := authorServiceMock{err: errors.New("test")}
	logger := loggerMock{t}

	service := NewService(&bookStore, &authorService, &logger)

	listReq := common.NewListRequest(0, 10, "_id")

	// when
	booksPage, err := service.List(context.TODO(), listReq)

	// then
	assert.Error(t, err)
	assert.Nil(t, booksPage)
}

func TestListErrorWhileCountingBooks(t *testing.T) {
	// given
	documents := []map[string]interface{}{}

	books := []*Book{bookFaust, bookHamlet}
	for _, book := range books {
		documents = append(documents, bookToDoc(t, book))
	}

	authors := []*author.Author{}
	authors = append(authors, bookFaust.Authors...)
	authors = append(authors, bookHamlet.Authors...)

	authorsMap := map[string]*author.Author{}
	for _, a := range authors {
		authorsMap[a.ID] = a
	}

	bookStore := bookStoreMock{listResult: documents, countErr: errors.New("test")}
	authorService := authorServiceMock{authorsMap: authorsMap}
	logger := loggerMock{t}

	service := NewService(&bookStore, &authorService, &logger)

	listReq := common.NewListRequest(0, 10, "_id")

	// when
	booksPage, err := service.List(context.TODO(), listReq)

	// then
	assert.Error(t, err)
	assert.Nil(t, booksPage)
}

// ----- HELPERS -----

func assertBookInBooks(t *testing.T, book *Book, books []*Book) {
	for _, b := range books {
		if b.ID == book.ID && b.Title == book.Title &&
			b.Description == book.Description && b.ISBN == book.ISBN &&
			equalTime(b.CreationDate, book.CreationDate) {
			return
		}
	}

	t.Errorf("cannot find book %v in books collection", book)
}

func assertAuthorInAuthors(t *testing.T, athr *author.Author, authors []*author.Author) {
	for _, a := range authors {
		if a.ID == athr.ID && a.Name == athr.Name &&
			a.Description == athr.Description &&
			equalTime(a.CreationDate, athr.CreationDate) {
			return
		}
	}

	t.Errorf("cannot find author %v in authors collection", athr)
}

func assertEqualAuthors(t *testing.T, expected, actual *author.Author) {
	assert.Equal(t, expected.ID, actual.ID)
	assert.Equal(t, expected.Name, actual.Name)
	assert.Equal(t, expected.Description, actual.Description)
	assertEqualTime(t, expected.CreationDate, actual.CreationDate)
}

func bookToDoc(t *testing.T, book *Book) map[string]interface{} {
	bts, err := bson.Marshal(NewEntityFromBook(book))
	if err != nil {
		t.Errorf("cannot marshal Book to BSON, error: %v", err)
	}

	doc := make(map[string]interface{})
	if err := bson.Unmarshal(bts, &doc); err != nil {
		t.Errorf("cannot unmarshal BSON to document, error: %v", err)
	}

	return doc
}

func assertEqualTime(t *testing.T, expected, actual time.Time) {
	assert.True(t, equalTime(expected, actual))
}

func equalTime(first, second time.Time) bool {
	return first.Year() == second.Year() &&
		first.Month() == second.Month() &&
		first.Day() == second.Day() &&
		first.Hour() == second.Hour() &&
		first.Minute() == second.Minute() &&
		first.Second() == second.Second()
}
