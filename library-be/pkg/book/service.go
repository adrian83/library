package book

import (
	"context"
	"fmt"

	"go.mongodb.org/mongo-driver/bson"
)

type bookStore interface {
	InsertOne(context.Context, interface{}) error
	List(context.Context, bson.D) ([]map[string]interface{}, error)
	FindOne(context.Context, string, interface{}) error
	UpdateOne(ctx context.Context, id string, update interface{}) error
	Count(ctx context.Context, filter interface{}) (int64, error)
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

	filter := bson.D{}

	maps, err := s.store.List(ctx, filter)
	if err != nil {
		return Page{}, err
	}

	fmt.Printf("Maps: %v", maps)

	books := make([]Book, 0)
	for _, m := range maps {

		bookBytes, err := bson.Marshal(m)
		if err != nil {
			return Page{}, err
		}

		book := new(Book)
		if err = bson.Unmarshal(bookBytes, &book); err != nil {
			return Page{}, err
		}

		books = append(books, *book)
	}

	count, err  := s.store.Count(ctx, filter)
	if err != nil {
		return Page{}, err
	}

	page := NewPage(books, listBooks.Limit, listBooks.Offset, count)
	return *page, nil
}
