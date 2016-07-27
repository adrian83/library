package service

import (
	authordal "domain/author/dal"
	"domain/book/dal"
	"domain/book/model"
)

type BookService interface {
	Add(book model.NewBook) (model.Book, error)
	GetBooks() ([]model.Book, error)
	Update(book model.BookUpdate) error
	Delete(bookID string) error
	GetBook(bookID string) (model.Book, bool, error)
}

type BookServiceImpl struct {
	bookDal   dal.BookDal
	authorDal authordal.AuthorDal
}

func NewBookServiceImpl(bookDal dal.BookDal, authorDal authordal.AuthorDal) BookService {
	return BookServiceImpl{
		bookDal:   bookDal,
		authorDal: authorDal,
	}
}

func (s BookServiceImpl) Add(newBook model.NewBook) (model.Book, error) {

	authors := make([]model.Author, 0)
	ats, err := s.authorDal.FindAuthorsByIDs(newBook.AuthorID)
	if err != nil {
		return model.Book{}, err
	}

	for _, at := range ats {
		a := model.Author{ID: at.ID, FullName: at.FirstName + " " + at.LastName}
		authors = append(authors, a)
	}

	book := model.Book{Title: newBook.Title, Authors: authors}

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

func (s BookServiceImpl) GetBook(bookID string) (model.Book, bool, error) {
	return s.bookDal.GetBook(bookID)
}
