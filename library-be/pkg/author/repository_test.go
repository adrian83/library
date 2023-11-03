package author

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

func TestPersistAuthorEntity(t *testing.T) {
	// given
	docCollection := docCollectionMock{}

	repository := NewAuthorRepository(&docCollection)

	// when
	err := repository.PersistAuthor(context.TODO(), entityShakespear)

	// then
	assert.NoError(t, err)
}

func TestPersistAuthorEntityError(t *testing.T) {
	// given
	docCollection := docCollectionMock{insertOneErr: errors.New("test")}

	repository := NewAuthorRepository(&docCollection)

	// when
	err := repository.PersistAuthor(context.TODO(), entityShakespear)

	// then
	assert.Error(t, err)
}

// ----- UPDATE -----

func TestUpdateAuthorEntity(t *testing.T) {
	// given
	docCollection := docCollectionMock{}

	repository := NewAuthorRepository(&docCollection)

	// when
	err := repository.UpdateAuthor(context.TODO(), entityShakespear)

	// then
	assert.NoError(t, err)
}

func TestUpdateAuthorEntityError(t *testing.T) {
	// given
	docCollection := docCollectionMock{updateOneErr: errors.New("test")}

	repository := NewAuthorRepository(&docCollection)

	// when
	err := repository.UpdateAuthor(context.TODO(), entityShakespear)

	// then
	assert.Error(t, err)
}

// ----- DELETE -----

func TestDeleteAuthorEntity(t *testing.T) {
	// given
	docCollection := docCollectionMock{}

	repository := NewAuthorRepository(&docCollection)

	// when
	err := repository.DeleteAuthor(context.TODO(), entityShakespear.ID)

	// then
	assert.NoError(t, err)
}

func TestDeleteAuthorEntityError(t *testing.T) {
	// given
	docCollection := docCollectionMock{deleteOneErr: errors.New("test")}

	repository := NewAuthorRepository(&docCollection)

	// when
	err := repository.DeleteAuthor(context.TODO(), entityShakespear.ID)

	// then
	assert.Error(t, err)
}

// ----- FIND -----

func TestFindAuthorEntity(t *testing.T) {
	// given
	docCollection := docCollectionMock{}

	repository := NewAuthorRepository(&docCollection)

	// when
	author, err := repository.FindAuthor(context.TODO(), entityShakespear.ID)

	// then
	assert.NoError(t, err)
	assert.NotNil(t, author)
}

func TestFindAuthorEntityError(t *testing.T) {
	// given
	docCollection := docCollectionMock{findOneErr: errors.New("test")}

	repository := NewAuthorRepository(&docCollection)

	// when
	author, err := repository.FindAuthor(context.TODO(), entityShakespear.ID)

	// then
	assert.Error(t, err)
	assert.True(t, author.Empty())
}

// ----- LIST -----

func TestListAllAuthorEntities(t *testing.T) {
	// given
	documents := []map[string]interface{}{mapShakespeare, mapGoethe}
	docCollection := docCollectionMock{listResult: documents}

	repository := NewAuthorRepository(&docCollection)

	// when
	authors, err := repository.ListAuthors(context.TODO(), 0, 10)

	// then
	assert.NoError(t, err)
	assert.NotNil(t, authors)
	assert.Len(t, authors, 2)
}

func TestListAuthorEntitiesError(t *testing.T) {
	// given
	docCollection := docCollectionMock{listErr: errors.New("test")}

	repository := NewAuthorRepository(&docCollection)

	// when
	authors, err := repository.ListAuthors(context.TODO(), 0, 10)

	// then
	assert.Error(t, err)
	assert.Nil(t, authors)
}

// ----- COUNT -----

func TestCountAllAuthorEntities(t *testing.T) {
	// given
	docCollection := docCollectionMock{countResult: 3}

	repository := NewAuthorRepository(&docCollection)

	// when
	count, err := repository.CountAllAuthors(context.TODO())

	// then
	assert.NoError(t, err)
	assert.Equal(t, count, int64(3))
}

func TestCountAllAuthorEntitiesError(t *testing.T) {
	// given
	docCollection := docCollectionMock{countErr: errors.New("test")}

	repository := NewAuthorRepository(&docCollection)

	// when
	count, err := repository.CountAllAuthors(context.TODO())

	// then
	assert.Error(t, err)
	assert.Equal(t, count, int64(0))
}

// ----- FIND BY IDS -----

func TestFindAuthorEntitiesByIDs(t *testing.T) {
	// given
	docIds := []string{entityShakespear.ID, entityGoethe.ID}

	documents := []map[string]interface{}{mapShakespeare, mapGoethe}
	docCollection := docCollectionMock{listResult: documents}

	repository := NewAuthorRepository(&docCollection)

	// when
	authors, err := repository.FindAuthorsByIDs(context.TODO(), docIds)

	// then
	assert.NoError(t, err)
	assert.Len(t, authors, 2)
}

func TestFindAuthorEntitiesByIDsError(t *testing.T) {
	// given
	docIds := []string{entityShakespear.ID, entityGoethe.ID}

	docCollection := docCollectionMock{listErr: errors.New("test")}

	repository := NewAuthorRepository(&docCollection)

	// when
	authors, err := repository.FindAuthorsByIDs(context.TODO(), docIds)

	// then
	assert.Error(t, err)
	assert.Len(t, authors, 0)
}
