package dal

import (
	"domain/author/model"
	"gopkg.in/mgo.v2"
)

const (
	collectionName = "authors"
)

type AuthorDal interface {
	Add(author model.Author) error
	GetAuthors() ([]model.Author, error)
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
