package author



import (
	"context"
	"net/http"

	"github.com/adrian83/library/pkg/author"
)


type authorPersister interface {
	Persist(ctx context.Context, b author.Author) error
}



// HandlePersisting is a handler / controller for persisting authors.
func HandlePersisting(authorPersister authorPersister) func(http.ResponseWriter, *http.Request) {

	return func(w http.ResponseWriter, r *http.Request) {
	}
}

/*

type bookReaderPersister interface {
	Find(ctc context.Context, id string) (book.Book, error)
	Update(ctx context.Context, book book.Book) error
}



// HandleRemovingAuthor is a handler / controller for removing author from book.
func HandleRemovingAuthor(service bookReaderPersister) func(http.ResponseWriter, *http.Request) {

	return func(w http.ResponseWriter, r *http.Request) {

		ctx, _ := context.WithTimeout(context.Background(), RequestTimeout)

		vars := mux.Vars(r)
		bookID := vars["bookId"]
		authorID := vars["authorId"]

		removeAuthor := &RemoveAuthor{
			BookID:   bookID,
			AuthorID: authorID,
		}
		if err := removeAuthor.Validate(); err != nil {
			api.HandleError(err, w)
			return
		}

		b, err := service.Find(ctx, removeAuthor.BookID)
		if err != nil {
			HandleError(err, w)
			return
		}

		if err := b.RemoveAuthor(removeAuthor.AuthorID); err != nil {
			HandleError(err, w)
			return
		}

		if err := service.Update(ctx, b); err != nil {
			HandleError(err, w)
			return
		}

		respBts, err := json.Marshal(b)
		if err != nil {
			HandleError(err, w)
			return
		}

		ResponseJSON(http.StatusCreated, respBts, w)
	}
}



// HandleAddingAuthor is a handler / controller for adding author to book.
func HandleAddingAuthor(service bookReaderPersister) func(http.ResponseWriter, *http.Request) {

	return func(w http.ResponseWriter, r *http.Request) {

		ctx, _ := context.WithTimeout(context.Background(), RequestTimeout)

		vars := mux.Vars(r)
		bookID := vars["bookId"]

		addAuthor := new(AddAuthor)
		if err := UnmarshalAndValidate(r.Body, addAuthor); err != nil {
			HandleError(err, w)
			return
		}

		b, err := service.Find(ctx, bookID)
		if err != nil {
			HandleError(err, w)
			return
		}

		author := book.NewAuthor(addAuthor.ID, addAuthor.Name)
		if err := b.AddAuthor(*author); err != nil {
			HandleError(err, w)
			return
		}

		if err := service.Update(ctx, b); err != nil {
			HandleError(err, w)
			return
		}

		respBts, err := json.Marshal(b)
		if err != nil {
			HandleError(err, w)
			return
		}

		ResponseJSON(http.StatusCreated, respBts, w)
	}
}



*/