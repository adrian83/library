package errs

type ErrCode string

const (
	AuthorNotFound ErrCode = "AuthorNotFound"
	BookNotFound   ErrCode = "BookNotFound"
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
