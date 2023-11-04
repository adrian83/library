package author

import (
	"context"
	"errors"
	"testing"

	"github.com/adrian83/library/pkg/common"
	"github.com/stretchr/testify/assert"
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

type authorStoreMock struct {
	persistAuthorErr       error
	findAuthorErr          error
	findAuthorResult       *Entity
	updateAuthorErr        error
	countAllAuthorsResult  int64
	countAllAuthorsErr     error
	deleteAuthorErr        error
	findAuthorsByIDsResult []*Entity
	findAuthorsByIDsErr    error
	listAuthorsResult      []*Entity
	listAuthorsErr         error
}

func (m *authorStoreMock) PersistAuthor(context.Context, *Entity) error {
	return m.persistAuthorErr
}

func (m *authorStoreMock) FindAuthor(context.Context, string) (*Entity, error) {
	return m.findAuthorResult, m.findAuthorErr
}

func (m *authorStoreMock) UpdateAuthor(context.Context, *Entity) error {
	return m.updateAuthorErr
}

func (m *authorStoreMock) CountAllAuthors(context.Context) (int64, error) {
	return m.countAllAuthorsResult, m.countAllAuthorsErr
}

func (m *authorStoreMock) DeleteAuthor(context.Context, string) error {
	return m.deleteAuthorErr
}

func (m *authorStoreMock) FindAuthorsByIDs(context.Context, []string) ([]*Entity, error) {
	return m.findAuthorsByIDsResult, m.findAuthorsByIDsErr
}

func (m *authorStoreMock) ListAuthors(context.Context, int64, int64) ([]*Entity, error) {
	return m.listAuthorsResult, m.listAuthorsErr
}

// ----- PERSIST -----

func TestPersistAuthor(t *testing.T) {
	// given
	authorStore := authorStoreMock{}
	logger := loggerMock{t}

	service := NewService(&authorStore, &logger)

	createAuthorReq := NewCreateAuthorCommand(authorShakespeare.Name, authorShakespeare.Description)

	// when
	author, err := service.Persist(context.TODO(), createAuthorReq)

	// then
	assert.NoError(t, err)
	assert.NotNil(t, author)
	assert.NotEmpty(t, author.ID)
	assert.Equal(t, createAuthorReq.Name, author.Name)
	assert.Equal(t, createAuthorReq.Description, author.Description)
}

func TestPersistAuthorError(t *testing.T) {
	// given
	authorStore := authorStoreMock{persistAuthorErr: errors.New("test")}
	logger := loggerMock{t}

	service := NewService(&authorStore, &logger)

	createAuthorReq := NewCreateAuthorCommand(authorShakespeare.Name, authorShakespeare.Description)

	// when
	author, err := service.Persist(context.TODO(), createAuthorReq)

	// then
	assert.Error(t, err)
	assert.Nil(t, author)
}

// ----- UPDATE -----

func TestUpdateAuthor(t *testing.T) {
	// given
	authorStore := authorStoreMock{}
	logger := loggerMock{t}

	service := NewService(&authorStore, &logger)

	updateAuthorReq := NewUpdateAuthorCommand(authorShakespeare.ID, authorShakespeare.Name, authorShakespeare.Description)

	// when
	err := service.Update(context.TODO(), updateAuthorReq)

	// then
	assert.NoError(t, err)
}

func TestUpdateAuthorError(t *testing.T) {
	// given
	authorStore := authorStoreMock{updateAuthorErr: errors.New("test")}
	logger := loggerMock{t}

	service := NewService(&authorStore, &logger)

	updateAuthorReq := NewUpdateAuthorCommand(authorShakespeare.ID, authorShakespeare.Name, authorShakespeare.Description)

	// when
	err := service.Update(context.TODO(), updateAuthorReq)

	// then
	assert.Error(t, err)
}

// ----- DELETE -----

func TestDeleteAuthor(t *testing.T) {
	// given
	authorStore := authorStoreMock{}
	logger := loggerMock{t}

	service := NewService(&authorStore, &logger)

	deleteAuthorCommand := NewDeleteAuthorCommand(authorShakespeare.ID)

	// when
	err := service.Delete(context.TODO(), deleteAuthorCommand)

	// then
	assert.NoError(t, err)
}

func TestDeleteAuthorError(t *testing.T) {
	// given
	authorStore := authorStoreMock{deleteAuthorErr: errors.New("test")}
	logger := loggerMock{t}

	service := NewService(&authorStore, &logger)

	deleteAuthorCommand := NewDeleteAuthorCommand(authorShakespeare.ID)

	// when
	err := service.Delete(context.TODO(), deleteAuthorCommand)

	// then
	assert.Error(t, err)
}

// ----- FIND -----

func TestFindAuthor(t *testing.T) {
	// given
	authorStore := authorStoreMock{findAuthorResult: entityShakespear}
	logger := loggerMock{t}

	service := NewService(&authorStore, &logger)

	// when
	author, err := service.Find(context.TODO(), authorShakespeare.ID)

	// then
	assert.NoError(t, err)
	assert.NotNil(t, author)
}

func TestFindAuthorError(t *testing.T) {
	// given
	authorStore := authorStoreMock{findAuthorErr: errors.New("test")}
	logger := loggerMock{t}

	service := NewService(&authorStore, &logger)

	// when
	author, err := service.Find(context.TODO(), authorShakespeare.ID)

	// then
	assert.Error(t, err)
	assert.Nil(t, author)
}

// ----- FIND BY IDS -----

func TestFindAuthorsByIDs(t *testing.T) {
	// given
	authorStore := authorStoreMock{findAuthorsByIDsResult: []*Entity{entityShakespear, entityGoethe}}
	logger := loggerMock{t}

	service := NewService(&authorStore, &logger)

	// when
	authors, err := service.FindAuthorsByIDs(context.TODO(), []string{authorShakespeare.ID, authorGoethe.ID})

	// then
	assert.NoError(t, err)
	assert.NotNil(t, authors)
	assert.Len(t, authors, 2)

	resultShakespeare := authors[0]
	assert.Equal(t, authorShakespeare.ID, resultShakespeare.ID)
	assert.Equal(t, authorShakespeare.Name, resultShakespeare.Name)
	assert.Equal(t, authorShakespeare.Description, resultShakespeare.Description)
	assert.True(t, authorShakespeare.CreationDate.Equal(resultShakespeare.CreationDate))

	resultGoethe := authors[1]
	assert.Equal(t, authorGoethe.ID, resultGoethe.ID)
	assert.Equal(t, authorGoethe.Name, resultGoethe.Name)
	assert.Equal(t, authorGoethe.Description, resultGoethe.Description)
	assert.True(t, authorGoethe.CreationDate.Equal(resultGoethe.CreationDate))
}

func TestFindAuthorsByIDsError(t *testing.T) {
	// given
	authorStore := authorStoreMock{findAuthorsByIDsErr: errors.New("test")}
	logger := loggerMock{t}

	service := NewService(&authorStore, &logger)

	// when
	authorsMap, err := service.FindAuthorsByIDs(context.TODO(), []string{authorShakespeare.ID, authorGoethe.ID})

	// then
	assert.Error(t, err)
	assert.Nil(t, authorsMap)
}

func TestListAuthors(t *testing.T) {
	// given
	entities := []*Entity{entityShakespear, entityGoethe}

	authorStore := authorStoreMock{listAuthorsResult: entities, countAllAuthorsResult: int64(len(entities))}
	logger := loggerMock{t}

	service := NewService(&authorStore, &logger)

	listReq := common.NewListQuery(0, 10, "_id")

	// when
	authorsPage, err := service.List(context.TODO(), listReq)

	// then
	assert.NoError(t, err)
	assert.NotNil(t, authorsPage)
}

func TestListAuthorsErrorWhileListing(t *testing.T) {
	// given
	authorStore := authorStoreMock{listAuthorsErr: errors.New("test")}
	logger := loggerMock{t}

	service := NewService(&authorStore, &logger)

	listReq := common.NewListQuery(0, 10, "_id")

	// when
	authorsPage, err := service.List(context.TODO(), listReq)

	// then
	assert.Error(t, err)
	assert.Nil(t, authorsPage)
}

func TestListAuthorsErrorWhileCounting(t *testing.T) {
	// given
	entities := []*Entity{entityShakespear, entityGoethe}

	authorStore := authorStoreMock{listAuthorsResult: entities, countAllAuthorsErr: errors.New("test")}
	logger := loggerMock{t}

	service := NewService(&authorStore, &logger)

	listReq := common.NewListQuery(0, 10, "_id")

	// when
	authorsPage, err := service.List(context.TODO(), listReq)

	// then
	assert.Error(t, err)
	assert.Nil(t, authorsPage)
}
