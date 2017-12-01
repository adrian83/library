package handler

import (
	"encoding/json"
	"errors"
	"net/http"

	author "github.com/adrian83/go-mvc-library/library/domain/author"

	liberrors "github.com/adrian83/go-mvc-library/library/web/errors"
	libjson "github.com/adrian83/go-mvc-library/library/web/json"
	libsession "github.com/adrian83/go-mvc-library/library/web/session"
	libvalidation "github.com/adrian83/go-mvc-library/library/web/validation"

	"github.com/adrian83/go-redis-session"
)

const (
	authorIDLabel = "author_id"
	authorLabel   = "author"
	authorsLabel  = "authors"
)

// AuthorHandler is a handler for everything author-related.
type AuthorHandler struct {
	SessionStore  session.Store
	AuthorService author.AuthorService
}

// Routes implements Controller interface.
func (ah *AuthorHandler) Routes() []Route {
	return []Route{
		Route{
			Path:    apiV1 + "authors",
			Handler: &libjson.JsonHandler{Handler: libsession.WithSession(ah.SessionStore, ah.addAuthor)},
			Method:  "POST",
		},
		Route{
			Path:    apiV1 + "authors",
			Handler: &libjson.JsonHandler{Handler: libsession.WithSession(ah.SessionStore, ah.getAuthors)},
			Method:  "GET",
		},
		Route{
			Path:    apiV1 + "authors/{author_id}",
			Handler: &libjson.JsonHandler{Handler: libsession.WithSession(ah.SessionStore, ah.updateAuthor)},
			Method:  "PUT",
		},
		Route{
			Path:    apiV1 + "authors/{author_id}",
			Handler: &libjson.JsonHandler{Handler: libsession.WithSession(ah.SessionStore, ah.deleteAuthor)},
			Method:  "DELETE",
		},
		Route{
			Path:    apiV1 + "authors/{author_id}",
			Handler: &libjson.JsonHandler{Handler: libsession.WithSession(ah.SessionStore, ah.getAuthor)},
			Method:  "GET",
		},
	}
}

func (ah *AuthorHandler) addAuthor(w http.ResponseWriter, r *http.Request, s session.Session) error {

	var a author.Author
	if err := json.NewDecoder(r.Body).Decode(&a); err != nil {
		return liberrors.Error500(err)
	}

	validationErrs, ok := (&libvalidation.AuthorValidator{}).Validate(a)
	if !ok {
		return liberrors.Error500(errors.New("type assertion error"))
	}

	if len(validationErrs) > 0 {
		return liberrors.Error400(validationErrs)
	}

	a, err := ah.AuthorService.Add(a)
	if err != nil {
		return liberrors.Error500(err)
	}

	// return author
	js, err := json.Marshal(a)
	if err != nil {
		return liberrors.Error500(err)
	}
	w.Write(js)

	return nil
}

func (ah *AuthorHandler) getAuthors(w http.ResponseWriter, r *http.Request, s session.Session) error {

	authors, err := ah.AuthorService.GetAuthors()
	if err != nil {
		return liberrors.Error500(err)
	}

	// return authors
	js, err := json.Marshal(authors)
	if err != nil {
		return liberrors.Error500(err)
	}
	w.Write(js)

	return nil
}

func (ah *AuthorHandler) updateAuthor(w http.ResponseWriter, r *http.Request, s session.Session) error {

	authorID := GetPathParam(r, authorIDLabel)

	var authorUpdate author.AuthorUpdate
	if err := json.NewDecoder(r.Body).Decode(&authorUpdate); err != nil {
		return liberrors.Error500(err)
	}

	authorUpdate.ID = authorID

	validationErrs, ok := (&libvalidation.AuthorUpdateValidator{}).Validate(authorUpdate)
	if !ok {
		return liberrors.Error500(errors.New("type assertion error"))
	}
	if len(validationErrs) > 0 {
		return liberrors.Error400(validationErrs)
	}

	if err := ah.AuthorService.Update(authorUpdate); err != nil {
		return liberrors.Error500(err)
	}

	return nil
}

func (ah *AuthorHandler) deleteAuthor(w http.ResponseWriter, r *http.Request, s session.Session) error {

	authorID := GetPathParam(r, authorIDLabel)

	err := ah.AuthorService.Delete(authorID)
	if err != nil {
		return liberrors.Error500(err)
	}

	return nil
}

func (ah *AuthorHandler) getAuthor(w http.ResponseWriter, r *http.Request, s session.Session) error {

	authorID := GetPathParam(r, authorIDLabel)

	author, err := ah.AuthorService.GetAuthor(authorID)
	if err != nil {
		return liberrors.Error500(err)
	}

	// return author
	js, err := json.Marshal(author)
	if err != nil {
		return liberrors.Error500(err)
	}
	w.Write(js)

	return nil
}
