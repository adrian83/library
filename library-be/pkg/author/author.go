package author

import (
	"time"

	"github.com/adrian83/library/pkg/common"
	"github.com/google/uuid"

	"go.mongodb.org/mongo-driver/bson"
)

type Entity struct {
	ID           string    `bson:"_id,omitempty"`
	Name         string    `bson:"name,omitempty"`
	Description  string    `bson:"description,omitempty"`
	CreationDate time.Time `bson:"creationDate,omitempty"`
}

func NewEntity(athr *Author) *Entity {
	return &Entity{
		ID:           athr.ID,
		Name:         athr.Name,
		Description:  athr.Description,
		CreationDate: athr.CreationDate,
	}
}

func NewEntityFromCreateAuthorReq(req *CreateAuthorReq) *Entity {
	return &Entity{
		ID:           uuid.New().String(),
		Name:         req.Name,
		Description:  req.Description,
		CreationDate: time.Now().UTC(),
	}
}

func NewEntityFromUpdateAuthorReq(req *UpdateAuthorReq) *Entity {
	return &Entity{
		ID:           req.ID,
		Name:         req.Name,
		Description:  req.Description,
		CreationDate: time.Now().UTC(),
	}
}

func NewEntityFromDoc(doc map[string]interface{}) (*Entity, error) {
	docBytes, err := bson.Marshal(doc)
	if err != nil {
		return nil, err
	}

	var entity Entity
	if err := bson.Unmarshal(docBytes, &entity); err != nil {
		return nil, err
	}

	return &entity, nil
}

type Author struct {
	ID           string    `json:"id"`
	Name         string    `json:"name,omitempty"`
	Description  string    `json:"description,omitempty"`
	CreationDate time.Time `json:"creationDate,omitempty"`
}

func NewAuthor(name, desc string) *Author {
	return NewAuthorWithID(uuid.New().String(), name, desc)
}

func NewAuthorFromEntity(entity *Entity) *Author {
	return &Author{
		ID:           entity.ID,
		Name:         entity.Name,
		Description:  entity.Description,
		CreationDate: entity.CreationDate,
	}
}

func NewAuthorWithID(id, name, desc string) *Author {
	return &Author{
		ID:           id,
		Name:         name,
		Description:  desc,
		CreationDate: time.Now().UTC(),
	}
}

type Authors []*Author

type AuthorsPage struct {
	*common.Page
	Authors Authors `json:"authors"`
}

func NewAuthorsPage(authors Authors, limit, offset, total int64) *AuthorsPage {
	return &AuthorsPage{
		Page:    common.NewPage(limit, offset, total),
		Authors: authors,
	}
}

type CreateAuthorReq struct {
	Name        string
	Description string
}

func NewCreateAuthorReq(name, desc string) *CreateAuthorReq {
	return &CreateAuthorReq{
		Name:        name,
		Description: desc,
	}
}

type UpdateAuthorReq struct {
	*CreateAuthorReq
	ID string
}

func NewUpdateAuthorReq(id, name, desc string) *UpdateAuthorReq {
	return &UpdateAuthorReq{
		CreateAuthorReq: NewCreateAuthorReq(name, desc),
		ID:              id,
	}
}
