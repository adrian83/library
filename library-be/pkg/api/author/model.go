package author

import "github.com/adrian83/library/pkg/api"

// AddAuthor represents data in request body.
type AddAuthor struct {
	ID   string `json:"id"`
	Name string `json:"name"`
}

// Validate returns Validation error if AddAuthor data is invalid.
func (aa *AddAuthor) Validate() *api.ValidationError {
	violations := make([]*api.Violation, 0)

	if aa.Name == "" {
		violations = append(violations, api.NewViolation("name", "name cannot be empty"))
	}

	if len(violations) > 0 {
		return api.NewValidationError(violations...)
	}
	return nil
}

// RemoveAuthor represents data taken from request.
type RemoveAuthor struct {
	BookID   string
	AuthorID string
}

// Validate returns Validation error if RemoveAuthor data is invalid.
func (ra *RemoveAuthor) Validate() *api.ValidationError {
	violations := make([]*api.Violation, 0)

	if ra.BookID == "" {
		violations = append(violations, api.NewViolation("bookID", "bookId cannot be empty"))
	}

	if ra.AuthorID == "" {
		violations = append(violations, api.NewViolation("authorID", "authorID cannot be empty"))
	}

	if len(violations) > 0 {
		return api.NewValidationError(violations...)
	}
	return nil
}
