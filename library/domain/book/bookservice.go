package book

import (
	author "github.com/adrian83/go-mvc-library/library/domain/author"
)

type BookService interface {
	Add(book NewBook) (Book, error)
	GetBooks() ([]Book, error)
	Update(book BookUpdate) error
	Delete(bookID string) error
	GetBook(bookID string) (Book, bool, error)
}

type BookServiceImpl struct {
	bookDal   BookDal
	authorDal author.AuthorDal
}

func NewBookServiceImpl(bookDal BookDal, authorDal author.AuthorDal) BookService {
	return BookServiceImpl{
		bookDal:   bookDal,
		authorDal: authorDal,
	}
}

func (s BookServiceImpl) Add(newBook NewBook) (Book, error) {

	authors := make([]Author, 0)
	ats, err := s.authorDal.FindAuthorsByIDs(newBook.AuthorID)
	if err != nil {
		return Book{}, err
	}

	for _, at := range ats {
		a := Author{ID: at.ID, FullName: at.FirstName + " " + at.LastName}
		authors = append(authors, a)
	}

	book := Book{Title: newBook.Title, Authors: authors}

	return s.bookDal.Add(book)
}

func (s BookServiceImpl) GetBooks() ([]Book, error) {
	return s.bookDal.GetBooks()
}

func (s BookServiceImpl) Update(book BookUpdate) error {
	if book.AuthorID != nil {
		authors := make([]Author, 0)
		ats, err := s.authorDal.FindAuthorsByIDs(book.AuthorID)
		if err != nil {
			return err
		}

		for _, at := range ats {
			a := Author{ID: at.ID, FullName: at.FirstName + " " + at.LastName}
			authors = append(authors, a)
		}
		book.Authors = authors
	}
	return s.bookDal.Update(book)
}

func (s BookServiceImpl) Delete(bookID string) error {
	return s.bookDal.Delete(bookID)
}

func (s BookServiceImpl) GetBook(bookID string) (Book, bool, error) {
	return s.bookDal.GetBook(bookID)
}
