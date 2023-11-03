package author

import (
	"fmt"
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

func (e *Entity) DocID() string {
	return e.ID
}

func (e *Entity) Empty() bool {
	return e.ID == "" && e.Name == "" && e.Description == "" && time.Time.IsZero(e.CreationDate)
}

func NewEntity(id, name, desc string, date time.Time) *Entity {
	return &Entity{
		ID:           id,
		Name:         name,
		Description:  desc,
		CreationDate: date,
	}
}

func NewEntityFromDoc(doc map[string]interface{}) (*Entity, error) {
	docBytes, err := bson.Marshal(doc)
	if err != nil {
		return nil, err
	}

	var entity Entity
	if err := bson.Unmarshal(docBytes, &entity); err != nil {
		return nil, fmt.Errorf("cannot unmarshal author Entity from bytes, error: %w", err)
	}

	return &entity, nil
}

type Author struct {
	ID           string    `json:"id"`
	Name         string    `json:"name,omitempty"`
	Description  string    `json:"description,omitempty"`
	CreationDate time.Time `json:"creationDate,omitempty"`
}

func (a *Author) String() string {
	return fmt.Sprintf("Author {id: %s, name: %s, desc: %s, created: %s}", a.ID, a.Name, a.Description, a.CreationDate)
}

func NewAuthor(name, desc string) *Author {
	return NewAuthorWithID(uuid.New().String(), name, desc)
}

func NewAuthorFromEntity(entity *Entity) *Author {
	return &Author{
		ID:           entity.DocID(),
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

func (as Authors) IDs() []string {
	if as == nil {
		return nil
	}

	ids := make([]string, len(as))
	for i, a := range as {
		ids[i] = a.ID
	}

	return ids
}

func NewAuthors(authors ...*Author) Authors {
	return authors
}

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

type CreateAuthorCommand struct {
	Name        string
	Description string
}

func NewCreateAuthorCommand(name, desc string) *CreateAuthorCommand {
	return &CreateAuthorCommand{
		Name:        name,
		Description: desc,
	}
}

type UpdateAuthorCommand struct {
	*CreateAuthorCommand
	ID string
}

func NewUpdateAuthorCommand(id, name, desc string) *UpdateAuthorCommand {
	return &UpdateAuthorCommand{
		CreateAuthorCommand: NewCreateAuthorCommand(name, desc),
		ID:                  id,
	}
}
