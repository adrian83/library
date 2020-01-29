package author

import (
	"context"
	"fmt"

	"go.mongodb.org/mongo-driver/bson"

	"github.com/adrian83/library/pkg/common"
)

const (
	zeroOffset         int64 = 0
	maxAuthorsPageSize int64 = 10000
)


type logger interface {
	Infof(string, ...interface{})
	Info(...interface{})
}

type authorStore interface {
	InsertOne(context.Context, interface{}) error
	List(context.Context, bson.D, int64, int64) ([]map[string]interface{}, error)
	FindOne(context.Context, string, interface{}) error
	UpdateOne(context.Context, string, interface{}) error
	Count(context.Context, interface{}) (int64, error)
	DeleteOne(context.Context, string) error
}

type Service struct {
	store authorStore
	logger logger
}

func NewService(authorStore authorStore, logger logger) *Service {
	return &Service{
		store: authorStore,
		logger: logger,
	}
}

func (s *Service) Persist(ctx context.Context, createAuthorReq *CreateAuthorReq) (*Author, error) {
	s.logger.Infof("new persisting author request: %v", createAuthorReq)

	entity := NewEntityFromCreateAuthorReq(createAuthorReq)
	if err := s.store.InsertOne(ctx, &entity); err != nil {
		return nil, fmt.Errorf("cannot insert author, error: %w", err)
	}

	author := NewAuthorFromEntity(entity)

	s.logger.Infof("persisted author: %v", author)

	return author, nil
}

func (s *Service) Update(ctx context.Context, updateAuthorReq *UpdateAuthorReq) error {
	s.logger.Infof("new updating author request: %v", updateAuthorReq)

	entity := NewEntityFromUpdateAuthorReq(updateAuthorReq)
	if err := s.store.UpdateOne(ctx, entity.ID, entity); err != nil {
		return fmt.Errorf("cannot update author, error: %w", err)
	}

	s.logger.Info("author updated successfully")

	return nil
}

func (s *Service) Delete(ctx context.Context, authorID string) error {
	s.logger.Infof("deleting author with id: %v", authorID)

	if err := s.store.DeleteOne(ctx, authorID); err != nil {
		return fmt.Errorf("cannot delete author, error: %w", err)
	}

	s.logger.Info("author deleted successfully")

	return nil
}

func (s *Service) Find(ctx context.Context, id string) (*Author, error) {
	s.logger.Infof("getting author with id: %v", id)

	var entity Entity
	if err := s.store.FindOne(ctx, id, &entity); err != nil {
		return nil, fmt.Errorf("cannot find author, error: %w", err)
	}

	author := NewAuthorFromEntity(&entity)

	s.logger.Infof("found author: %v", author)

	return author, nil
}


func (s *Service) FindAuthorsByIDs(ctx context.Context, ids []string) (map[string]*Author, error) {
	s.logger.Infof("getting authors with ids: %v", ids)
	
	criteria := bson.D{{
		"_id",
		bson.D{{
			"$in",
			ids,
		}},
	}}

	maps, err := s.store.List(ctx, criteria, zeroOffset, maxAuthorsPageSize)
	if err != nil {
		return nil, fmt.Errorf("cannot list authors, error: %w", err)
	}

	authorsMap := make(map[string]*Author)

	for _, m := range maps {
		entity, err := NewEntityFromDoc(m)
		if err != nil {
			return nil, fmt.Errorf("cannot transform document to entity, error: %w", err)
		}

		author := NewAuthorFromEntity(entity)
		authorsMap[author.ID] = author
	}

	s.logger.Infof("found authors: %v", authorsMap)

	return authorsMap, nil
}

func (s *Service) mapsToAuthors(maps []map[string]interface{}) ([]*Author, error) {
	authors := make([]*Author, 0)

	for _, m := range maps {
		entity, err := NewEntityFromDoc(m)
		if err != nil {
			return nil, err
		}

		author := NewAuthorFromEntity(entity)
		authors = append(authors, author)
	}

	return authors, nil
}

func (s *Service) List(ctx context.Context, listAuthors *common.ListRequest) (*AuthorsPage, error) {
	filter := bson.D{}

	maps, err := s.store.List(ctx, filter, listAuthors.Offset, listAuthors.Limit)
	if err != nil {
		return nil, err
	}

	fmt.Printf("Maps: %v", maps)

	authors, err := s.mapsToAuthors(maps)
	if err != nil {
		return nil, err
	}

	count, err := s.store.Count(ctx, filter)
	if err != nil {
		return nil, err
	}

	page := NewAuthorsPage(authors, listAuthors.Limit, listAuthors.Offset, count)

	return page, nil
}
