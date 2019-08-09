package book

import (
	"context"

	"go.mongodb.org/mongo-driver/bson"
)

type bookStore interface {
	InsertOne(ctx context.Context, doc interface{}) error
	List(ctx context.Context) ([]bson.M, error)
}

func NewService(bookStore bookStore) *Service {
	return &Service{
		store: bookStore,
	}
}

type Service struct {
	store bookStore
}

func (s *Service) Persist(ctx context.Context, book Book) error {
	return s.store.InsertOne(ctx, book)
}

func (s *Service) List(ctx context.Context) ([]Book, error) {
	bsons, err := s.store.List(ctx)
	if err != nil {
		return nil, err
	}

	books := make([]Book, 0)
	for _, m := range bsons {
		bsonBytes, err := bson.Marshal(m)
		if err != nil {
			return nil, err
		}
		book := new(Book)
		err = bson.Unmarshal(bsonBytes, &book)
		if err != nil {
			return nil, err
		}
		books = append(books, *book)
	}

	return books, nil
}
