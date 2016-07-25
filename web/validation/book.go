package validation

import ()

var (
	EmptyBookTitle = ValidationError{
		Field:   "Title",
		Code:    "book.title",
		Message: "Book's title cannot be empty"}
)
