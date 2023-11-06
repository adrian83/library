package book

import (
	"context"
	"errors"
	"testing"

	"github.com/stretchr/testify/assert"
	"go.mongodb.org/mongo-driver/bson"
)

type docCollectionMock struct {
	insertOneErr error
	countResult  int64
	countErr     error
	deleteOneErr error
	findOneErr   error
	updateOneErr error
	listResult   []map[string]interface{}
	listErr      error
}

func (m *docCollectionMock) InsertOne(ctx context.Context, doc *Entity) error {
	return m.insertOneErr
}

func (m *docCollectionMock) Count(ctx context.Context, filter interface{}) (int64, error) {
	return m.countResult, m.countErr
}

func (m *docCollectionMock) DeleteOne(ctx context.Context, id string) error {
	return m.deleteOneErr
}

func (m *docCollectionMock) FindOne(context.Context, string, *Entity) error {
	return m.findOneErr
}

func (m *docCollectionMock) UpdateOne(context.Context, *Entity) error {
	return m.updateOneErr
}

func (m *docCollectionMock) List(context.Context, bson.D, int64, int64) ([]map[string]interface{}, error) {
	return m.listResult, m.listErr
}

// ----- PERSIST -----

func TestPersistBookEntity(t *testing.T) {
	// given
	docCollection := docCollectionMock{}

	repository := NewBookRepository(&docCollection)

	// when
	err := repository.PersistBook(context.TODO(), entityHamlet)

	// then
	assert.NoError(t, err)
}

func TestPersistBookEntityError(t *testing.T) {
	// given
	docCollection := docCollectionMock{insertOneErr: errors.New("test")}

	repository := NewBookRepository(&docCollection)

	// when
	err := repository.PersistBook(context.TODO(), entityHamlet)

	// then
	assert.Error(t, err)
}

// ----- UPDATE -----

func TestUpdateBookEntity(t *testing.T) {
	// given
	docCollection := docCollectionMock{}

	repository := NewBookRepository(&docCollection)

	// when
	err := repository.UpdateBook(context.TODO(), entityHamlet)

	// then
	assert.NoError(t, err)
}

func TestUpdateBookEntityError(t *testing.T) {
	// given
	docCollection := docCollectionMock{updateOneErr: errors.New("test")}

	repository := NewBookRepository(&docCollection)

	// when
	err := repository.UpdateBook(context.TODO(), entityHamlet)

	// then
	assert.Error(t, err)
}

// ----- DELETE -----

func TestDeleteBookEntity(t *testing.T) {
	// given
	docCollection := docCollectionMock{}

	repository := NewBookRepository(&docCollection)

	// when
	err := repository.DeleteBook(context.TODO(), entityFaust.ID)

	// then
	assert.NoError(t, err)
}

func TestDeleteBookEntityError(t *testing.T) {
	// given
	docCollection := docCollectionMock{deleteOneErr: errors.New("test")}

	repository := NewBookRepository(&docCollection)

	// when
	err := repository.DeleteBook(context.TODO(), entityFaust.ID)

	// then
	assert.Error(t, err)
}

// ----- FIND -----

func TestFindBookEntity(t *testing.T) {
	// given
	docCollection := docCollectionMock{}

	repository := NewBookRepository(&docCollection)

	// when
	book, err := repository.FindBook(context.TODO(), entityFaust.ID)

	// then
	assert.NoError(t, err)
	assert.NotNil(t, book)
}

func TestFindBookEntityError(t *testing.T) {
	// given
	docCollection := docCollectionMock{findOneErr: errors.New("test")}

	repository := NewBookRepository(&docCollection)

	// when
	book, err := repository.FindBook(context.TODO(), entityFaust.ID)

	// then
	assert.Error(t, err)
	assert.True(t, book.Empty())
}

// ----- LIST -----

func TestListAllBooksEntities(t *testing.T) {
	// given
	documents := []map[string]interface{}{mapFaust, mapHamlet}
	docCollection := docCollectionMock{listResult: documents}

	repository := NewBookRepository(&docCollection)

	// when
	books, err := repository.ListBooks(context.TODO(), 0, 10)

	// then
	assert.NoError(t, err)
	assert.NotNil(t, books)
	assert.Len(t, books, 2)
}

func TestListBooksEntitiesError(t *testing.T) {
	// given
	docCollection := docCollectionMock{listErr: errors.New("test")}

	repository := NewBookRepository(&docCollection)

	// when
	books, err := repository.ListBooks(context.TODO(), 0, 10)

	// then
	assert.Error(t, err)
	assert.Nil(t, books)
}

// ----- COUNT -----

func TestCountAllBooksEntities(t *testing.T) {
	// given
	docCollection := docCollectionMock{countResult: 3}

	repository := NewBookRepository(&docCollection)

	// when
	count, err := repository.CountAllBooks(context.TODO())

	// then
	assert.NoError(t, err)
	assert.Equal(t, count, int64(3))
}

func TestCountAllBooksEntitiesError(t *testing.T) {
	// given
	docCollection := docCollectionMock{countErr: errors.New("test")}

	repository := NewBookRepository(&docCollection)

	// when
	count, err := repository.CountAllBooks(context.TODO())

	// then
	assert.Error(t, err)
	assert.Equal(t, count, int64(0))
}
