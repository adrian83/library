package author

import "github.com/adrian83/library/pkg/api"


// CreateAuthor represents data in request body.
type CreateAuthor struct {
	Name string `json:"name"`
}

func (ca *CreateAuthor) Validate() error {
	violations := make([]*api.Violation, 0)

	if ca.Name == "" {
		violations = append(violations, api.NewViolation("name", "name cannot be empty"))
	}

	if len(violations) > 0 {
		return api.NewValidationError(violations...)
	}
	
	return nil
}


type UpdateAuthor struct {
	Name string `json:"name"`
}

func (ua *UpdateAuthor) Validate() error {
	violations := make([]*api.Violation, 0)

	if ua.Name == "" {
		violations = append(violations, api.NewViolation("name", "name cannot be empty"))
	}

	if len(violations) > 0 {
		return api.NewValidationError(violations...)
	}

	return nil
}
