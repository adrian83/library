package book

import (
	"context"
	"fmt"

	"go.mongodb.org/mongo-driver/bson"

	"github.com/adrian83/library/pkg/author"
	"github.com/adrian83/library/pkg/common"
)

type authorService interface {
	FindAuthorsByIDs(context.Context, []string) (map[string]*author.Author, error)
}

type bookStore interface {
	InsertOne(context.Context, interface{}) error
	List(context.Context, bson.D, int64, int64) ([]map[string]interface{}, error)
	FindOne(context.Context, string, interface{}) error
	UpdateOne(ctx context.Context, id string, update interface{}) error
	Count(ctx context.Context, filter interface{}) (int64, error)
	DeleteOne(ctx context.Context, bookID string) error
}

func NewService(bookStore bookStore, authorService authorService) *Service {
	return &Service{
		store:         bookStore,
		authorService: authorService,
	}
}

type Service struct {
	store         bookStore
	authorService authorService
}

func (s *Service) Persist(ctx context.Context, createBookReq *CreateBookReq) (*Book, error) {
	entity := NewEntityFromCreateBookReq(createBookReq)

	if err := s.store.InsertOne(ctx, &entity); err != nil {
		return nil, err
	}

	if len(entity.Authors) == 0 {
		return NewBookFromEntity(entity), nil
	}

	authorsMap, err := s.authorService.FindAuthorsByIDs(ctx, entity.Authors)
	if err != nil {
		return nil, err
	}

	authors := make([]*author.Author, 0)
	for _, author := range authorsMap {
		authors = append(authors, author)
	}

	book := NewBookFromEntity(entity)
	book.Authors = authors

	return book, nil
}

func (s *Service) Update(ctx context.Context, book *Book) error {
	entity := NewEntityFromBook(book)
	return s.store.UpdateOne(ctx, entity.ID, entity)
}

func (s *Service) Delete(ctx context.Context, bookID string) error {
	return s.store.DeleteOne(ctx, bookID)
}

func (s *Service) Find(ctx context.Context, id string) (*Book, error) {
	var entity Entity
	if err := s.store.FindOne(ctx, id, &entity); err != nil {
		return nil, err
	}

	book := NewBookFromEntity(&entity)

	if len(entity.Authors) == 0 {
		return book, nil
	}

	authorsMap, err := s.authorService.FindAuthorsByIDs(ctx, entity.Authors)
	if err != nil {
		return nil, err
	}

	authors := make([]*author.Author, 0)
	for _, author := range authorsMap {
		authors = append(authors, author)
	}

	book.Authors = authors

	return book, nil
}

func (s *Service) List(ctx context.Context, listBooks *common.ListRequest) (*BooksPage, error) {

	filter := bson.D{}

	maps, err := s.store.List(ctx, filter, listBooks.Offset, listBooks.Limit)
	if err != nil {
		return nil, err
	}

	fmt.Printf("Maps: %v", maps)

	entities := make([]*Entity, 0)
	for _, m := range maps {

		entity, err := NewEntityFromDoc(m)
		if err != nil {
			return nil, err
		}

		entities = append(entities, entity)
	}

	authorsMap, err := s.findAuthors(ctx, entities)
	if err != nil {
		return nil, err
	}

	books := make([]*Book, 0)
	for _, e := range entities {

		authors := s.selectAuthors(authorsMap, e.Authors)

		book := NewBookFromEntity(e)
		book.Authors = authors

		books = append(books, book)
	}

	count, err := s.store.Count(ctx, filter)
	if err != nil {
		return nil, err
	}

	page := NewBooksPage(books, listBooks.Limit, listBooks.Offset, count)
	return page, nil
}

func (s *Service) selectAuthors(authorsMap map[string]*author.Author, authorIDs []string) []*author.Author {

	authors := make([]*author.Author, 0)
	for _, authorID := range authorIDs {
		author, ok := authorsMap[authorID]
		if ok {
			authors = append(authors, author)
		}
	}
	return authors
}

func (s *Service) findAuthors(ctx context.Context, entities []*Entity) (map[string]*author.Author, error) {

	idsMap := make(map[string]bool)
	for _, b := range entities {
		for _, aID := range b.Authors {
			idsMap[aID] = true
		}
	}

	ids := make([]string, 0)
	for id := range idsMap {
		ids = append(ids, id)
	}

	authors, err := s.authorService.FindAuthorsByIDs(ctx, ids)
	if err != nil {
		return nil, err
	}

	return authors, nil
}
