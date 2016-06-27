package dal

import (
	"domain/author/model"
	"gopkg.in/mgo.v2"
)

type AuthorDal interface {
	Add(author model.Author) error
}

type AuthorMongoDal struct {
	Session *mgo.Session
}

func (d AuthorMongoDal) Add(author model.Author) error {
	authorsColl := d.Session.DB("library").C("authors")
	return authorsColl.Insert(author)
}
