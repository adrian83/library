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

func (s *Service) Persist(ctx context.Context, createAuthorReq *CreateAuthorCommand) (*Author, error) {
	s.logger.Infof("new persisting author request: %v", createAuthorReq)

	entity := NewEntity(
		common.NewID(),
		createAuthorReq.Name,
		createAuthorReq.Description,
		common.NowUTC(),
	)

	if err := s.repository.PersistAuthor(ctx, entity); err != nil {
		return nil, s.handleError(fmt.Errorf("cannot insert author, error: %w", err))
	}

	author := NewAuthorFromEntity(entity)

	s.logger.Infof("persisted author: %v", author)

	return author, nil
}

func (s *Service) Update(ctx context.Context, updateAuthorReq *UpdateAuthorCommand) error {
	s.logger.Infof("new updating author request: %v", updateAuthorReq)

	entity := NewEntity(
		updateAuthorReq.ID,
		updateAuthorReq.Name,
		updateAuthorReq.Description,
		common.NowUTC(),
	)

	if err := s.repository.UpdateAuthor(ctx, entity); err != nil {
		return s.handleError(fmt.Errorf("cannot update author, error: %w", err))
	}

	s.logger.Info("author updated successfully")

	return nil
}

func (s *Service) Delete(ctx context.Context, authorID string) error {
	s.logger.Infof("deleting author with id: %v", authorID)

	if err := s.repository.DeleteAuthor(ctx, authorID); err != nil {
		return s.handleError(fmt.Errorf("cannot delete author, error: %w", err))
	}

	s.logger.Info("author deleted successfully")

	return nil
}

func (s *Service) Find(ctx context.Context, id string) (*Author, error) {
	s.logger.Infof("getting author with id: %v", id)

	entity, err := s.repository.FindAuthor(ctx, id)
	if err != nil {
		return nil, s.handleError(fmt.Errorf("cannot find author, error: %w", err))
	}

	author := NewAuthorFromEntity(entity)

	s.logger.Infof("found author: %v", author)

	return author, nil
}

func (s *Service) FindAuthorsByIDs(ctx context.Context, ids []string) ([]*Author, error) {
	s.logger.Infof("getting authors with ids: %v", ids)

	entities, err := s.repository.FindAuthorsByIDs(ctx, ids)
	if err != nil {
		return nil, s.handleError(fmt.Errorf("cannot list authors, error: %w", err))
	}

	authors := make([]*Author, len(entities))
	for i, entity := range entities {
		author := NewAuthorFromEntity(entity)
		authors[i] = author
	}

	s.logger.Infof("found authors: %v", authors)

	return authors, nil
}

func (s *Service) List(ctx context.Context, listReq *common.ListRequest) (*AuthorsPage, error) {
	s.logger.Infof("listing authors with parameters: %v", listReq)

	entities, err := s.repository.ListAuthors(ctx, listReq.Offset, listReq.Limit)
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

	page := NewAuthorsPage(authors, listReq.Limit, listReq.Offset, count)

	s.logger.Infof("found authors list: %v", page)

	return page, nil
}

func (s *Service) handleError(err error) error {
	if errors.Is(err, storage.ErrNotFound) {
		return fmt.Errorf("cannot find author, error: %w", errs.NewAuthorNotFoundErr())
	}

	return err
}
