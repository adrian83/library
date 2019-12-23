package book

import (
	"time"

	"github.com/adrian83/library/pkg/common"
	"github.com/google/uuid"
	
	"go.mongodb.org/mongo-driver/bson"
)

// BooksPage is a structure that contains slice of Books and some data regarding that slice.
type BooksPage struct {
	*common.Page
	Books Books `json:"books"`
}

// NewBooksPage is a constructor for BooksPage.
func NewBooksPage(books Books, limit, offset int, total int64) *BooksPage {
	page := common.NewPage(limit, offset, total)
	return &BooksPage{
		Page:  page,
		Books: books,
	}
}

type Book struct {
	ID    string `json:"id" bson:"_id,omitempty"`
	Title string `json:"title,omitempty" bson:"title,omitempty"`
	//Authors      []Author  `json:"authors,omitempty" bson:"authors,omitempty"`
	CreationDate time.Time `json:"creationDate,omitempty" bson:"creationDate,omitempty"`
}

type Books []*Book

func NewBook(title string) *Book {
	return NewBookWithID(uuid.New().String(), title)
}

func NewBookWithID(id, title string) *Book {
	return &Book{
		ID:           id,
		Title:        title,
		//Authors:      make([]Author, 0),
		CreationDate: time.Now().UTC(),
	}
}

func NewBookFromDoc(doc map[string]interface{}) (*Book, error) {

	docBytes, err := bson.Marshal(doc)
	if err != nil {
		return nil, err
	}

	var book Book
	if err = bson.Unmarshal(docBytes, &book); err != nil {
		return nil, err
	}

	return &book, nil
}
