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

type Book struct {
	ID      string           `json:"id" bson:"_id,omitempty"`
	Title   string           `json:"title,omitempty" bson:"title,omitempty"`
	Authors []*author.Author `json:"authors,omitempty" bson:"authors,omitempty"`
}

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
