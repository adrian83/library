package validation

import (
	mymodel "domain/author/model"
)

var (
	EmptyAuthorLastName = ValidationError{
		Field:   "LastName",
		Code:    "author.lastName",
		Message: "Author's last name cannot be empty"}
)

type AuthorValidator struct {
}

func (v *AuthorValidator) Validate(entity interface{}) ([]ValidationError, bool) {
	errors := make([]ValidationError, 0)

	author, ok := entity.(mymodel.Author)
	if !ok {
		return errors, ok
	}

	if IsStringEmpty(author.LastName) {
		errors = append(errors, EmptyAuthorLastName)
	}

	return errors, true
}

type AuthorUpdateValidator struct {
}

func (v *AuthorUpdateValidator) Validate(entity interface{}) ([]ValidationError, bool) {
	errors := make([]ValidationError, 0)

	author, ok := entity.(mymodel.AuthorUpdate)
	if !ok {
		return errors, ok
	}

	if IsStringPtrNil(author.LastName) || IsStringEmpty(*author.LastName) {
		errors = append(errors, EmptyAuthorLastName)
	}

	return errors, true
}
