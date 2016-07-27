package dal

import (
	"domain/book/model"
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
	Add(book model.Book) (model.Book, error)
	GetBooks() ([]model.Book, error)
	Update(book model.BookUpdate) error
	Delete(bookID string) error
	GetBook(bookID string) (model.Book, bool, error)
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

func (d BookMongoDal) Add(book model.Book) (model.Book, error) {
	err := d.collection.Insert(book)
	return book, err
}

func (d BookMongoDal) GetBooks() ([]model.Book, error) {
	books := make([]model.Book, 0)
	err := d.collection.Find(nil).All(&books)
	return books, err
}

func (d BookMongoDal) Update(book model.BookUpdate) error {
	dict := make(map[string]interface{})
	dict[title] = book.Title
	//dict[authors] = *book.LastName
	return d.collection.Update(bson.M{id: bson.ObjectIdHex(book.ID)}, dict)
}

func (d BookMongoDal) Delete(bookID string) error {
	return d.collection.RemoveId(bson.ObjectIdHex(bookID))
}

func (d BookMongoDal) GetBook(bookID string) (model.Book, bool, error) {
	book := new(model.Book)
	err := d.collection.FindId(bson.ObjectIdHex(bookID)).One(book)
	if err != nil && err == mgo.ErrNotFound {
		return *book, false, nil
	}
	return *book, true, err
}
