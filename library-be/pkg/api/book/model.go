package book

import (
	"fmt"

	"github.com/adrian83/library/pkg/api"
)

// CreateBook represents data in request body.
type CreateBook struct {
	Title       string `json:"title"`
	Description string `json:"description"`
	ISBN        string `json:"isbn"`
}

func (cb *CreateBook) String() string {
	return fmt.Sprintf("CreateBook {title: %s, desc: %s, isbn: %s}", cb.Title, cb.Description, cb.ISBN)
}

func (cb *CreateBook) Validate() error {
	violations := make([]*api.Violation, 0)

	if cb.Title == "" {
		violations = append(violations, api.NewViolation("title", "title cannot be empty"))
	}

	if len(violations) > 0 {
		return api.NewValidationError(violations...)
	}

	return nil
}

type UpdateBook struct {
	CreateBook
	Authors []string `json:"authors"`
}

func (ub *UpdateBook) Validate() error {
	violations := make([]*api.Violation, 0)

	if ub.Title == "" {
		violations = append(violations, api.NewViolation("title", "title cannot be empty"))
	}

	if len(violations) > 0 {
		return api.NewValidationError(violations...)
	}

	return nil
}
