package model

import (
	"gopkg.in/mgo.v2/bson"
)

type Author struct {
	ID        bson.ObjectId `json:"id" bson:"_id,omitempty"`
	FirstName string        `json:"firstName,omitempty" bson:"firstName,omitempty"`
	LastName  string        `json:"lastName,omitempty" bson:"lastName,omitempty"`
}

type AuthorUpdate struct {
	ID        string
	FirstName *string
	LastName  *string
}
