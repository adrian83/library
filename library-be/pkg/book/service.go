package book

import (
	"context"
	"errors"
	"fmt"

	"go.mongodb.org/mongo-driver/bson"

	"github.com/adrian83/library/pkg/author"
	"github.com/adrian83/library/pkg/common"
	"github.com/adrian83/library/pkg/errs"
	"github.com/adrian83/library/pkg/storage"
)

type logger interface {
	Infof(string, ...interface{})
	Info(...interface{})
}

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

// NewService is a constructor for the Service.
func NewService(bookStore bookStore, authorService authorService, logger logger) *Service {
	return &Service{
		store:         bookStore,
		authorService: authorService,
		logger:        logger,
	}
}

// Service exposes author related functionality.
type Service struct {
	store         bookStore
	authorService authorService
	logger        logger
}

// Persist stores book and authors into database.
func (s *Service) Persist(ctx context.Context, createBookReq *CreateBookReq) (*Book, error) {
	s.logger.Infof("new persisting book request: %v", createBookReq)

	entity := NewEntityFromCreateBookReq(createBookReq)

	if err := s.store.InsertOne(ctx, &entity); err != nil {
		return nil, s.handleError(fmt.Errorf("cannot inser book, error: %w", err))
	}

	if len(entity.Authors) == 0 {
		return NewBookFromEntity(entity), nil
	}

	authorsMap, err := s.authorService.FindAuthorsByIDs(ctx, entity.Authors)
	if err != nil {
		return nil, s.handleError(fmt.Errorf("cannot find authors by ids, error: %w", err))
	}

	authors := make([]*author.Author, 0)
	for _, author := range authorsMap {
		authors = append(authors, author)
	}

	book := NewBookFromEntity(entity)
	book.Authors = authors

	s.logger.Infof("persisted book: %v", book)

	return book, nil
}

// Update updates book in database.
func (s *Service) Update(ctx context.Context, updateBookReq *UpdateBookReq) error {
	s.logger.Infof("new updating book request: %v", updateBookReq)

	entity := NewEntityFromUpdateBookReq(updateBookReq)
	if err := s.store.UpdateOne(ctx, entity.ID, entity); err != nil {
		return s.handleError(fmt.Errorf("cannot update book, error: %w", err))
	}

	s.logger.Info("book updated successfully")

	return nil
}

func (s *Service) Delete(ctx context.Context, bookID string) error {
	s.logger.Infof("deleting book with id: %v", bookID)

	if err := s.store.DeleteOne(ctx, bookID); err != nil {
		return s.handleError(fmt.Errorf("cannot delete book, error: %w", err))
	}

	s.logger.Info("book deleted successfully")

	return nil
}

func (s *Service) Find(ctx context.Context, id string) (*Book, error) {
	s.logger.Infof("getting book with id: %v", id)

	var entity Entity
	if err := s.store.FindOne(ctx, id, &entity); err != nil {
		return nil, s.handleError(fmt.Errorf("cannot find book, error: %w", err))
	}

	book := NewBookFromEntity(&entity)

	s.logger.Infof("found book: %v", book)

	if len(entity.Authors) == 0 {
		return book, nil
	}

	authorsMap, err := s.authorService.FindAuthorsByIDs(ctx, entity.Authors)
	if err != nil {
		return nil, s.handleError(fmt.Errorf("cannod find authors by ids, error: %w", err))
	}

	authors := make([]*author.Author, 0)
	for _, author := range authorsMap {
		authors = append(authors, author)
	}

	book.Authors = authors

	s.logger.Infof("found book with authors: %v", book)

	return book, nil
}

func (s *Service) List(ctx context.Context, listReq *common.ListRequest) (*BooksPage, error) {
	s.logger.Infof("listing books with parameters: %v", listReq)

	filter := bson.D{}

	maps, err := s.store.List(ctx, filter, listReq.Offset, listReq.Limit)
	if err != nil {
		return nil, s.handleError(fmt.Errorf("cannot list books, error: %w", err))
	}

	entities := make([]*Entity, 0)
	for _, m := range maps {
		entity, eErr := NewEntityFromDoc(m)
		if eErr != nil {
			return nil, s.handleError(fmt.Errorf("cannot transform document to entity, error: %w", eErr))
		}

		entities = append(entities, entity)
	}

	authorsMap, err := s.findAuthors(ctx, entities)
	if err != nil {
		return nil, s.handleError(fmt.Errorf("cannot find authors, error: %w", err))
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
		return nil, s.handleError(fmt.Errorf("cannot get books count, error: %w", err))
	}

	page := NewBooksPage(books, listReq.Limit, listReq.Offset, count)

	s.logger.Infof("found books list: %v", page)

	return page, nil
}

func (s *Service) selectAuthors(authorsMap map[string]*author.Author, authorIDs []string) []*author.Author {
	authors := make([]*author.Author, 0)

	for _, authorID := range authorIDs {
		if athr, ok := authorsMap[authorID]; ok {
			authors = append(authors, athr)
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

func (s *Service) handleError(err error) error {
	if errors.Is(err, storage.ErrNotFound) {
		return fmt.Errorf("cannot find book, error: %w", errs.NewAuthorNotFoundErr())
	}

	return err
}
