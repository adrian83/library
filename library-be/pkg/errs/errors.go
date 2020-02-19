package errs

type ErrCode string

const (
	// AuthorNotFound is a code of an error used when Autor cannot be found.
	AuthorNotFound ErrCode = "AuthorNotFound"
	// BookNotFound is a code of an error used when Book cannot be found.
	BookNotFound ErrCode = "BookNotFound"
)

type LibError struct {
	Code ErrCode
}

func (e *LibError) Error() string {
	return string(e.Code)
}

func (e *LibError) AuthorNotFound() bool {
	return e.Code == AuthorNotFound
}

func (e *LibError) BookNotFound() bool {
	return e.Code == BookNotFound
}

func NewAuthorNotFoundErr() *LibError {
	return &LibError{Code: AuthorNotFound}
}

func NewBookNotFoundErr() *LibError {
	return &LibError{Code: BookNotFound}
}
