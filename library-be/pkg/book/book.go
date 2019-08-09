package book

import (
	"errors"
	"time"

	"github.com/google/uuid"
)

type ListBooks struct {
	Offset int
	Limit  int
	Sort   string
}

func NewListBooks(offset, limit int, sort string) *ListBooks {
	return &ListBooks{
		Offset: offset,
		Limit:  limit,
		Sort:   sort,
	}
}

type Page struct {
	Books  []Book `json:"books"`
	Limit  int    `json:"limit"`
	Offset int    `json:"offset"`
	Total  int64  `json:"total"`
}

func NewPage(books []Book, limit, offset int, total int64) *Page {
	return &Page{
		Books:  books,
		Limit:  limit,
		Offset: offset,
		Total:  total,
	}
}

// Author is a representation of author data.
type Author struct {
	ID   string `json:"id" bson:"id,omitempty"`
	Name string `json:"name,omitempty" bson:"name,omitempty"`
}

func NewAuthor(id, name string) *Author {
	return &Author{
		ID:   id,
		Name: name,
	}
}

type Book struct {
	ID           string    `json:"id" bson:"_id,omitempty"`
	Title        string    `json:"title,omitempty" bson:"title,omitempty"`
	Authors      []Author  `json:"authors,omitempty" bson:"authors,omitempty"`
	CreationDate time.Time `json:"creationDate,omitempty" bson:"creationDate,omitempty"`
}

func NewBook(title string) *Book {
	return &Book{
		ID:           uuid.New().String(),
		Title:        title,
		Authors:      make([]Author, 0),
		CreationDate: time.Now().UTC(),
	}
}

func (b *Book) AddAuthor(author Author) error {

	if author.ID == "" {
		author.ID = uuid.New().String()
	} else if _, a := b.findAuthor(author.ID); a != nil {
		return errors.New("author already added to book")
	}

	b.Authors = append(b.Authors, author)
	return nil
}

func (b *Book) RemoveAuthor(id string) error {

	i, _ := b.findAuthor(id)
	if i < 0 {
		return errors.New("author not present in book")
	}

	b.Authors = append(b.Authors[:i], b.Authors[i+1:]...)
	return nil
}



func (b *Book) findAuthor(id string) (int, *Author) {
	for i, author := range b.Authors {
		if author.ID == id {
			return i, &author
		}
	}
	return -1, nil
}
