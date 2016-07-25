package model

import (
	"gopkg.in/mgo.v2/bson"
)

type Author struct {
	ID       string `json:"id" bson:"_id,omitempty"`
	FullName string `json:"fullName,omitempty" bson:"fullName,omitempty"`
}

type Book struct {
	ID      bson.ObjectId `json:"id" bson:"_id,omitempty"`
	Title   string        `json:"title,omitempty" bson:"title,omitempty"`
	Authors []Author      `json:"authors,omitempty" bson:"authors,omitempty"`
}

type BookUpdate struct {
	ID    string
	Title *string
}
