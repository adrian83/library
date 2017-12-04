package book

import (
	author "github.com/adrian83/go-mvc-library/library/domain/author"
)

type BookService interface {
	Add(book Book) (Book, error)
	GetBooks() ([]*Book, error)
	Update(book Book) error
	Delete(bookID string) error
	GetBook(bookID string) (Book, bool, error)
}

type BookServiceImpl struct {
	bookDal   BookDal
	authorDal author.Dal
}

func NewBookServiceImpl(bookDal BookDal, authorDal author.Dal) BookService {
	return BookServiceImpl{
		bookDal:   bookDal,
		authorDal: authorDal,
	}
}

func (s BookServiceImpl) Add(book Book) (Book, error) {
	return s.bookDal.Add(book)
}

func (s BookServiceImpl) GetBooks() ([]*Book, error) {
	return s.bookDal.GetBooks()
}

func (s BookServiceImpl) Update(book Book) error {
	return s.bookDal.Update(book)
}

func (s BookServiceImpl) Delete(bookID string) error {
	return s.bookDal.Delete(bookID)
}

func (s BookServiceImpl) GetBook(bookID string) (Book, bool, error) {
	return s.bookDal.GetBook(bookID)
}
