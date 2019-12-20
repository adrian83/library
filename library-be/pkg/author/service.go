package author

import "context"

type authorStore interface {
	InsertOne(context.Context, interface{}) error
}

type Service struct {
	store authorStore
}

func NewService(authorStore authorStore) *Service {
	return &Service{
		store: authorStore,
	}
}

func (s *Service) Persist(ctx context.Context, author Author) error {
	return s.store.InsertOne(ctx, &author)
}
