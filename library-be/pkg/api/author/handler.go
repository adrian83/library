package author

import (
	"context"
	"net/http"

	"github.com/adrian83/library/pkg/api"
	"github.com/adrian83/library/pkg/author"
	"github.com/adrian83/library/pkg/common"
	"github.com/gorilla/mux"
)

const (
	authorIDParam = "authorId"
)

type authorPersister interface {
	Persist(context.Context, *author.Author) error
}

type authorDeleter interface {
	Delete(ctx context.Context, authorID string) error
}

type authorUpdater interface {
	Update(context.Context, *author.Author) error
}

type authorGetter interface {
	Find(ctx context.Context, id string) (*author.Author, error)
}

type authorLister interface {
	List(ctx context.Context, listAuthors *common.ListRequest) (*author.AuthorsPage, error)
}

// HandleListing is a handler / controller for listing authors.
func HandleListing(authorLister authorLister) func(http.ResponseWriter, *http.Request) {
	return func(w http.ResponseWriter, r *http.Request) {
		ctx, cancel := context.WithTimeout(context.Background(), api.RequestTimeout)
		defer cancel()

		listAuthors := api.ParseListRequest(r.URL.Query())

		page, err := authorLister.List(ctx, listAuthors)
		if err != nil {
			api.HandleError(err, w)
			return
		}

		api.ResponseJSON(http.StatusOK, page, w)
	}
}

// HandleGetting is a handler / controller for getting Author by its Id.
func HandleGetting(authorGetter authorGetter) func(http.ResponseWriter, *http.Request) {
	return func(w http.ResponseWriter, r *http.Request) {
		ctx, cancel := context.WithTimeout(context.Background(), api.RequestTimeout)
		defer cancel()

		authorID := mux.Vars(r)[authorIDParam]

		athr, err := authorGetter.Find(ctx, authorID)
		if err != nil {
			api.HandleError(err, w)
			return
		}

		api.ResponseJSON(http.StatusOK, athr, w)
	}
}

// HandleUpdating is a handler / controller for updating author.
func HandleUpdating(authorUpdater authorUpdater) func(http.ResponseWriter, *http.Request) {
	return func(w http.ResponseWriter, r *http.Request) {
		ctx, cancel := context.WithTimeout(context.Background(), api.RequestTimeout)
		defer cancel()

		authorID := mux.Vars(r)[authorIDParam]

		var updateAuthor UpdateAuthor
		if err := api.UnmarshalAndValidate(r.Body, &updateAuthor); err != nil {
			api.HandleError(err, w)
			return
		}

		athr := author.NewAuthorWithID(authorID, updateAuthor.Name)
		if err := authorUpdater.Update(ctx, athr); err != nil {
			api.HandleError(err, w)
			return
		}

		api.ResponseJSON(http.StatusOK, athr, w)
	}
}

// HandleDeleting is a handler / controller for deleting author.
func HandleDeleting(authorDeleter authorDeleter) func(http.ResponseWriter, *http.Request) {
	return func(w http.ResponseWriter, r *http.Request) {
		ctx, cancel := context.WithTimeout(context.Background(), api.RequestTimeout)
		defer cancel()

		authorID := mux.Vars(r)[authorIDParam]

		if err := authorDeleter.Delete(ctx, authorID); err != nil {
			api.HandleError(err, w)
			return
		}

		api.ResponseJSON(http.StatusOK, nil, w)
	}
}

// HandlePersisting is a handler / controller for persisting authors.
func HandlePersisting(authorPersister authorPersister) func(http.ResponseWriter, *http.Request) {
	return func(w http.ResponseWriter, r *http.Request) {
		ctx, cancel := context.WithTimeout(context.Background(), api.RequestTimeout)
		defer cancel()

		var createAuthor CreateAuthor
		if err := api.UnmarshalAndValidate(r.Body, &createAuthor); err != nil {
			api.HandleError(err, w)
			return
		}

		athr := author.NewAuthor(createAuthor.Name)
		if err := authorPersister.Persist(ctx, athr); err != nil {
			api.HandleError(err, w)
			return
		}

		api.ResponseJSON(http.StatusCreated, athr, w)
	}
}
