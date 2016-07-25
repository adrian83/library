package service

import (
	"domain/book/dal"
	"domain/book/model"
)

type BookService interface {
	Add(book model.Book) error
	GetBooks() ([]model.Book, error)
	Update(book model.BookUpdate) error
	Delete(bookID string) error
	GetBook(bookID string) (model.Book, error)
}

type BookServiceImpl struct {
	bookDal dal.BookDal
}

func NewBookServiceImpl(bookDal dal.BookDal) BookService {
	return BookServiceImpl{bookDal: bookDal}
}

func (s BookServiceImpl) Add(book model.Book) error {
	return s.bookDal.Add(book)
}

func (s BookServiceImpl) GetBooks() ([]model.Book, error) {
	return s.bookDal.GetBooks()
}

func (s BookServiceImpl) Update(book model.BookUpdate) error {
	return s.bookDal.Update(book)
}

func (s BookServiceImpl) Delete(bookID string) error {
	return s.bookDal.Delete(bookID)
}

func (s BookServiceImpl) GetBook(bookID string) (model.Book, error) {
	return s.bookDal.GetBook(bookID)
}
