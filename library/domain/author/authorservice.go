package author

import (
	"github.com/adrian83/go-mvc-library/library/domain/common/dal"
	"gopkg.in/mgo.v2/bson"
)

// AuthorsPage represents single page of Authors in Authors' pagination.
type AuthorsPage struct {
	*dal.Page
	Authors []*Author `json:"authors"`
}

// Service is an inferface for service which manipulates Author structs.
type Service interface {
	Add(author *Author) (*Author, error)
	Authors(page *dal.PageInfo) (*AuthorsPage, error)
	Update(author *Author) error
	Delete(authorID string) error
	GetByID(authorID string) (*Author, error)
}

// ServiceImpl is a default implementation of AuthorService.
type ServiceImpl struct {
	authorDal Dal
}

// NewAuthorService returns new instance of AuthorService.
func NewAuthorService(authorDal Dal) Service {
	return ServiceImpl{authorDal: authorDal}
}

// Add persists (through dal struct) given Author.
func (s ServiceImpl) Add(author *Author) (*Author, error) {
	entity, err := s.authorDal.Add(author.ToEntity())
	if err != nil {
		return nil, err
	}
	return entity.ToAuthor(), nil
}

// Authors returns page of Authors.
func (s ServiceImpl) Authors(page *dal.PageInfo) (*AuthorsPage, error) {
	entitiesPage, err := s.authorDal.Authors(page)
	if err != nil {
		return nil, err
	}

	return &AuthorsPage{
		Page: &dal.Page{
			TotalElements: entitiesPage.TotalElements,
			Size:          entitiesPage.Size,
			Current:       page.Number,
		},
		Authors: entitiesToAuthors(entitiesPage.Elements),
	}, nil
}

// Update updates (through dal struct) given Author.
func (s ServiceImpl) Update(author *Author) error {
	return s.authorDal.Update(author.ToEntity())
}

// Delete removes (through dal struct) Author with given id.
func (s ServiceImpl) Delete(authorID string) error {
	return s.authorDal.Delete(bson.ObjectIdHex(authorID))
}

// GetByID returns (through dal struct) Author with given id.
func (s ServiceImpl) GetByID(authorID string) (*Author, error) {
	entity, err := s.authorDal.GetAuthor(bson.ObjectIdHex(authorID))
	if err != nil {
		return nil, err
	}
	return entity.ToAuthor(), nil
}

func entitiesToAuthors(entities []*Entity) []*Author {
	authors := make([]*Author, len(entities))
	for i, entity := range entities {
		authors[i] = entity.ToAuthor()
	}
	return authors
}
