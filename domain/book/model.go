package book

import (
	"gopkg.in/mgo.v2/bson"
)

type Author struct {
	ID       bson.ObjectId `json:"id" bson:"_id,omitempty"`
	FullName string        `json:"fullName,omitempty" bson:"fullName,omitempty"`
}

type Book struct {
	ID      bson.ObjectId `json:"id" bson:"_id,omitempty"`
	Title   string        `json:"title,omitempty" bson:"title,omitempty"`
	Authors []Author      `json:"authors,omitempty" bson:"authors,omitempty"`
}

type NewBook struct {
	ID       bson.ObjectId `json:"id" bson:"_id,omitempty"`
	Title    string        `json:"title,omitempty" bson:"title,omitempty"`
	AuthorID []string      `json:"authorId,omitempty" bson:"authorId,omitempty"`
}

type BookUpdate struct {
	ID       string
	Title    *string  `json:"title,omitempty"`
	AuthorID []string `json:"authorId,omitempty"`
	Authors  []Author
}
