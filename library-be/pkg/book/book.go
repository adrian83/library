package book

import (
	"time"

	"github.com/adrian83/library/pkg/author"
	"github.com/adrian83/library/pkg/common"
	"github.com/google/uuid"

	"go.mongodb.org/mongo-driver/bson"
)

type Entity struct {
	ID           string    `bson:"_id,omitempty"`
	Title        string    `bson:"title,omitempty"`
	Authors      []string  `bson:"authors,omitempty"`
	Description  string    `json:"description"`
	ISBN         string    `json:"isbn"`
	CreationDate time.Time `bson:"creationDate,omitempty"`
}

func NewEntityFromBook(bkg *Book) *Entity {
	ids := make([]string, len(bkg.Authors))
	for i := 0; i < len(bkg.Authors); i++ {
		ids[i] = bkg.Authors[i].ID
	}

	return &Entity{
		ID:           bkg.ID,
		Title:        bkg.Title,
		Authors:      ids,
		Description:  bkg.Description,
		ISBN:         bkg.ISBN,
		CreationDate: bkg.CreationDate,
	}
}

func NewEntityFromCreateBookReq(req *CreateBookReq) *Entity {
	return &Entity{
		ID:           uuid.New().String(),
		Title:        req.Title,
		Authors:      nil,
		Description:  req.Description,
		ISBN:         req.ISBN,
		CreationDate: time.Now().UTC(),
	}
}

func NewEntityFromUpdateBookReq(req *UpdateBookReq) *Entity {
	return &Entity{
		ID:          req.ID,
		Title:       req.Title,
		Authors:     req.Authors,
		Description: req.Description,
		ISBN:        req.ISBN,
	}
}

func NewEntityFromDoc(doc map[string]interface{}) (*Entity, error) {
	docBytes, err := bson.Marshal(doc)
	if err != nil {
		return nil, err
	}

	var entity Entity
	if uErr := bson.Unmarshal(docBytes, &entity); uErr != nil {
		return nil, uErr
	}

	return &entity, nil
}

// BooksPage is a structure that contains slice of Books and some data regarding that slice.
type BooksPage struct {
	*common.Page
	Books Books `json:"books"`
}

// NewBooksPage is a constructor for BooksPage.
func NewBooksPage(books Books, limit, offset, total int64) *BooksPage {
	return &BooksPage{
		Page:  common.NewPage(limit, offset, total),
		Books: books,
	}
}

type CreateBookReq struct {
	Title       string
	Description string
	ISBN        string
}

func NewCreateBookReq(title, desc, isbn string) *CreateBookReq {
	return &CreateBookReq{
		Title:       title,
		Description: desc,
		ISBN:        isbn,
	}
}

type UpdateBookReq struct {
	*CreateBookReq
	ID      string
	Authors []string
}

func NewUpdateBookReq(id, title, desc, isbn string, authors []string) *UpdateBookReq {
	return &UpdateBookReq{
		CreateBookReq: NewCreateBookReq(title, desc, isbn),
		ID:            id,
		Authors:       authors,
	}
}

type Book struct {
	ID           string           `json:"id"`
	Title        string           `json:"title,omitempty"`
	Description  string           `json:"description,omitempty"`
	ISBN         string           `json:"isbn,omitempty"`
	Authors      []*author.Author `json:"authors,omitempty"`
	CreationDate time.Time        `json:"creationDate,omitempty"`
}

type Books []*Book

func NewBook(title, desc, isbn string) *Book {
	return NewBookWithID(uuid.New().String(), title, desc, isbn)
}

func NewBookWithID(id, title, desc, isbn string) *Book {
	return &Book{
		ID:           id,
		Title:        title,
		Description:  desc,
		ISBN:         isbn,
		Authors:      nil,
		CreationDate: time.Now().UTC(),
	}
}

func NewBookFromEntity(entity *Entity) *Book {
	return &Book{
		ID:           entity.ID,
		Title:        entity.Title,
		Authors:      nil,
		Description:  entity.Description,
		ISBN:         entity.ISBN,
		CreationDate: entity.CreationDate,
	}
}
