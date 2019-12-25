package book

import (
	"context"
	"fmt"

	"go.mongodb.org/mongo-driver/bson"

	"github.com/adrian83/library/pkg/common"
)

type bookStore interface {
	InsertOne(context.Context, interface{}) error
	List(context.Context, bson.D) ([]map[string]interface{}, error)
	FindOne(context.Context, string, interface{}) error
	UpdateOne(ctx context.Context, id string, update interface{}) error
	Count(ctx context.Context, filter interface{}) (int64, error)
	DeleteOne(ctx context.Context, bookID string) error
}

func NewService(bookStore bookStore) *Service {
	return &Service{
		store: bookStore,
	}
}

type Service struct {
	store bookStore
}

func (s *Service) Persist(ctx context.Context, book *Book) error {
	return s.store.InsertOne(ctx, &book)
}

func (s *Service) Update(ctx context.Context, book *Book) error {
	return s.store.UpdateOne(ctx, book.ID, book)
}

func (s *Service) Delete(ctx context.Context, bookID string) error {
	return s.store.DeleteOne(ctx, bookID)
}

func (b *Service) Find(ctx context.Context, id string) (*Book, error) {
	var book Book
	if err := b.store.FindOne(ctx, id, &book); err != nil {
		return nil, err
	}

	return &book, nil
}

func (s *Service) List(ctx context.Context, listBooks *common.ListRequest) (*BooksPage, error) {

	filter := bson.D{}

	maps, err := s.store.List(ctx, filter)
	if err != nil {
		return nil, err
	}

	fmt.Printf("Maps: %v", maps)

	books := make([]*Book, 0)
	for _, m := range maps {

		bookBytes, err := bson.Marshal(m)
		if err != nil {
			return nil, err
		}

		var book Book
		if err = bson.Unmarshal(bookBytes, &book); err != nil {
			return nil, err
		}

		books = append(books, &book)
	}

	count, err := s.store.Count(ctx, filter)
	if err != nil {
		return nil, err
	}

	page := NewBooksPage(books, listBooks.Limit, listBooks.Offset, count)
	return page, nil
}
