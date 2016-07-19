package dal

import (
	"domain/author/model"
	"fmt"
	"gopkg.in/mgo.v2"
	"gopkg.in/mgo.v2/bson"
)

const (
	collectionName = "authors"
)

type AuthorDal interface {
	Add(author model.Author) error
	GetAuthors() ([]model.Author, error)
	Update(author model.AuthorUpdate) error
}

func NewAuthorMongoDal(database *mgo.Database) *AuthorMongoDal {
	return &AuthorMongoDal{
		database:   database,
		collection: database.C(collectionName),
	}
}

type AuthorMongoDal struct {
	database   *mgo.Database
	collection *mgo.Collection
}

func (d AuthorMongoDal) Add(author model.Author) error {

	return d.collection.Insert(author)
}

func (d AuthorMongoDal) GetAuthors() ([]model.Author, error) {
	authors := make([]model.Author, 0)
	err := d.collection.Find(nil).All(&authors)
	return authors, err
}

func (d AuthorMongoDal) Update(author model.AuthorUpdate) error {
	dict := make(map[string]interface{})

	dict["firstname"] = author.FirstName

	dict["lastname"] = *author.LastName
	fmt.Println("-------------", dict)
	return d.collection.Update(bson.M{"_id": bson.ObjectIdHex(author.ID)}, dict)
}
