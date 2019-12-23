package author

import (
	"context"
	"fmt"

	"go.mongodb.org/mongo-driver/bson"

	"github.com/adrian83/library/pkg/common"
)

type authorStore interface {
	InsertOne(context.Context, interface{}) error
	List(context.Context, bson.D) ([]map[string]interface{}, error)
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

func (s *Service) Persist(ctx context.Context, author Author) error {
	return s.store.InsertOne(ctx, &author)
}

func (s *Service) Update(ctx context.Context, author Author) error {
	return s.store.UpdateOne(ctx, author.ID, author)
}

func (s *Service) Delete(ctx context.Context, authorID string) error {
	return s.store.DeleteOne(ctx, authorID)
}

func (b *Service) Find(ctx context.Context, id string) (*Author, error) {
	var author Author
	if err := b.store.FindOne(ctx, id, &author); err != nil {
		return nil, err
	}

	return &author, nil
}

func (s *Service) List(ctx context.Context, listAuthors *common.ListRequest) (*AuthorsPage, error) {

	filter := bson.D{}

	maps, err := s.store.List(ctx, filter)
	if err != nil {
		return nil, err
	}

	fmt.Printf("Maps: %v", maps)

	authors := make([]*Author, 0)
	for _, m := range maps {

		authorBytes, err := bson.Marshal(m)
		if err != nil {
			return nil, err
		}

		var author Author
		if err = bson.Unmarshal(authorBytes, &author); err != nil {
			return nil, err
		}

		authors = append(authors, &author)
	}

	count, err := s.store.Count(ctx, filter)
	if err != nil {
		return nil, err
	}

	page := NewAuthorsPage(authors, listAuthors.Limit, listAuthors.Offset, count)
	return page, nil
}
