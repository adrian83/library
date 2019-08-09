package book

import (
	"context"

	"go.mongodb.org/mongo-driver/bson"
)

type bookStore interface {
	InsertOne(context.Context, interface{}) error
	List(context.Context, *ListBooks) ([]bson.M, error)
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

func (s *Service) List(ctx context.Context, listBooks *ListBooks) (Page, error) {
	bsons, err := s.store.List(ctx, listBooks)
	if err != nil {
		return Page{}, err
	}

	books := make([]Book, 0)
	for _, m := range bsons {

		bsonBytes, err := bson.Marshal(m)
		if err != nil {
			return Page{}, err
		}

		book := new(Book)
		if err = bson.Unmarshal(bsonBytes, &book); err != nil {
			return Page{}, err
		}

		books = append(books, *book)
	}

	page := NewPage(books, listBooks.Limit, listBooks.Offset, int64(666))
	return *page, nil
}
