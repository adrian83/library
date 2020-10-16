package author

import (
	"context"
	"errors"
	"testing"
	"time"

	"github.com/adrian83/library/pkg/common"
	"github.com/adrian83/library/pkg/storage"
	"github.com/stretchr/testify/assert"

	"go.mongodb.org/mongo-driver/bson"
)

var (
	authorShakespeare = NewAuthor("William Shakespeare", "Shakespeare was born and raised in Stratford-upon-Avon, Warwickshire. At the age...")
	authorGoethe      = NewAuthor("Johann Wolfgang von Goethe", "Johann Wolfgang von Goethe was a German writer and statesman. His works...")
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
	insertOneErr error
	listResult   []map[string]interface{}
	listErr      error
	findOneErr   error
	updateOneErr error
	countResult  int64
	countErr     error
	deleteOneErr error
}

func (m *authorStoreMock) InsertOne(ctx context.Context, str interface{}) error {
	return m.insertOneErr
}

func (m *authorStoreMock) List(context.Context, bson.D, int64, int64) ([]map[string]interface{}, error) {
	return m.listResult, m.listErr
}

func (m *authorStoreMock) FindOne(context.Context, string, interface{}) error {
	return m.findOneErr
}

func (m *authorStoreMock) UpdateOne(context.Context, string, interface{}) error {
	return m.updateOneErr
}

func (m *authorStoreMock) Count(context.Context, interface{}) (int64, error) {
	return m.countResult, m.countErr
}

func (m *authorStoreMock) DeleteOne(context.Context, string) error {
	return m.deleteOneErr
}

// ----- PERSISTING -----

func TestPersist(t *testing.T) {
	// given
	authorStore := authorStoreMock{}
	logger := loggerMock{t}

	service := NewService(&authorStore, &logger)

	createAuthorReq := NewCreateAuthorReq(authorShakespeare.Name, authorShakespeare.Description)

	// when
	author, err := service.Persist(context.TODO(), createAuthorReq)

	// then
	assert.NoError(t, err)
	assert.NotNil(t, author)
	assert.NotEmpty(t, author.ID)
	assert.Equal(t, createAuthorReq.Name, author.Name)
	assert.Equal(t, createAuthorReq.Description, author.Description)
}

func TestPersistError(t *testing.T) {
	// given
	authorStore := authorStoreMock{insertOneErr: errors.New("test")}
	logger := loggerMock{t}

	service := NewService(&authorStore, &logger)

	createAuthorReq := NewCreateAuthorReq(authorShakespeare.Name, authorShakespeare.Description)

	// when
	author, err := service.Persist(context.TODO(), createAuthorReq)

	// then
	assert.Error(t, err)
	assert.Nil(t, author)
}

// ----- UPDATING -----

func TestUpdate(t *testing.T) {
	// given
	authorStore := authorStoreMock{}
	logger := loggerMock{t}

	service := NewService(&authorStore, &logger)

	updateAuthorReq := NewUpdateAuthorReq(authorShakespeare.ID, authorShakespeare.Name, authorShakespeare.Description)

	// when
	err := service.Update(context.TODO(), updateAuthorReq)

	// then
	assert.NoError(t, err)
}

func TestUpdateError(t *testing.T) {
	// given
	authorStore := authorStoreMock{updateOneErr: errors.New("test")}
	logger := loggerMock{t}

	service := NewService(&authorStore, &logger)

	updateAuthorReq := NewUpdateAuthorReq(authorShakespeare.ID, authorShakespeare.Name, authorShakespeare.Description)

	// when
	err := service.Update(context.TODO(), updateAuthorReq)

	// then
	assert.Error(t, err)
}

// ----- DELETING -----

func TestDelete(t *testing.T) {
	// given
	authorStore := authorStoreMock{}
	logger := loggerMock{t}

	service := NewService(&authorStore, &logger)

	// when
	err := service.Delete(context.TODO(), authorShakespeare.ID)

	// then
	assert.NoError(t, err)
}

func TestDeleteError(t *testing.T) {
	// given
	authorStore := authorStoreMock{deleteOneErr: storage.ErrNotFound}
	logger := loggerMock{t}

	service := NewService(&authorStore, &logger)

	// when
	err := service.Delete(context.TODO(), authorShakespeare.ID)

	// then
	assert.Error(t, err)
}

// ----- FINDING -----

func TestFind(t *testing.T) {
	// given
	authorStore := authorStoreMock{}
	logger := loggerMock{t}

	service := NewService(&authorStore, &logger)

	// when
	author, err := service.Find(context.TODO(), authorShakespeare.ID)

	// then
	assert.NoError(t, err)
	assert.NotNil(t, author)
}

func TestFindError(t *testing.T) {
	// given
	authorStore := authorStoreMock{findOneErr: storage.ErrNotFound}
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
	authorShakespeareDoc := authorToDoc(t, authorShakespeare)
	authorGoetheDoc := authorToDoc(t, authorGoethe)
	documents := []map[string]interface{}{authorShakespeareDoc, authorGoetheDoc}

	authorStore := authorStoreMock{listResult: documents}
	logger := loggerMock{t}

	service := NewService(&authorStore, &logger)

	// when
	authorsMap, err := service.FindAuthorsByIDs(context.TODO(), []string{authorShakespeare.ID, authorGoethe.ID})

	// then
	assert.NoError(t, err)
	assert.NotNil(t, authorsMap)
	assert.Len(t, authorsMap, 2)

	resultShakespeare, ok := authorsMap[authorShakespeare.ID]
	assert.True(t, ok)
	assert.Equal(t, authorShakespeare.ID, resultShakespeare.ID)
	assert.Equal(t, authorShakespeare.Name, resultShakespeare.Name)
	assert.Equal(t, authorShakespeare.Description, resultShakespeare.Description)
	assertTime(t, authorShakespeare.CreationDate, resultShakespeare.CreationDate)

	resultGoethe, ok := authorsMap[authorGoethe.ID]
	assert.True(t, ok)
	assert.Equal(t, authorGoethe.ID, resultGoethe.ID)
	assert.Equal(t, authorGoethe.Name, resultGoethe.Name)
	assert.Equal(t, authorGoethe.Description, resultGoethe.Description)
	assertTime(t, authorGoethe.CreationDate, resultGoethe.CreationDate)
}

func TestFindAuthorsByIDsError(t *testing.T) {
	// given
	authorStore := authorStoreMock{listErr: errors.New("test")}
	logger := loggerMock{t}

	service := NewService(&authorStore, &logger)

	// when
	authorsMap, err := service.FindAuthorsByIDs(context.TODO(), []string{authorShakespeare.ID, authorGoethe.ID})

	// then
	assert.Error(t, err)
	assert.Nil(t, authorsMap)
}

func TestList(t *testing.T) {
	// given
	authorShakespeareDoc := authorToDoc(t, authorShakespeare)
	authorGoetheDoc := authorToDoc(t, authorGoethe)
	documents := []map[string]interface{}{authorShakespeareDoc, authorGoetheDoc}

	authorStore := authorStoreMock{listResult: documents, countResult: int64(len(documents))}
	logger := loggerMock{t}

	service := NewService(&authorStore, &logger)

	listReq := common.NewListRequest(0, 10, "_id")

	// when
	authorsPage, err := service.List(context.TODO(), listReq)

	// then
	assert.NoError(t, err)
	assert.NotNil(t, authorsPage)
}

func TestListErrorWhileListing(t *testing.T) {
	// given
	authorStore := authorStoreMock{listErr: errors.New("test")}
	logger := loggerMock{t}

	service := NewService(&authorStore, &logger)

	listReq := common.NewListRequest(0, 10, "_id")

	// when
	authorsPage, err := service.List(context.TODO(), listReq)

	// then
	assert.Error(t, err)
	assert.Nil(t, authorsPage)
}

func TestListErrorWhileCounting(t *testing.T) {
	// given
	authorShakespeareDoc := authorToDoc(t, authorShakespeare)
	authorGoetheDoc := authorToDoc(t, authorGoethe)
	documents := []map[string]interface{}{authorShakespeareDoc, authorGoetheDoc}

	authorStore := authorStoreMock{listResult: documents, countErr: errors.New("test")}
	logger := loggerMock{t}

	service := NewService(&authorStore, &logger)

	listReq := common.NewListRequest(0, 10, "_id")

	// when
	authorsPage, err := service.List(context.TODO(), listReq)

	// then
	assert.Error(t, err)
	assert.Nil(t, authorsPage)
}

// ----- HELPERS -----

func assertTime(t *testing.T, expected, actual time.Time) {
	assert.Equal(t, expected.Year(), actual.Year())
	assert.Equal(t, expected.Month(), actual.Month())
	assert.Equal(t, expected.Day(), actual.Day())
	assert.Equal(t, expected.Hour(), actual.Hour())
	assert.Equal(t, expected.Minute(), actual.Minute())
	assert.Equal(t, expected.Second(), actual.Second())
}

func authorToDoc(t *testing.T, author *Author) map[string]interface{} {
	entity := NewEntity(author.ID, author.Name, author.Description, author.CreationDate)

	bts, err := bson.Marshal(entity)
	if err != nil {
		t.Errorf("cannot marshal Author to BSON, error: %v", err)
	}

	doc := make(map[string]interface{})
	if err := bson.Unmarshal(bts, &doc); err != nil {
		t.Errorf("cannot unmarshal BSON to document, error: %v", err)
	}

	return doc
}
