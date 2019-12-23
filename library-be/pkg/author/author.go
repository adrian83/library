package author

import (
	"github.com/adrian83/library/pkg/common"
)

type Author struct {
	ID   string `json:"id" bson:"_id,omitempty"`
	Name string `json:"name,omitempty" bson:"name,omitempty"`
}

type Authors []*Author

type AuthorsPage struct {
	*common.Page
	Authors Authors `json:"total"`
}

func NewAuthorsPage(authors Authors, limit, offset int, total int64) *AuthorsPage {
	page := common.NewPage(limit, offset, total )
	return &AuthorsPage {
		Page: page,
		Authors: authors,
	}
}