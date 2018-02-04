package author

import (
	"fmt"
	"log"

	"github.com/adrian83/go-mvc-library/library/domain/common/dal"
	"github.com/adrian83/go-mvc-library/library/domain/common/model"
	"gopkg.in/mgo.v2"
	"gopkg.in/mgo.v2/bson"
)

const (
	collectionName = "authors"

	firstName = "firstName"
	lastName  = "lastName"

	id = "_id"
)

// EntitiesPage represents single page of Entities in pagination.
type EntitiesPage struct {
	*dal.Page
	Elements []*Entity
}

// Dal is a data access layer for authors.
type Dal interface {
	Add(author *Entity) (*Entity, error)
	Authors(page *dal.PageInfo) (*EntitiesPage, error)
	Update(author *Entity) error
	Delete(authorID bson.ObjectId) error
	GetAuthor(authorID bson.ObjectId) (*Entity, error)
	FindAuthorsByIDs(authorIDs []bson.ObjectId) (Entities, error)
}

// NewAuthorMongoDal returns Author Dal implementation which stores data in MongoDB.
func NewAuthorMongoDal(database *mgo.Database) *MongoDal {
	return &MongoDal{
		database:   database,
		collection: database.C(collectionName),
	}
}

// MongoDal implementation of AuthorDal that stores data in MongoDB.
type MongoDal struct {
	database   *mgo.Database
	collection *mgo.Collection
}

// Add stores author data into MongoDB.
func (d MongoDal) Add(author *Entity) (*Entity, error) {
	return author, d.collection.Insert(author)
}

// Authors returns slice of authors fetched from MongoDB.
func (d MongoDal) Authors(page *dal.PageInfo) (*EntitiesPage, error) {

	log.Printf("Getting authors from page: %v", page)
	entities := make([]*Entity, 0)
	// {$regex : ".*son.*"}
	var findExp interface{}
	if page.Phrase != "" {
		findExp = bson.M{firstName: bson.M{"$regex": fmt.Sprintf(".*%v.*", page.Phrase), "$options": "i"}}
	}

	query := d.collection.Find(findExp).Skip(page.From()).Limit(page.Size).Sort(page.Sort)
	if err := query.All(&entities); err != nil {
		return nil, err
	}
	totalCount, err := d.collection.Find(findExp).Count()
	if err != nil {
		return nil, err
	}

	return &EntitiesPage{
		Page: &dal.Page{
			TotalElements: totalCount,
			Size:          page.Size,
			Current:       page.Number,
		},
		Elements: entities}, nil
}

// Update updates author's data into MongoDB.
func (d MongoDal) Update(author *Entity) error {
	dict := map[string]interface{}{
		firstName: author.FirstName,
		lastName:  author.LastName,
	}
	return d.collection.Update(bson.M{id: author.ID}, dict)
}

// Delete removes author with given ID from MongoDB.
func (d MongoDal) Delete(authorID bson.ObjectId) error {
	return d.collection.RemoveId(authorID)
}

// GetAuthor returns author stored in MongoDB with given ID.
func (d MongoDal) GetAuthor(authorID bson.ObjectId) (*Entity, error) {
	entity := new(Entity)
	err := d.collection.FindId(authorID).One(entity)
	if err == mgo.ErrNotFound {
		return nil, &model.NotFoundError{Type: "author"}
	}
	return entity, err
}

// FindAuthorsByIDs returns slice of Authors with given IDs.
func (d MongoDal) FindAuthorsByIDs(authorIDs []bson.ObjectId) (Entities, error) {
	entities := make([]*Entity, 0)
	err := d.collection.Find(bson.M{id: map[string]interface{}{"$in": authorIDs}}).All(&entities)
	return entities, err
}
