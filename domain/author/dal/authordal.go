package dal

import (
	"domain/author/model"
	"gopkg.in/mgo.v2"
	"gopkg.in/mgo.v2/bson"
)

const (
	collectionName = "authors"

	firstName = "firstName"
	lastName  = "lastName"

	id = "_id"
)

type AuthorDal interface {
	Add(author model.Author) error
	GetAuthors() ([]model.Author, error)
	Update(author model.AuthorUpdate) error
	Delete(authorID string) error
	GetAuthor(authorID string) (model.Author, error)
	FindAuthorsByIDs(authorIDs []string) ([]model.Author, error)
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
	dict[firstName] = author.FirstName
	dict[lastName] = *author.LastName
	return d.collection.Update(bson.M{id: bson.ObjectIdHex(author.ID)}, dict)
}

func (d AuthorMongoDal) Delete(authorID string) error {
	return d.collection.RemoveId(bson.ObjectIdHex(authorID))
}

func (d AuthorMongoDal) GetAuthor(authorID string) (model.Author, error) {
	author := new(model.Author)
	err := d.collection.FindId(bson.ObjectIdHex(authorID)).One(author)
	return *author, err
}

func (d AuthorMongoDal) FindAuthorsByIDs(authorIDs []string) ([]model.Author, error) {
	ids := make([]bson.ObjectId, 0)
	for _, authorID := range authorIDs {
		ids = append(ids, bson.ObjectIdHex(authorID))
	}
	authors := make([]model.Author, 0)
	query := d.collection.Find(bson.M{id: map[string]interface{}{"$in": ids}})
	err := query.All(&authors)
	return authors, err
}
