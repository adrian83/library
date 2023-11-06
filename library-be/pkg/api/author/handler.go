package author

import (
	"context"
	"net/http"

	"github.com/adrian83/library/pkg/api"
	"github.com/adrian83/library/pkg/author"

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
	Find(context.Context, *author.FindAuthorQuery) (*author.Author, error)
}

type authorLister interface {
	List(context.Context, *author.ListAuthorsQuery) (*author.AuthorsPage, error)
}

// HandleListing is a handler / controller for listing authors.
func HandleListing(authorLister authorLister, logger api.Logger) func(http.ResponseWriter, *http.Request) {
	return func(w http.ResponseWriter, r *http.Request) {
		ctx, cancel := context.WithTimeout(context.Background(), api.RequestTimeout)
		defer cancel()

		//logger.Infof("list authors request: %v", r)

		listAuthors := api.ParseListQuery(r.URL.Query())
		listAuthorsQuery := author.NewListAuthorsQuery(listAuthors)
		page, err := authorLister.List(ctx, listAuthorsQuery)
		if err != nil {
			api.HandleError(err, w, logger)
			return
		}

		logger.Infof("list authors result: %v", page)

		api.ResponseJSON(http.StatusOK, page, w, logger)
	}
}

// HandleGetting is a handler / controller for getting Author by its Id.
func HandleGetting(authorGetter authorGetter, logger api.Logger) func(http.ResponseWriter, *http.Request) {
	return func(w http.ResponseWriter, r *http.Request) {
		ctx, cancel := context.WithTimeout(context.Background(), api.RequestTimeout)
		defer cancel()

		//logger.Infof("get author request: %v", r)

		authorID := mux.Vars(r)[authorIDParam]
		findAuthorQuery := author.NewFindAuthorQuery(authorID)
		athr, err := authorGetter.Find(ctx, findAuthorQuery)
		if err != nil {
			api.HandleError(err, w, logger)
			return
		}

		logger.Infof("get author result: %v", athr)

		api.ResponseJSON(http.StatusOK, athr, w, logger)
	}
}

// HandleUpdating is a handler / controller for updating author.
func HandleUpdating(authorUpdater authorUpdater, logger api.Logger) func(http.ResponseWriter, *http.Request) {
	return func(w http.ResponseWriter, r *http.Request) {
		ctx, cancel := context.WithTimeout(context.Background(), api.RequestTimeout)
		defer cancel()

		//logger.Infof("update author request: %v", r)

		authorID := mux.Vars(r)[authorIDParam]
		var updateAuthor UpdateAuthor
		if err := api.UnmarshalAndValidate(r.Body, &updateAuthor); err != nil {
			api.HandleError(err, w, logger)
			return
		}

		updateAuthorCommand := author.NewUpdateAuthorCommand(authorID, updateAuthor.Name, updateAuthor.Description)
		if err := authorUpdater.Update(ctx, updateAuthorCommand); err != nil {
			api.HandleError(err, w, logger)
			return
		}

		logger.Infof("update author result: %v", updateAuthorCommand)

		api.ResponseJSON(http.StatusOK, nil, w, logger)
	}
}

// HandleDeleting is a handler / controller for deleting author.
func HandleDeleting(authorDeleter authorDeleter, logger api.Logger) func(http.ResponseWriter, *http.Request) {
	return func(w http.ResponseWriter, r *http.Request) {
		ctx, cancel := context.WithTimeout(context.Background(), api.RequestTimeout)
		defer cancel()

		//logger.Infof("delete author request: %v", r)

		authorID := mux.Vars(r)[authorIDParam]
		deleteAuthorCommand := author.NewDeleteAuthorCommand(authorID)
		if err := authorDeleter.Delete(ctx, deleteAuthorCommand); err != nil {
			api.HandleError(err, w, logger)
			return
		}

		logger.Info("delete author done")

		api.ResponseJSON(http.StatusOK, nil, w, logger)
	}
}

// HandlePersisting is a handler / controller for persisting authors.
func HandlePersisting(authorPersister authorPersister, logger api.Logger) func(http.ResponseWriter, *http.Request) {
	return func(w http.ResponseWriter, r *http.Request) {
		ctx, cancel := context.WithTimeout(context.Background(), api.RequestTimeout)
		defer cancel()

		//logger.Infof("persist author request: %v", r)

		var createAuthor CreateAuthor
		if err := api.UnmarshalAndValidate(r.Body, &createAuthor); err != nil {
			api.HandleError(err, w, logger)
			return
		}

		createAuthorCommand := author.NewCreateAuthorCommand(createAuthor.Name, createAuthor.Description)
		athr, err := authorPersister.Persist(ctx, createAuthorCommand)
		if err != nil {
			api.HandleError(err, w, logger)
			return
		}

		logger.Infof("persist author result: %v", athr)

		api.ResponseJSON(http.StatusCreated, athr, w, logger)
	}
}
