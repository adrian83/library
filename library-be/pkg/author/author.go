package author

import (
	"time"

	"github.com/adrian83/library/pkg/common"
	"github.com/google/uuid"
)

type Author struct {
	ID           string    `json:"id" bson:"_id,omitempty"`
	Name         string    `json:"name,omitempty" bson:"name,omitempty"`
	CreationDate time.Time `json:"creationDate,omitempty" bson:"creationDate,omitempty"`
}

func NewAuthor(name string) *Author {
	return NewAuthorWithID(uuid.New().String(), name)
}

func NewAuthorWithID(id, name string) *Author {
	return &Author{
		ID:           id,
		Name:         name,
		CreationDate: time.Now().UTC(),
	}
}

type Authors []*Author

type AuthorsPage struct {
	*common.Page
	Authors Authors `json:"total"`
}

func NewAuthorsPage(authors Authors, limit, offset int, total int64) *AuthorsPage {
	page := common.NewPage(limit, offset, total)
	return &AuthorsPage{
		Page:    page,
		Authors: authors,
	}
}
