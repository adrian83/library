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
		CreationDate: bkg.CreationDate,
	}
}

func NewEntityFromCreateBookReq(req *CreateBookReq) *Entity {
	return &Entity{
		ID:           uuid.New().String(),
		Title:        req.Title,
		Authors:      req.Authors,
		CreationDate: time.Now().UTC(),
	}
}

func NewEntityFromUpdateBookReq(req *UpdateBookReq) *Entity {
	return &Entity{
		ID:      req.ID,
		Title:   req.Title,
		Authors: req.Authors,
	}
}

func NewEntityFromDoc(doc map[string]interface{}) (*Entity, error) {

	docBytes, err := bson.Marshal(doc)
	if err != nil {
		return nil, err
	}

	var entity Entity
	if err = bson.Unmarshal(docBytes, &entity); err != nil {
		return nil, err
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
	page := common.NewPage(limit, offset, total)
	return &BooksPage{
		Page:  page,
		Books: books,
	}
}

type CreateBookReq struct {
	Title   string
	Authors []string
}

func NewCreateBookReq(title string, authors []string) *CreateBookReq {
	return &CreateBookReq{
		Title:   title,
		Authors: authors,
	}
}

type UpdateBookReq struct {
	*CreateBookReq
	ID string
}

func NewUpdateBookReq(id, title string, authors []string) *UpdateBookReq {
	return &UpdateBookReq{
		CreateBookReq: NewCreateBookReq(title, authors),
		ID:            id,
	}
}

type Book struct {
	ID           string           `json:"id"`
	Title        string           `json:"title,omitempty"`
	Authors      []*author.Author `json:"authors,omitempty"`
	CreationDate time.Time        `json:"creationDate,omitempty"`
}

type Books []*Book

func NewBook(title string) *Book {
	return NewBookWithID(uuid.New().String(), title)
}

func NewBookWithID(id, title string) *Book {
	return &Book{
		ID:           id,
		Title:        title,
		Authors:      nil,
		CreationDate: time.Now().UTC(),
	}
}

func NewBookFromEntity(entity *Entity) *Book {
	return &Book{
		ID:           entity.ID,
		Title:        entity.Title,
		Authors:      nil,
		CreationDate: entity.CreationDate,
	}
}
