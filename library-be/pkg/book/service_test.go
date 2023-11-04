package book

import (
	"context"
	"errors"
	"testing"

	"github.com/adrian83/library/pkg/author"
	"github.com/adrian83/library/pkg/common"
	"github.com/adrian83/library/pkg/storage"
	"github.com/stretchr/testify/assert"
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

	entityHamlet = NewEntity(bookHamlet.ID, bookHamlet.Title, bookHamlet.Description, bookHamlet.ISBN,
		[]string{authorShakespeare.ID}, bookHamlet.CreationDate)
	entityFaust = NewEntity(bookFaust.ID, bookFaust.Title, bookFaust.Description, bookFaust.ISBN,
		[]string{authorGoethe.ID}, bookFaust.CreationDate)
	entityWithoutAuthor = NewEntity(bookWithoutAuthor.ID, bookWithoutAuthor.Title, bookWithoutAuthor.Description,
		bookWithoutAuthor.ISBN, []string{}, bookWithoutAuthor.CreationDate)
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
	findAuthorsByIDsResult []*author.Author
	findAuthorsByIDsErr    error
}

func (m *authorServiceMock) FindAuthorsByIDs(context.Context, []string) ([]*author.Author, error) {
	return m.findAuthorsByIDsResult, m.findAuthorsByIDsErr
}

type bookStoreMock struct {
	persistBookErr      error
	listBooksResult     []*Entity
	listBooksErr        error
	updateBookErr       error
	countAllBooksResult int64
	countAllBooksErr    error
	deleteBookErr       error
	findBookResult      *Entity
	findBookErr         error
}

func (m *bookStoreMock) PersistBook(context.Context, *Entity) error {
	return m.persistBookErr
}

func (m *bookStoreMock) ListBooks(context.Context, int64, int64) ([]*Entity, error) {
	return m.listBooksResult, m.listBooksErr
}

func (m *bookStoreMock) FindBook(ctx context.Context, id string) (*Entity, error) {
	return m.findBookResult, m.findBookErr
}

func (m *bookStoreMock) UpdateBook(context.Context, *Entity) error {
	return m.updateBookErr
}

func (m *bookStoreMock) CountAllBooks(ctx context.Context) (int64, error) {
	return m.countAllBooksResult, m.countAllBooksErr
}

func (m *bookStoreMock) DeleteBook(ctx context.Context, bookID string) error {
	return m.deleteBookErr
}

// ----- PERSISTING -----

func TestPersist(t *testing.T) {
	// given
	bookStore := bookStoreMock{}
	authorService := authorServiceMock{findAuthorsByIDsResult: []*author.Author{authorShakespeare}}
	logger := loggerMock{t}

	service := NewService(&bookStore, &authorService, &logger)

	createBookReq := NewCreateBookCommand(bookHamlet.Title, bookHamlet.Description, bookHamlet.ISBN)

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
	bookStore := bookStoreMock{persistBookErr: errors.New("test")}
	authorService := authorServiceMock{}
	logger := loggerMock{t}

	service := NewService(&bookStore, &authorService, &logger)

	createBookReq := NewCreateBookCommand(bookHamlet.Title, bookHamlet.Description, bookHamlet.ISBN)

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

	updateBookReq := NewUpdateBookCommand("abc", bookHamlet.Title, bookHamlet.Description, bookHamlet.ISBN, []string{"1"})

	// when
	err := service.Update(context.TODO(), updateBookReq)

	// then
	assert.NoError(t, err)
}

func TestUpdateError(t *testing.T) {
	// given
	bookStore := bookStoreMock{updateBookErr: errors.New("test")}
	authorService := authorServiceMock{}
	logger := loggerMock{t}

	service := NewService(&bookStore, &authorService, &logger)

	updateBookReq := NewUpdateBookCommand("abc", bookHamlet.Title, bookHamlet.Description, bookHamlet.ISBN, []string{"1"})

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

	deleteBookCommand := NewDeleteBookCommand(bookHamlet.ID)

	// when
	err := service.Delete(context.TODO(), deleteBookCommand)

	// then
	assert.NoError(t, err)
}

func TestDeleteError(t *testing.T) {
	// given
	bookStore := bookStoreMock{deleteBookErr: storage.ErrNotFound}
	authorService := authorServiceMock{}
	logger := loggerMock{t}

	service := NewService(&bookStore, &authorService, &logger)

	deleteBookCommand := NewDeleteBookCommand(bookFaust.ID)

	// when
	err := service.Delete(context.TODO(), deleteBookCommand)

	// then
	assert.Error(t, err)
}

// ----- FINDING -----

func TestFind(t *testing.T) {
	// given
	entity := entityFaust

	bookStore := bookStoreMock{findBookResult: entity}
	authorService := authorServiceMock{findAuthorsByIDsResult: []*author.Author{authorGoethe}}
	logger := loggerMock{t}

	service := NewService(&bookStore, &authorService, &logger)

	findBookQuery := NewFindBookQuery(bookFaust.ID)

	// when
	book, err := service.Find(context.TODO(), findBookQuery)

	// then
	assert.NoError(t, err)
	assert.NotNil(t, book)
	assert.Len(t, book.Authors, 1)

	assert.Equal(t, bookFaust.ID, book.ID)
	assert.Equal(t, bookFaust.Title, book.Title)
	assert.Equal(t, bookFaust.Description, book.Description)
	assert.Equal(t, bookFaust.ISBN, book.ISBN)

	//expectedAuthor := bookFaust.Authors[0]
	//actualAuthor := book.Authors[0]

	//assertEqualAuthors(t, expectedAuthor, actualAuthor)
}

func TestFindBookWithoutAuthor(t *testing.T) {
	// given
	entity := entityWithoutAuthor

	bookStore := bookStoreMock{findBookResult: entity}
	authorService := authorServiceMock{}
	logger := loggerMock{t}

	service := NewService(&bookStore, &authorService, &logger)

	findBookQuery := NewFindBookQuery(bookFaust.ID)

	// when
	book, err := service.Find(context.TODO(), findBookQuery)

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
	bookStore := bookStoreMock{findBookErr: errors.New("test")}
	authorService := authorServiceMock{findAuthorsByIDsResult: []*author.Author{authorGoethe}}
	logger := loggerMock{t}

	service := NewService(&bookStore, &authorService, &logger)

	findBookQuery := NewFindBookQuery(bookFaust.ID)

	// when
	book, err := service.Find(context.TODO(), findBookQuery)

	// then
	assert.Error(t, err)
	assert.Nil(t, book)
}

func TestFindErrorWhileGettingAuthors(t *testing.T) {
	// given
	entity := entityFaust

	bookStore := bookStoreMock{findBookResult: entity}
	authorService := authorServiceMock{findAuthorsByIDsErr: errors.New("test")}
	logger := loggerMock{t}

	service := NewService(&bookStore, &authorService, &logger)

	findBookQuery := NewFindBookQuery(bookFaust.ID)

	// when
	book, err := service.Find(context.TODO(), findBookQuery)

	// then
	assert.Error(t, err)
	assert.Nil(t, book)
}

// ----- LISTING -----

func TestList(t *testing.T) {
	// given
	entities := []*Entity{entityHamlet, entityFaust}
	authors := []*author.Author{authorShakespeare, authorGoethe}

	bookStore := bookStoreMock{listBooksResult: entities, countAllBooksResult: int64(len(entities))}
	authorService := authorServiceMock{findAuthorsByIDsResult: authors}
	logger := loggerMock{t}

	service := NewService(&bookStore, &authorService, &logger)

	listBooksQuery := NewListBooksQuery(common.NewListQuery(0, 10, "_id"))

	// when
	booksPage, err := service.List(context.TODO(), listBooksQuery)

	// then
	assert.NoError(t, err)
	assert.NotNil(t, booksPage)
	assert.Len(t, booksPage.Books, 2)

	resultHamlet := booksPage.Books[0]
	assert.Equal(t, bookHamlet.ID, resultHamlet.ID)
	assert.Equal(t, bookHamlet.Title, resultHamlet.Title)
	assert.Equal(t, bookHamlet.Description, resultHamlet.Description)
	assert.Equal(t, bookHamlet.ISBN, resultHamlet.ISBN)
	assert.Equal(t, bookHamlet.CreationDate, resultHamlet.CreationDate)

	assert.Len(t, resultHamlet.Authors, 1)
	resultHamletAuthor := resultHamlet.Authors[0]
	assert.Equal(t, authorShakespeare.ID, resultHamletAuthor.ID)

}

func TestListErrorWhileListingBooks(t *testing.T) {
	// given
	bookStore := bookStoreMock{listBooksErr: errors.New("test")}
	authorService := authorServiceMock{}
	logger := loggerMock{t}

	service := NewService(&bookStore, &authorService, &logger)

	listBooksQuery := NewListBooksQuery(common.NewListQuery(0, 10, "_id"))

	// when
	booksPage, err := service.List(context.TODO(), listBooksQuery)

	// then
	assert.Error(t, err)
	assert.Nil(t, booksPage)
}

func TestListErrorWhileGettingAuthors(t *testing.T) {
	// given
	entities := []*Entity{entityHamlet, entityFaust}

	bookStore := bookStoreMock{listBooksResult: entities}
	authorService := authorServiceMock{findAuthorsByIDsErr: errors.New("test")}
	logger := loggerMock{t}

	service := NewService(&bookStore, &authorService, &logger)

	listBooksQuery := NewListBooksQuery(common.NewListQuery(0, 10, "_id"))

	// when
	booksPage, err := service.List(context.TODO(), listBooksQuery)

	// then
	assert.Error(t, err)
	assert.Nil(t, booksPage)
}

func TestListErrorWhileCountingBooks(t *testing.T) {
	// given
	entities := []*Entity{entityHamlet, entityFaust}
	authors := []*author.Author{authorShakespeare, authorGoethe}

	bookStore := bookStoreMock{listBooksResult: entities, countAllBooksErr: errors.New("test")}
	authorService := authorServiceMock{findAuthorsByIDsResult: authors}
	logger := loggerMock{t}

	service := NewService(&bookStore, &authorService, &logger)

	listBooksQuery := NewListBooksQuery(common.NewListQuery(0, 10, "_id"))

	// when
	booksPage, err := service.List(context.TODO(), listBooksQuery)

	// then
	assert.Error(t, err)
	assert.Nil(t, booksPage)
}
