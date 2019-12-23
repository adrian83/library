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

