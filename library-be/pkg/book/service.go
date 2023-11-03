package book

import (
	"context"
	"errors"
	"fmt"

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
	FindAuthorsByIDs(context.Context, []string) ([]*author.Author, error)
}

type bookRepository interface {
	PersistBook(context.Context, *Entity) error
	UpdateBook(context.Context, *Entity) error
	DeleteBook(context.Context, string) error
	FindBook(context.Context, string) (*Entity, error)
	ListBooks(context.Context, int64, int64) ([]*Entity, error)
	CountAllBooks(context.Context) (int64, error)
}

// NewService is a constructor for the Service.
func NewService(repository bookRepository, authorService authorService, logger logger) *Service {
	return &Service{
		repository:    repository,
		authorService: authorService,
		logger:        logger,
	}
}

// Service exposes author related functionality.
type Service struct {
	repository    bookRepository
	authorService authorService
	logger        logger
}

// Persist stores book and authors into database.
func (s *Service) Persist(ctx context.Context, createBookReq *CreateBookCommand) (*Book, error) {
	s.logger.Infof("new persisting book request: %v", createBookReq)

	entity := NewEntity(
		common.NewID(),
		createBookReq.Title,
		createBookReq.Description,
		createBookReq.ISBN,
		nil,
		common.NowUTC(),
	)

	if err := s.repository.PersistBook(ctx, entity); err != nil {
		return nil, s.handleError(fmt.Errorf("cannot inser book, error: %w", err))
	}

	book := NewBookFromEntity(entity)

	s.logger.Infof("persisted book: %v", book)

	return book, nil
}

// Update updates book in database.
func (s *Service) Update(ctx context.Context, updateBookReq *UpdateBookCommand) error {
	s.logger.Infof("new updating book request: %v", updateBookReq)

	entity := NewEntity(
		updateBookReq.ID,
		updateBookReq.Title,
		updateBookReq.Description,
		updateBookReq.ISBN,
		updateBookReq.Authors,
		common.NowUTC(),
	)

	if err := s.repository.UpdateBook(ctx, entity); err != nil {
		return s.handleError(fmt.Errorf("cannot update book, error: %w", err))
	}

	s.logger.Info("book updated successfully")

	return nil
}

func (s *Service) Delete(ctx context.Context, bookID string) error {
	s.logger.Infof("deleting book with id: %v", bookID)

	if err := s.repository.DeleteBook(ctx, bookID); err != nil {
		return s.handleError(fmt.Errorf("cannot delete book, error: %w", err))
	}

	s.logger.Info("book deleted successfully")

	return nil
}

func (s *Service) Find(ctx context.Context, id string) (*Book, error) {
	s.logger.Infof("getting book with id: %v", id)

	entity, err := s.repository.FindBook(ctx, id)
	if err != nil {
		return nil, s.handleError(fmt.Errorf("cannot find book, error: %w", err))
	}

	book := NewBookFromEntity(entity)

	s.logger.Infof("found book: %v", book)

	if len(entity.Authors) == 0 {
		return book, nil
	}

	authors, err := s.authorService.FindAuthorsByIDs(ctx, entity.Authors)
	if err != nil {
		return nil, s.handleError(fmt.Errorf("cannod find authors by ids, error: %w", err))
	}

	book.Authors = authors

	s.logger.Infof("found book with authors: %v", book)

	return book, nil
}

func (s *Service) List(ctx context.Context, listReq *common.ListRequest) (*BooksPage, error) {
	s.logger.Infof("listing books with parameters: %v", listReq)

	entities, err := s.repository.ListBooks(ctx, listReq.Offset, listReq.Limit)
	if err != nil {
		return nil, s.handleError(fmt.Errorf("cannot list books, error: %w", err))
	}

	authorIDs := make([]string, 0)
	for _, bookEntity := range entities {
		authorIDs = append(authorIDs, bookEntity.Authors...)
	}

	authorEntities, err := s.authorService.FindAuthorsByIDs(ctx, authorIDs)
	if err != nil {
		return nil, s.handleError(fmt.Errorf("cannot find authors, error: %w", err))
	}

	authorsMap := make(map[string]*author.Author)
	for _, authorStr := range authorEntities {
		authorsMap[authorStr.ID] = authorStr
	}

	books := make([]*Book, 0)
	for _, bookEntity := range entities {
		bookAuthors := make([]*author.Author, 0)
		for _, authorID := range bookEntity.Authors {
			authorStr, ok := authorsMap[authorID]
			if ok {
				bookAuthors = append(bookAuthors, authorStr)
			}
		}

		book := NewBookFromEntity(bookEntity)
		book.Authors = bookAuthors

		books = append(books, book)
	}

	count, err := s.repository.CountAllBooks(ctx)
	if err != nil {
		return nil, s.handleError(fmt.Errorf("cannot get books count, error: %w", err))
	}

	page := NewBooksPage(books, listReq.Limit, listReq.Offset, count)

	s.logger.Infof("found books list: %v", page)

	return page, nil
}

func (s *Service) handleError(err error) error {
	if errors.Is(err, storage.ErrNotFound) {
		return fmt.Errorf("cannot find book, error: %w", errs.NewAuthorNotFoundErr())
	}

	return err
}
