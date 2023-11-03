package author

import (
	"context"
	"fmt"

	"go.mongodb.org/mongo-driver/bson"
)

type docCollection interface {
	InsertOne(context.Context, *Entity) error
	UpdateOne(context.Context, *Entity) error
	FindOne(context.Context, string, *Entity) error
	DeleteOne(context.Context, string) error
	List(context.Context, bson.D, int64, int64) ([]map[string]interface{}, error)
	Count(context.Context, interface{}) (int64, error)
}

func NewAuthorRepository(collection docCollection) *AuthorRepository {
	return &AuthorRepository{
		collection: collection,
	}
}

type AuthorRepository struct {
	collection docCollection
}

func (r *AuthorRepository) PersistAuthor(ctx context.Context, entity *Entity) error {
	return r.collection.InsertOne(ctx, entity)
}

func (r *AuthorRepository) UpdateAuthor(ctx context.Context, entity *Entity) error {
	return r.collection.UpdateOne(ctx, entity)
}

func (r *AuthorRepository) DeleteAuthor(ctx context.Context, id string) error {
	return r.collection.DeleteOne(ctx, id)
}

func (r *AuthorRepository) FindAuthor(ctx context.Context, id string) (*Entity, error) {
	var entity Entity
	err := r.collection.FindOne(ctx, id, &entity)
	return &entity, err
}

func (r *AuthorRepository) CountAllAuthors(ctx context.Context) (int64, error) {
	return r.collection.Count(ctx, bson.D{})
}

func (r *AuthorRepository) FindAuthorsByIDs(ctx context.Context, ids []string) ([]*Entity, error) {
	inStmt := bson.D{{Key: "$in", Value: ids}}
	criteria := bson.D{{Key: "_id", Value: inStmt}}
	return r.list(ctx, criteria, zeroOffset, int64(len(ids)))
}

func (r *AuthorRepository) ListAuthors(ctx context.Context, offset, limit int64) ([]*Entity, error) {
	criteria := bson.D{}
	return r.list(ctx, criteria, offset, limit)
}

func (r *AuthorRepository) list(ctx context.Context, criteria bson.D, offset, limit int64) ([]*Entity, error) {
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
