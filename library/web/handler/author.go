package handler

import (
	"encoding/json"
	"net/http"

	libauthor "github.com/adrian83/go-mvc-library/library/domain/author"
	libbook "github.com/adrian83/go-mvc-library/library/domain/book"
	liberrors "github.com/adrian83/go-mvc-library/library/web/errors"
	libforms "github.com/adrian83/go-mvc-library/library/web/forms"
	libjson "github.com/adrian83/go-mvc-library/library/web/json"
	libsession "github.com/adrian83/go-mvc-library/library/web/session"

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
	AuthorService libauthor.Service
	BookService   libbook.Service
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

	var a libforms.AuthorForm
	if err := json.NewDecoder(r.Body).Decode(&a); err != nil {
		return liberrors.Error500(err)
	}

	if validationErrs := a.Validate(); !validationErrs.Empty() {
		return liberrors.Error400(validationErrs)
	}

	author := libauthor.Author{
		ID:        a.ID,
		FirstName: a.FirstName,
		LastName:  a.LastName,
	}

	newAuthor, err := ah.AuthorService.Add(&author)
	if err != nil {
		return liberrors.Error500(err)
	}

	// return author
	js, err := json.Marshal(newAuthor)
	if err != nil {
		return liberrors.Error500(err)
	}
	w.Write(js)

	return nil
}

func (ah *AuthorHandler) getAuthors(w http.ResponseWriter, r *http.Request, s session.Session) error {

	pageInfo := PageInfoFrom(r)

	authors, err := ah.AuthorService.Authors(pageInfo)
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

	var a libforms.AuthorForm
	if err := json.NewDecoder(r.Body).Decode(&a); err != nil {
		return liberrors.Error500(err)
	}

	a.ID = authorID

	if validationErrs := a.Validate(); !validationErrs.Empty() {
		return liberrors.Error400(validationErrs)
	}

	au := libauthor.Author{
		ID:        a.ID,
		FirstName: a.FirstName,
		LastName:  a.LastName,
	}

	if err := ah.AuthorService.Update(&au); err != nil {
		return liberrors.Error500(err)
	}

	if err := ah.BookService.UpdateAuthor(&au); err != nil {
		return liberrors.Error500(err)
	}

	return nil
}

func (ah *AuthorHandler) deleteAuthor(w http.ResponseWriter, r *http.Request, s session.Session) error {

	authorID := GetPathParam(r, authorIDLabel)

	if err := ah.AuthorService.Delete(authorID); err != nil {
		return liberrors.Error500(err)
	}

	if err := ah.BookService.DeleteAuthor(authorID); err != nil {
		return liberrors.Error500(err)
	}

	return nil
}

func (ah *AuthorHandler) getAuthor(w http.ResponseWriter, r *http.Request, s session.Session) error {

	authorID := GetPathParam(r, authorIDLabel)

	author, err := ah.AuthorService.GetByID(authorID)
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
