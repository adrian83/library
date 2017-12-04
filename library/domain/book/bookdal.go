package book

import (
	"gopkg.in/mgo.v2"
	"gopkg.in/mgo.v2/bson"
)

const (
	collectionName = "books"

	title   = "title"
	authors = "authors"

	id = "_id"
)

type BookDal interface {
	Add(book Book) (Book, error)
	GetBooks() ([]*Book, error)
	Update(book Book) error
	Delete(bookID string) error
	GetBook(bookID string) (Book, bool, error)
}

func NewBookMongoDal(database *mgo.Database) *BookMongoDal {
	return &BookMongoDal{
		database:   database,
		collection: database.C(collectionName),
	}
}

type BookMongoDal struct {
	database   *mgo.Database
	collection *mgo.Collection
}

func (d BookMongoDal) Add(book Book) (Book, error) {
	err := d.collection.Insert(book.ToEntity())
	return book, err
}

func (d BookMongoDal) GetBooks() ([]*Book, error) {
	entities := make([]Entity, 0)
	err := d.collection.Find(nil).All(&entities)
	if err != nil {
		return nil, err
	}

	books := make([]*Book, 0)
	for _, b := range entities {
		books = append(books, b.ToBook())
	}

	return books, nil
}

func (d BookMongoDal) Update(book Book) error {
	dict := make(map[string]interface{})
	dict[title] = book.Title
	dict[authors] = book.Authors

	return d.collection.Update(bson.M{id: book.ID}, dict)
}

func (d BookMongoDal) Delete(bookID string) error {
	return d.collection.RemoveId(bson.ObjectIdHex(bookID))
}

func (d BookMongoDal) GetBook(bookID string) (Book, bool, error) {
	book := new(Book)
	err := d.collection.FindId(bson.ObjectIdHex(bookID)).One(book)
	if err != nil && err == mgo.ErrNotFound {
		return *book, false, nil
	}
	return *book, true, err
}
