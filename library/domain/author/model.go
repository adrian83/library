package author

import (
	"gopkg.in/mgo.v2/bson"
)

// Entity is a struct used by mongodb driver
type Entity struct {
	ID        bson.ObjectId `json:"id" bson:"_id,omitempty"`
	FirstName string        `json:"firstName,omitempty" bson:"firstName,omitempty"`
	LastName  string        `json:"lastName,omitempty" bson:"lastName,omitempty"`
}

// ToAuthor transforms Entity struct to Author struct.
func (e *Entity) ToAuthor() *Author {
	return &Author{
		ID:        e.ID.String(),
		FirstName: e.FirstName,
		LastName:  e.LastName,
	}
}

// Author is a struct used in service layer.
type Author struct {
	ID        string `json:"id"`
	FirstName string `json:"firstName,omitempty"`
	LastName  string `json:"lastName,omitempty"`
}

// ToEntity transforms Author struct to Entity struct.
func (a *Author) ToEntity() *Entity {
	newID := bson.NewObjectId()
	if a.ID == "" {
		newID = bson.ObjectIdHex(a.ID)
	}

	return &Entity{
		ID:        newID,
		FirstName: a.FirstName,
		LastName:  a.LastName,
	}
}
