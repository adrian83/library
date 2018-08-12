package book

import (
	author "github.com/adrian83/go-mvc-library/library/domain/author"
	"github.com/adrian83/go-mvc-library/library/domain/common"
	"gopkg.in/mgo.v2/bson"
)

// BooksPage represents single page of Books in Books' pagination.
type BooksPage struct {
	*common.Page
	Books []*Book `json:"books"`
}

// Service describes all operations which can be done on Book.
type Service interface {
	Save(book *Book) (*Book, error)
	Books(page *common.PageInfo) (*BooksPage, error)
	Update(book *Book) error
	Delete(bookID string) error
	GetBook(bookID string) (*Book, error)

	UpdateAuthor(author *author.Author) error
	DeleteAuthor(authorID string) error
}

// ServiceImpl is a default implementation of the Service interface.
type ServiceImpl struct {
	bookDal   Dal
	authorDal author.DAL
}

// NewBookServiceImpl returns newly created implementation of a Service.
func NewBookServiceImpl(bookDal Dal, authorDal author.DAL) Service {
	return ServiceImpl{
		bookDal:   bookDal,
		authorDal: authorDal,
	}
}

// Save stores given Book in DB, returns Book (with filled ID) or error.
func (s ServiceImpl) Save(book *Book) (*Book, error) {
	entity, err := s.bookDal.Add(book.ToEntity())
	if err != nil {
		return nil, err
	}
	return entity.ToBook(), nil
}

// Books returns slice of Books.
func (s ServiceImpl) Books(page *common.PageInfo) (*BooksPage, error) {
	entitiesPage, err := s.bookDal.Books(page)
	if err != nil {
		return nil, err
	}

	return &BooksPage{
		Page: &common.Page{
			TotalElements: entitiesPage.TotalElements,
			Size:          entitiesPage.Size,
			Current:       page.Number,
		},
		Books: entitiesToBooks(entitiesPage.Elements),
	}, nil
}

// Update updates Book data.
func (s ServiceImpl) Update(book *Book) error {
	return s.bookDal.Update(book.ToEntity())
}

func (s ServiceImpl) UpdateAuthor(author *author.Author) error {
	return s.bookDal.UpdateAuthor(author.ToEntity())
}

func (s ServiceImpl) DeleteAuthor(authorID string) error {
	return s.bookDal.DeleteAuthor(bson.ObjectIdHex(authorID))
}

func (s ServiceImpl) Delete(bookID string) error {
	return s.bookDal.Delete(bson.ObjectIdHex(bookID))
}

func (s ServiceImpl) GetBook(bookID string) (*Book, error) {
	entity, err := s.bookDal.Book(bson.ObjectIdHex(bookID))
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
