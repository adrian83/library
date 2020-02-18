package author

import (
	"context"
	"errors"
	"testing"

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
