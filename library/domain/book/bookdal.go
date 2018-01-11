package book

import (
	"log"

	"gopkg.in/mgo.v2"
	"gopkg.in/mgo.v2/bson"

	"github.com/adrian83/go-mvc-library/library/domain/author"
	"github.com/adrian83/go-mvc-library/library/domain/common/model"
)

const (
	collectionName = "books"

	title   = "title"
	authors = "authors"

	id = "_id"
)

// Dal is an interface for book data access layer.
type Dal interface {
	Add(book *Entity) (*Entity, error)
	GetBooks() ([]*Entity, error)
	Update(book *Entity) error
	Delete(bookID bson.ObjectId) error
	GetBook(bookID bson.ObjectId) (*Entity, error)

	UpdateAuthor(author *author.Entity) error
	DeleteAuthor(authorID bson.ObjectId) error
}

// NewBookMongoDal returns new instance of Dal implementation backed by MongoDB.
func NewBookMongoDal(database *mgo.Database) *MongoDal {
	return &MongoDal{
		database:   database,
		collection: database.C(collectionName),
	}
}

// MongoDal is a Dal implementation backed by MongoDB.
type MongoDal struct {
	database   *mgo.Database
	collection *mgo.Collection
}

// Add persists new book to MongoDB.
func (d MongoDal) Add(book *Entity) (*Entity, error) {
	err := d.collection.Insert(book)
	return book, err
}

// GetBooks returns slice of books.
func (d MongoDal) GetBooks() ([]*Entity, error) {
	entities := make([]*Entity, 0)
	if err := d.collection.Find(nil).All(&entities); err != nil {
		return nil, err
	}
	return entities, nil
}

// Update updates book in MongoDB.
func (d MongoDal) Update(book *Entity) error {
	dict := make(map[string]interface{})
	dict[title] = book.Title
	dict[authors] = book.Authors
	return d.collection.Update(bson.M{id: book.ID}, dict)
}

// Delete removes book with given id from MongoDb.
func (d MongoDal) Delete(bookID bson.ObjectId) error {
	return d.collection.RemoveId(bookID)
}

// GetBook returns book with given id or error.
func (d MongoDal) GetBook(bookID bson.ObjectId) (*Entity, error) {
	entity := new(Entity)
	err := d.collection.FindId(bookID).One(entity)
	if err == mgo.ErrNotFound {
		return nil, &model.NotFoundError{Type: "book"}
	}
	return entity, err
}

//.update(Authors:{$elemMatch:{Slug:"slug"}}, {$set: {'Authors.$.Name':"zzz"}});
func (d MongoDal) UpdateAuthor(author *author.Entity) error {
	info, err := d.collection.UpdateAll(
		bson.M{authors: bson.M{"$elemMatch": bson.M{id: author.ID}}},
		bson.M{"$set": bson.M{"authors.$.firstName": author.FirstName, "authors.$.lastName": author.LastName}})
	log.Printf("UpdateAll info %v", info)
	return err
}

//.update(Authors:{$elemMatch:{Slug:"slug"}}, {$set: {'Authors.$.Name':"zzz"}});
func (d MongoDal) DeleteAuthor(authorID bson.ObjectId) error {
	info, err := d.collection.UpdateAll(
		bson.M{},
		bson.M{"$pull": bson.M{"authors": bson.M{id: authorID}}})
	log.Printf("UpdateAll info %v", info)
	return err
}
