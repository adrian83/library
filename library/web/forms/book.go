package forms

import (
	"fmt"

	"github.com/adrian83/go-mvc-library/library/domain/author"
	"github.com/adrian83/go-mvc-library/library/domain/book"
	"github.com/adrian83/go-mvc-library/library/domain/common/model"
)

var (
	emptyTitle = model.ValidationError{
		Field:   "Title",
		Code:    "book.title",
		Message: "Book's title cannot be empty"}

	noAuthors = model.ValidationError{
		Field:   "Authors",
		Code:    "book.authors",
		Message: "At least one author has to be set"}
)

// BookForm represents form for creating / updating books.
type BookForm struct {
	ID      string       `json:"id,omitempty"`
	Title   string       `json:"title,omitempty"`
	Authors []AuthorForm `json:"authors,omitempty"`
}

// String returns struct's string representation.
func (b *BookForm) String() string {
	return fmt.Sprintf("BookForm {ID: %v, Title: %v, Authors: %v}", b.ID, b.Title, b.Authors)
}

// Validate implements Validable interface.
func (b *BookForm) Validate() model.ValidationErrors {
	errs := make([]*model.ValidationError, 0)

	if model.IsStringEmpty(b.Title) {
		errs = append(errs, &emptyTitle)
	}

	if len(b.Authors) == 0 {
		errs = append(errs, &noAuthors)
	}

	return errs
}

// ToBook transforms BookForm to Book struct.
func (b BookForm) ToBook() *book.Book {
	authors := make([]*author.Author, 0)
	for _, a := range b.Authors {
		authors = append(authors, a.ToAuthor())
	}

	return &book.Book{
		ID:      b.ID,
		Title:   b.Title,
		Authors: authors,
	}
}
