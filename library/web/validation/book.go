package validation

import (
	book "github.com/adrian83/go-mvc-library/library/domain/book"
)

var (
	EmptyBookTitle = ValidationError{
		Field:   "Title",
		Code:    "book.title",
		Message: "Book's title cannot be empty"}

	EmptyAuthorList = ValidationError{
		Field:   "AuthorId",
		Code:    "book.authors",
		Message: "List of authors cannot be empty"}
)

type BookValidator struct {
}

func (v *BookValidator) Validate(entity interface{}) ([]ValidationError, bool) {
	errors := make([]ValidationError, 0)

	book, ok := entity.(book.NewBook)
	if !ok {
		return errors, ok
	}

	if IsStringEmpty(book.Title) {
		errors = append(errors, EmptyBookTitle)
	}

	if len(book.AuthorID) == 0 {
		errors = append(errors, EmptyAuthorList)
	}

	return errors, true
}

type BookUpdateValidator struct {
}

func (v *BookUpdateValidator) Validate(entity interface{}) ([]ValidationError, bool) {
	errors := make([]ValidationError, 0)

	book, ok := entity.(book.BookUpdate)
	if !ok {
		return errors, ok
	}

	if book.Title != nil && IsStringEmpty(*book.Title) {
		errors = append(errors, EmptyBookTitle)
	}

	if book.AuthorID != nil && len(book.AuthorID) == 0 {
		errors = append(errors, EmptyAuthorList)
	}

	if book.AuthorID != nil && len(book.AuthorID) > 0 {
		for _, authorID := range book.AuthorID {
			if !IsIDValid(authorID) {
				errors = append(errors, InvalidID)
			}
		}
	}

	return errors, true
}
