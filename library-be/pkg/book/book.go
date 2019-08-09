package book

import (
	"errors"
	"time"

	"github.com/google/uuid"
)

// Author is a representation of author data.
type Author struct {
	ID   string `json:"id" bson:"id,omitempty"`
	Name string `json:"name,omitempty" bson:"name,omitempty"`
}

type Page struct {
	Books  []Book
	Limit  int
	Offset int
	Total  int
}

func NewPage(books []Book, limit, offset, total int) *Page {
	return &Page{
		Books:  books,
		Limit:  limit,
		Offset: offset,
		Total:  total,
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

	if _, a := b.findAuthor(author.ID); a != nil {
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
