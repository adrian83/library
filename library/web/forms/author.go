package forms

import (
	"github.com/adrian83/go-mvc-library/library/domain/author"
	"github.com/adrian83/go-mvc-library/library/domain/common/model"
)

var (
	emptyAuthorLastName = model.ValidationError{
		Field:   "LastName",
		Code:    "author.lastName",
		Message: "Author's last name cannot be empty"}
)

// AuthorForm represents form for creating / updating authors.
type AuthorForm struct {
	ID        string `json:"id"`
	FirstName string `json:"firstName,omitempty"`
	LastName  string `json:"lastName,omitempty"`
}

// Validate implements Validable interface.
func (a *AuthorForm) Validate() model.ValidationErrors {
	errs := make([]*model.ValidationError, 0)

	if model.IsStringEmpty(a.LastName) {
		errs = append(errs, &emptyAuthorLastName)
	}

	return errs
}

// ToAuthor transforms AuthorForm to Author struct.
func (a AuthorForm) ToAuthor() *author.Author {
	return &author.Author{
		ID:        a.ID,
		FirstName: a.FirstName,
		LastName:  a.LastName,
	}
}
