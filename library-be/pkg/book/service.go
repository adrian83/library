package book

import (
	"context"
	"fmt"

	"go.mongodb.org/mongo-driver/bson"
)

type bookStore interface {
	InsertOne(context.Context, interface{}) error
	List(context.Context, bson.D) ([]bson.M, error)
	FindOne(context.Context, string, interface{}) error
	UpdateOne(ctx context.Context, id string, update interface{}) error
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
	return s.store.InsertOne(ctx, &book)
}

func (s *Service) Update(ctx context.Context, book Book) error {
	return s.store.UpdateOne(ctx, book.ID,book)
}

func (b *Service) Find(ctx context.Context, id string) (Book, error) {
	book := new(Book)

	if err := b.store.FindOne(ctx, id, book); err != nil {
		return Book{}, err
	}
	return *book, nil
}

func (s *Service) List(ctx context.Context, listBooks *ListBooks) (Page, error) {
	bsons, err := s.store.List(ctx, bson.D{})
	if err != nil {
		return Page{}, err
	}

	fmt.Printf("Bsons: %v", bsons)

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
