package author

import "gopkg.in/mgo.v2/bson"

type AuthorService interface {
	Add(author *Author) (*Author, error)
	GetAuthors() ([]*Author, error)
	Update(author *Author) error
	Delete(authorID string) error
	GetAuthor(authorID string) (*Author, error)
}

type AuthorServiceImpl struct {
	authorDal Dal
}

func NewAuthorService(authorDal Dal) AuthorService {
	return AuthorServiceImpl{authorDal: authorDal}
}

func (s AuthorServiceImpl) Add(author *Author) (*Author, error) {
	entity, err := s.authorDal.Add(author.ToEntity())
	if err != nil {
		return nil, err
	}
	return entity.ToAuthor(), nil
}

func (s AuthorServiceImpl) GetAuthors() ([]*Author, error) {
	entities, err := s.authorDal.GetAuthors()
	if err != nil {
		return nil, err
	}
	return entitiesToAuthors(entities), nil
}

func (s AuthorServiceImpl) Update(author *Author) error {
	return s.authorDal.Update(author.ToEntity())
}

func (s AuthorServiceImpl) Delete(authorID string) error {
	return s.authorDal.Delete(bson.ObjectIdHex(authorID))
}

func (s AuthorServiceImpl) GetAuthor(authorID string) (*Author, error) {
	entity, err := s.authorDal.GetAuthor(bson.ObjectIdHex(authorID))
	if err != nil {
		return nil, err
	}
	return entity.ToAuthor(), nil
}

/*
ids := make([]bson.ObjectId, 0)
for _, authorID := range authorIDs {
	ids = append(ids, bson.ObjectIdHex(authorID))
}
*/

func entitiesToAuthors(entities []*Entity) []*Author {
	authors := make([]*Author, len(entities))
	for i, entity := range entities {
		authors[i] = entity.ToAuthor()
	}
	return authors
}
