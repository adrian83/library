package author

import ()

type AuthorService interface {
	Add(author Author) (Author, error)
	GetAuthors() ([]Author, error)
	Update(author AuthorUpdate) error
	Delete(authorID string) error
	GetAuthor(authorID string) (Author, error)
}

type AuthorServiceImpl struct {
	authorDal AuthorDal
}

func NewAuthorService(authorDal AuthorDal) AuthorService {
	return AuthorServiceImpl{authorDal: authorDal}
}

func (s AuthorServiceImpl) Add(author Author) (Author, error) {
	return s.authorDal.Add(author)
}

func (s AuthorServiceImpl) GetAuthors() ([]Author, error) {
	return s.authorDal.GetAuthors()
}

func (s AuthorServiceImpl) Update(author AuthorUpdate) error {
	return s.authorDal.Update(author)
}

func (s AuthorServiceImpl) Delete(authorID string) error {
	return s.authorDal.Delete(authorID)
}

func (s AuthorServiceImpl) GetAuthor(authorID string) (Author, error) {
	return s.authorDal.GetAuthor(authorID)
}
