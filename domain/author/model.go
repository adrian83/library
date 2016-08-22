package author

import (
	"gopkg.in/mgo.v2/bson"
)

// AuthorEntity is a struct used by mongodb driver
type AuthorEntity struct {
	ID        bson.ObjectId `json:"id" bson:"_id,omitempty"`
	FirstName string        `json:"firstName,omitempty" bson:"firstName,omitempty"`
	LastName  string        `json:"lastName,omitempty" bson:"lastName,omitempty"`
}

type Author struct {
	ID        string `json:"id"`
	FirstName string `json:"firstName,omitempty"`
	LastName  string `json:"lastName,omitempty"`
}

type AuthorUpdate struct {
	ID        string
	FirstName *string
	LastName  *string
}
