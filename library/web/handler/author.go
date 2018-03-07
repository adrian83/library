package handler

import (
	"encoding/json"
	"log"
	"net/http"

	libauthor "github.com/adrian83/go-mvc-library/library/domain/author"
	libbook "github.com/adrian83/go-mvc-library/library/domain/book"
	"github.com/adrian83/go-mvc-library/library/domain/common/model"
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

func (ah *AuthorHandler) addAuthor(w http.ResponseWriter, r *http.Request, s session.Session) {

	var newAuthorForm libforms.AuthorForm
	if err := json.NewDecoder(r.Body).Decode(&newAuthorForm); err != nil {
		log.Printf("Error while decoding new author. Error: %v", err)
		liberrors.Error500(err).Write(w)
	}

	if validationErrs := newAuthorForm.Validate(); !validationErrs.Empty() {
		log.Printf("Validation of new author failed. Errors: %v", validationErrs)
		liberrors.Error400(validationErrs).Write(w)
	}

	author, err := ah.AuthorService.Add(newAuthorForm.ToAuthor())
	if err != nil {
		log.Printf("Persisting new author failed. Errors: %v", err)
		liberrors.Error500(err).Write(w)
	}

	if err := json.NewEncoder(w).Encode(author); err != nil {
		log.Printf("Error while marshaling author to JSON. Error: %v", err)
		liberrors.Error500(err).Write(w)
	}

}

func (ah *AuthorHandler) getAuthors(w http.ResponseWriter, r *http.Request, s session.Session) {
	pageInfo := PageInfoFrom(r)

	authors, err := ah.AuthorService.Authors(pageInfo)
	if err != nil {
		log.Printf("Error while getting authors. Error: %v", err)
		liberrors.Error500(err).Write(w)
	}

	if err = json.NewEncoder(w).Encode(authors); err != nil {
		log.Printf("Error while marshalling authors to JSON. Error: %v", err)
		liberrors.Error500(err).Write(w)
	}
}

func (ah *AuthorHandler) updateAuthor(w http.ResponseWriter, r *http.Request, s session.Session) {

	authorID := GetPathParam(r, authorIDLabel)
	if !model.IsIDValid(authorID) {
		log.Printf("Invalid author ID %v", authorID)
		liberrors.Error400([]*model.ValidationError{&model.InvalidID}).Write(w)
	}

	var authorForm libforms.AuthorForm
	if err := json.NewDecoder(r.Body).Decode(&authorForm); err != nil {
		log.Printf("Error while decoding author. Error: %v", err)
		liberrors.Error500(err).Write(w)
	}

	authorForm.ID = authorID

	if validationErrs := authorForm.Validate(); !validationErrs.Empty() {
		log.Printf("Validation of updated author failed. Errors: %v", validationErrs)
		liberrors.Error400(validationErrs).Write(w)
	}

	author := authorForm.ToAuthor()

	if err := ah.AuthorService.Update(author); err != nil {
		log.Printf("Error while updating author %v. Error: %v", author, err)
		liberrors.Error500(err).Write(w)
	}

	if err := ah.BookService.UpdateAuthor(author); err != nil {
		log.Printf("Error while updating author %v in books. Error: %v", author, err)
		liberrors.Error500(err).Write(w)
	}

}

func (ah *AuthorHandler) deleteAuthor(w http.ResponseWriter, r *http.Request, s session.Session) {

	authorID := GetPathParam(r, authorIDLabel)
	if !model.IsIDValid(authorID) {
		log.Printf("Invalid author ID %v", authorID)
		liberrors.Error400([]*model.ValidationError{&model.InvalidID}).Write(w)
	}

	if err := ah.AuthorService.Delete(authorID); err != nil {
		log.Printf("Error while deleting author from DB. Error: %v", err)
		liberrors.Error500(err).Write(w)
	}

	if err := ah.BookService.DeleteAuthor(authorID); err != nil {
		log.Printf("Error while deleting author from books. Error: %v", err)
		liberrors.Error500(err).Write(w)
	}

}

func (ah *AuthorHandler) getAuthor(w http.ResponseWriter, r *http.Request, s session.Session) {

	authorID := GetPathParam(r, authorIDLabel)
	if !model.IsIDValid(authorID) {
		log.Printf("Invalid author ID %v", authorID)
		liberrors.Error400([]*model.ValidationError{&model.InvalidID}).Write(w)
	}

	author, err := ah.AuthorService.GetByID(authorID)
	if err != nil {
		log.Printf("Error while getting author from DB. Error: %v", err)
		liberrors.Error500(err).Write(w)
	}

	if err = json.NewEncoder(w).Encode(author); err != nil {
		log.Printf("Error while marshalling author to JSON. Error: %v", err)
		liberrors.Error500(err).Write(w)
	}
}
