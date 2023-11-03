package book

import (
	"context"
	"fmt"

	"github.com/adrian83/library/pkg/storage"
	"go.mongodb.org/mongo-driver/bson"
)

func NewBookRepository(collection storage.DocCollection[*Entity]) *BookRepository {
	return &BookRepository{
		collection: collection,
	}
}

type BookRepository struct {
	collection storage.DocCollection[*Entity]
}

func (r *BookRepository) PersistBook(ctx context.Context, entity *Entity) error {
	return r.collection.InsertOne(ctx, entity)
}

func (r *BookRepository) UpdateBook(ctx context.Context, entity *Entity) error {
	return r.collection.UpdateOne(ctx, entity)
}

func (r *BookRepository) DeleteBook(ctx context.Context, id string) error {
	return r.collection.DeleteOne(ctx, id)
}

func (r *BookRepository) FindBook(ctx context.Context, id string) (*Entity, error) {
	var book Entity
	err := r.collection.FindOne(ctx, id, &book)
	return &book, err
}

func (r *BookRepository) ListBooks(ctx context.Context, offset, limit int64) ([]*Entity, error) {
	criteria := bson.D{}

	maps, err := r.collection.List(ctx, criteria, offset, limit)
	if err != nil {
		return nil, fmt.Errorf("cannot list authors, error: %w", err)
	}

	entities := make([]*Entity, len(maps))
	for i, m := range maps {
		entity, err := NewEntityFromDoc(m)
		if err != nil {
			return nil, fmt.Errorf("cannot transform document to entity, error: %w", err)
		}
		entities[i] = entity
	}

	return entities, nil
}

func (r *BookRepository) CountAllBooks(ctx context.Context) (int64, error) {
	return r.collection.Count(ctx, bson.D{})
}
