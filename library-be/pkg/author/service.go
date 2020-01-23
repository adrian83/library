package author

import (
	"context"
	"fmt"

	"go.mongodb.org/mongo-driver/bson"

	"github.com/adrian83/library/pkg/common"
)

type authorStore interface {
	InsertOne(context.Context, interface{}) error
	List(context.Context, bson.D, int64, int64) ([]map[string]interface{}, error)
	FindOne(context.Context, string, interface{}) error
	UpdateOne(context.Context, string, interface{}) error
	Count(context.Context, interface{}) (int64, error)
	DeleteOne(context.Context, string) error
}

type Service struct {
	store authorStore
}

func NewService(authorStore authorStore) *Service {
	return &Service{
		store: authorStore,
	}
}

func (s *Service) Persist(ctx context.Context, author *Author) error {
	entity := NewEntity(author)
	return s.store.InsertOne(ctx, &entity)
}

func (s *Service) Update(ctx context.Context, author *Author) error {
	entity := NewEntity(author)
	return s.store.UpdateOne(ctx, entity.ID, entity)
}

func (s *Service) Delete(ctx context.Context, authorID string) error {
	return s.store.DeleteOne(ctx, authorID)
}

func (s *Service) Find(ctx context.Context, id string) (*Author, error) {
	var entity Entity
	if err := s.store.FindOne(ctx, id, &entity); err != nil {
		return nil, err
	}

	return NewAuthorFromEntity(&entity), nil
}

const (
	zeroOffset         int64 = 0
	maxAuthorsPageSize int64 = 10000
)

func (s *Service) FindAuthorsByIDs(ctx context.Context, ids []string) (map[string]*Author, error) {
	criteria := bson.D{{
		"_id",
		bson.D{{
			"$in",
			ids,
		}},
	}}

	maps, err := s.store.List(ctx, criteria, zeroOffset, maxAuthorsPageSize)
	if err != nil {
		return nil, err
	}

	authorsMap := make(map[string]*Author)

	for _, m := range maps {
		entity, err := NewEntityFromDoc(m)
		if err != nil {
			return nil, err
		}

		author := NewAuthorFromEntity(entity)
		authorsMap[author.ID] = author
	}

	return authorsMap, nil
}

func (s *Service) mapsToAuthors(maps []map[string]interface{}) ([]*Author, error) {
	authors := make([]*Author, 0)

	for _, m := range maps {
		entity, err := NewEntityFromDoc(m)
		if err != nil {
			return nil, err
		}

		author := NewAuthorFromEntity(entity)
		authors = append(authors, author)
	}

	return authors, nil
}

func (s *Service) List(ctx context.Context, listAuthors *common.ListRequest) (*AuthorsPage, error) {
	filter := bson.D{}

	maps, err := s.store.List(ctx, filter, listAuthors.Offset, listAuthors.Limit)
	if err != nil {
		return nil, err
	}

	fmt.Printf("Maps: %v", maps)

	authors, err := s.mapsToAuthors(maps)
	if err != nil {
		return nil, err
	}

	count, err := s.store.Count(ctx, filter)
	if err != nil {
		return nil, err
	}

	page := NewAuthorsPage(authors, listAuthors.Limit, listAuthors.Offset, count)

	return page, nil
}
