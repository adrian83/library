package validation

import ()

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
