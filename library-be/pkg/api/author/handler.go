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
	Persist(context.Context, *author.CreateAuthorCommand) (*author.Author, error)
}

type authorDeleter interface {
	Delete(context.Context, *author.DeleteAuthorCommand) error
}

type authorUpdater interface {
	Update(context.Context, *author.UpdateAuthorCommand) error
}

type authorGetter interface {
	Find(context.Context, string) (*author.Author, error)
}

type authorLister interface {
	List(context.Context, *common.ListQuery) (*author.AuthorsPage, error)
}

// HandleListing is a handler / controller for listing authors.
func HandleListing(authorLister authorLister, logger api.Logger) func(http.ResponseWriter, *http.Request) {
	return func(w http.ResponseWriter, r *http.Request) {
		ctx, cancel := context.WithTimeout(context.Background(), api.RequestTimeout)
		defer cancel()

		logger.Infof("authors listing request: %v", r)

		listAuthors := api.ParseListRequest(r.URL.Query())

		page, err := authorLister.List(ctx, listAuthors)
		if err != nil {
			api.HandleError(err, w, logger)
			return
		}

		logger.Infof("authors listing result: %v", page)

		api.ResponseJSON(http.StatusOK, page, w, logger)
	}
}

// HandleGetting is a handler / controller for getting Author by its Id.
func HandleGetting(authorGetter authorGetter, logger api.Logger) func(http.ResponseWriter, *http.Request) {
	return func(w http.ResponseWriter, r *http.Request) {
		ctx, cancel := context.WithTimeout(context.Background(), api.RequestTimeout)
		defer cancel()

		logger.Infof("author getting request: %v", r)

		authorID := mux.Vars(r)[authorIDParam]

		athr, err := authorGetter.Find(ctx, authorID)
		if err != nil {
			api.HandleError(err, w, logger)
			return
		}

		logger.Infof("author getting result: %v", athr)

		api.ResponseJSON(http.StatusOK, athr, w, logger)
	}
}

// HandleUpdating is a handler / controller for updating author.
func HandleUpdating(authorUpdater authorUpdater, logger api.Logger) func(http.ResponseWriter, *http.Request) {
	return func(w http.ResponseWriter, r *http.Request) {
		ctx, cancel := context.WithTimeout(context.Background(), api.RequestTimeout)
		defer cancel()

		logger.Infof("author updating request: %v", r)

		authorID := mux.Vars(r)[authorIDParam]

		var updateAuthor UpdateAuthor
		if err := api.UnmarshalAndValidate(r.Body, &updateAuthor); err != nil {
			api.HandleError(err, w, logger)
			return
		}

		req := author.NewUpdateAuthorCommand(authorID, updateAuthor.Name, updateAuthor.Description)
		if err := authorUpdater.Update(ctx, req); err != nil {
			api.HandleError(err, w, logger)
			return
		}

		logger.Infof("author updating result: %v", req)

		api.ResponseJSON(http.StatusOK, nil, w, logger)
	}
}

// HandleDeleting is a handler / controller for deleting author.
func HandleDeleting(authorDeleter authorDeleter, logger api.Logger) func(http.ResponseWriter, *http.Request) {
	return func(w http.ResponseWriter, r *http.Request) {
		ctx, cancel := context.WithTimeout(context.Background(), api.RequestTimeout)
		defer cancel()

		logger.Infof("author deleting request: %v", r)

		authorID := mux.Vars(r)[authorIDParam]

		deleteAuthorCommand := author.NewDeleteAuthorCommand(authorID)

		if err := authorDeleter.Delete(ctx, deleteAuthorCommand); err != nil {
			api.HandleError(err, w, logger)
			return
		}

		logger.Info("author deleting done")

		api.ResponseJSON(http.StatusOK, nil, w, logger)
	}
}

// HandlePersisting is a handler / controller for persisting authors.
func HandlePersisting(authorPersister authorPersister, logger api.Logger) func(http.ResponseWriter, *http.Request) {
	return func(w http.ResponseWriter, r *http.Request) {
		ctx, cancel := context.WithTimeout(context.Background(), api.RequestTimeout)
		defer cancel()

		logger.Infof("author persisting request: %v", r)

		var createAuthor CreateAuthor
		if err := api.UnmarshalAndValidate(r.Body, &createAuthor); err != nil {
			api.HandleError(err, w, logger)
			return
		}

		req := author.NewCreateAuthorCommand(createAuthor.Name, createAuthor.Description)

		athr, err := authorPersister.Persist(ctx, req)
		if err != nil {
			api.HandleError(err, w, logger)
			return
		}

		logger.Infof("author persiting result: %v", athr)

		api.ResponseJSON(http.StatusCreated, athr, w, logger)
	}
}
