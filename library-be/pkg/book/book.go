package book

import (
	"fmt"
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

func NewEntity(id, title, desc, isbn string, authors []string, date time.Time) *Entity {
	return &Entity{
		ID:           id,
		Title:        title,
		Description:  desc,
		ISBN:         isbn,
		Authors:      authors,
		CreationDate: date,
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

func (bp *BooksPage) String() string {
	return fmt.Sprintf("BooksPage {page: %s, books: %s}", bp.Page, bp.Books)
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

func (cbr *CreateBookReq) String() string {
	return fmt.Sprintf("CreateBookReq {title: %s, desc: %s, isbn: %s}", cbr.Title, cbr.Description, cbr.ISBN)
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

func (ubr *UpdateBookReq) String() string {
	return fmt.Sprintf("UpdateBookReq {id: %s, title: %s, desc: %s, isbn: %s, authors: %s}", ubr.ID,
		ubr.CreateBookReq.Title, ubr.CreateBookReq.Description, ubr.CreateBookReq.ISBN, ubr.Authors)
}

func NewUpdateBookReq(id, title, desc, isbn string, authors []string) *UpdateBookReq {
	return &UpdateBookReq{
		CreateBookReq: NewCreateBookReq(title, desc, isbn),
		ID:            id,
		Authors:       authors,
	}
}

type Book struct {
	ID           string         `json:"id"`
	Title        string         `json:"title,omitempty"`
	Description  string         `json:"description,omitempty"`
	ISBN         string         `json:"isbn,omitempty"`
	Authors      author.Authors `json:"authors,omitempty"`
	CreationDate time.Time      `json:"creationDate,omitempty"`
}

func (b *Book) String() string {
	return fmt.Sprintf("Book {id: %s, title: %s, desc: %s, isbn: %s, created: %s, authors: %s}", b.ID,
		b.Title, b.Description, b.ISBN, b.CreationDate, b.Authors)
}

type Books []*Book

func NewBooks(books ...*Book) Books {
	return books
}

func NewBook(title, desc, isbn string, authors author.Authors) *Book {
	return NewBookWithID(uuid.New().String(), title, desc, isbn, authors)
}

func NewBookWithID(id, title, desc, isbn string, authors author.Authors) *Book {
	return &Book{
		ID:           id,
		Title:        title,
		Description:  desc,
		ISBN:         isbn,
		Authors:      authors,
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
