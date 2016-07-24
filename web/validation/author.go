package validation

import ()

var (
	EmptyAuthorLastName = ValidationError{
		Field:   "LastName",
		Code:    "author.lastName",
		Message: "Author's last name cannot be empty"}
)
