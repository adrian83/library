package book

import (
	author "github.com/adrian83/go-mvc-library/library/domain/author"
	"gopkg.in/mgo.v2/bson"
)

type BookService interface {
	Add(book *Book) (*Book, error)
	GetBooks() ([]*Book, error)
	Update(book *Book) error
	Delete(bookID string) error
	GetBook(bookID string) (*Book, error)

	UpdateAuthor(author *author.Author) error
	DeleteAuthor(authorID string) error
}

type BookServiceImpl struct {
	bookDal   Dal
	authorDal author.Dal
}

func NewBookServiceImpl(bookDal Dal, authorDal author.Dal) BookService {
	return BookServiceImpl{
		bookDal:   bookDal,
		authorDal: authorDal,
	}
}

func (s BookServiceImpl) Add(book *Book) (*Book, error) {
	entity, err := s.bookDal.Add(book.ToEntity())
	if err != nil {
		return nil, err
	}
	return entity.ToBook(), nil
}

func (s BookServiceImpl) GetBooks() ([]*Book, error) {
	entities, err := s.bookDal.GetBooks()
	if err != nil {
		return nil, err
	}
	return entitiesToBooks(entities), nil
}

func (s BookServiceImpl) Update(book *Book) error {
	return s.bookDal.Update(book.ToEntity())
}

func (s BookServiceImpl) UpdateAuthor(author *author.Author) error {
	return s.bookDal.UpdateAuthor(author.ToEntity())
}

func (s BookServiceImpl) DeleteAuthor(authorID string) error {
	return s.bookDal.DeleteAuthor(bson.ObjectIdHex(authorID))
}

func (s BookServiceImpl) Delete(bookID string) error {
	return s.bookDal.Delete(bson.ObjectIdHex(bookID))
}

func (s BookServiceImpl) GetBook(bookID string) (*Book, error) {
	entity, err := s.bookDal.GetBook(bson.ObjectIdHex(bookID))
	if err != nil {
		return nil, err
	}
	return entity.ToBook(), nil
}

func entitiesToBooks(entities []*Entity) []*Book {
	books := make([]*Book, len(entities))
	for i, entity := range entities {
		books[i] = entity.ToBook()
	}
	return books
}
