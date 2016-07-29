package service

import (
	"domain/author/dal"
	"domain/author/model"
)

type AuthorService interface {
	Add(author model.Author) (model.Author, error)
	GetAuthors() ([]model.Author, error)
	Update(author model.AuthorUpdate) error
	Delete(authorID string) error
	GetAuthor(authorID string) (model.Author, error)
}

type AuthorServiceImpl struct {
	authorDal dal.AuthorDal
}

func NewAuthorService(authorDal dal.AuthorDal) AuthorService {
	return AuthorServiceImpl{authorDal: authorDal}
}

func (s AuthorServiceImpl) Add(author model.Author) (model.Author, error) {
	return s.authorDal.Add(author)
}

func (s AuthorServiceImpl) GetAuthors() ([]model.Author, error) {
	return s.authorDal.GetAuthors()
}

func (s AuthorServiceImpl) Update(author model.AuthorUpdate) error {
	return s.authorDal.Update(author)
}

func (s AuthorServiceImpl) Delete(authorID string) error {
	return s.authorDal.Delete(authorID)
}

func (s AuthorServiceImpl) GetAuthor(authorID string) (model.Author, error) {
	return s.authorDal.GetAuthor(authorID)
}
