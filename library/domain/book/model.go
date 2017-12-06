package book

import (
	"github.com/adrian83/go-mvc-library/library/domain/author"
	"gopkg.in/mgo.v2/bson"
)

// Entity is a struct used by mongodb driver
type Entity struct {
	ID      bson.ObjectId    `json:"id" bson:"_id,omitempty"`
	Title   string           `json:"title,omitempty" bson:"title,omitempty"`
	Authors []*author.Entity `json:"authors,omitempty" bson:"authors,omitempty"`
}

// Entities is just a slice of Entities.
type Entities []*Entity

// ToBook transforms Entity to Book.
func (e *Entity) ToBook() *Book {
	authors := make([]*author.Author, 0)
	for _, a := range e.Authors {
		authors = append(authors, a.ToAuthor())
	}

	return &Book{
		ID:      e.ID.String(),
		Title:   e.Title,
		Authors: authors,
	}
}

// Book is a struct used in service layer.
type Book struct {
	ID      string           `json:"id"`
	Title   string           `json:"title,omitempty"`
	Authors []*author.Author `json:"authors,omitempty"`
}

// ToEntity transforms Book to Entity.
func (b Book) ToEntity() *Entity {
	newID := bson.NewObjectId()
	if b.ID == "" {
		newID = bson.ObjectIdHex(b.ID)
	}

	authors := make([]*author.Entity, 0)
	for _, a := range b.Authors {
		authors = append(authors, a.ToEntity())
	}

	return &Entity{
		ID:      newID,
		Title:   b.Title,
		Authors: authors,
	}
}
