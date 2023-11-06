package author

import (
	"context"
	"errors"
	"fmt"

	"github.com/adrian83/library/pkg/common"
	"github.com/adrian83/library/pkg/errs"
	"github.com/adrian83/library/pkg/storage"
)

const (
	zeroOffset int64 = 0
)

type logger interface {
	Infof(string, ...interface{})
	Info(...interface{})
}

type authorRepository interface {
	PersistAuthor(context.Context, *Entity) error
	UpdateAuthor(context.Context, *Entity) error
	DeleteAuthor(context.Context, string) error
	FindAuthor(context.Context, string) (*Entity, error)
	FindAuthorsByIDs(context.Context, []string) ([]*Entity, error)
	ListAuthors(context.Context, int64, int64) ([]*Entity, error)
	CountAllAuthors(context.Context) (int64, error)
}

type Service struct {
	repository authorRepository
	logger     logger
}

func NewService(authorRepository authorRepository, logger logger) *Service {
	return &Service{
		repository: authorRepository,
		logger:     logger,
	}
}

func (s *Service) Persist(ctx context.Context, command *CreateAuthorCommand) (*Author, error) {
	s.logger.Infof("persist author command: %v", command)

	entity := NewEntity(
		common.NewID(),
		command.Name,
		command.Description,
		common.NowUTC(),
	)

	if err := s.repository.PersistAuthor(ctx, entity); err != nil {
		return nil, s.handleError(fmt.Errorf("cannot persist author, error: %w", err))
	}

	author := NewAuthorFromEntity(entity)

	s.logger.Infof("author persisted successfully: %v", author)

	return author, nil
}

func (s *Service) Update(ctx context.Context, command *UpdateAuthorCommand) error {
	s.logger.Infof("update author command: %v", command)

	entity := NewEntity(
		command.ID,
		command.Name,
		command.Description,
		common.NowUTC(),
	)

	if err := s.repository.UpdateAuthor(ctx, entity); err != nil {
		return s.handleError(fmt.Errorf("cannot update author, error: %w", err))
	}

	s.logger.Info("author updated successfully")

	return nil
}

func (s *Service) Delete(ctx context.Context, command *DeleteAuthorCommand) error {
	s.logger.Infof("delete author command: %v", command)

	if err := s.repository.DeleteAuthor(ctx, command.ID); err != nil {
		return s.handleError(fmt.Errorf("cannot delete author, error: %w", err))
	}

	s.logger.Info("author deleted successfully")

	return nil
}

func (s *Service) Find(ctx context.Context, query *FindAuthorQuery) (*Author, error) {
	s.logger.Infof("find author query: %v", query)

	entity, err := s.repository.FindAuthor(ctx, query.ID)
	if err != nil {
		return nil, s.handleError(fmt.Errorf("cannot find author, error: %w", err))
	}

	author := NewAuthorFromEntity(entity)

	s.logger.Infof("author found successfully: %v", author)

	return author, nil
}

func (s *Service) FindAuthorsByIDs(ctx context.Context, query *FindAuthorsQuery) ([]*Author, error) {
	s.logger.Infof("find authors query: %v", query.IDs)

	entities, err := s.repository.FindAuthorsByIDs(ctx, query.IDs)
	if err != nil {
		return nil, s.handleError(fmt.Errorf("cannot get authors, error: %w", err))
	}

	authors := make([]*Author, len(entities))
	for i, entity := range entities {
		author := NewAuthorFromEntity(entity)
		authors[i] = author
	}

	s.logger.Infof("authors found successfully: %v", authors)

	return authors, nil
}

func (s *Service) List(ctx context.Context, query *ListAuthorsQuery) (*AuthorsPage, error) {
	s.logger.Infof("list authors query: %v", query)

	entities, err := s.repository.ListAuthors(ctx, query.Offset, query.Limit)
	if err != nil {
		return nil, s.handleError(fmt.Errorf("cannot list authors, error: %w", err))
	}

	authors := make([]*Author, len(entities))
	for i, entity := range entities {
		authors[i] = NewAuthorFromEntity(entity)
	}

	count, err := s.repository.CountAllAuthors(ctx)
	if err != nil {
		return nil, s.handleError(fmt.Errorf("cannot get authors count, error: %w", err))
	}

	page := NewAuthorsPage(authors, query.Limit, query.Offset, count)

	s.logger.Infof("authors listed successfully: %v", page)

	return page, nil
}

func (s *Service) handleError(err error) error {
	if errors.Is(err, storage.ErrNotFound) {
		return fmt.Errorf("cannot find author, error: %w", errs.NewAuthorNotFoundErr())
	}

	return err
}
