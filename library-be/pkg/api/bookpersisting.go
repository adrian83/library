package api

import "net/http"

type bookPersister interface {
	Persist(title string) error
}

func HandleBooksPersisting(bookPersister bookPersister, w http.ResponseWriter, r *http.Request) {

}
