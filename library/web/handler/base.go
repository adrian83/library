package handler

import (
	"net/http"
	"net/url"
	"strconv"

	"github.com/gorilla/mux"

	"github.com/adrian83/go-mvc-library/library/domain/common"
)

const (
	apiV1 = "/rest/api/v1.0/"
)

// Route represents handler path and handler action.
type Route struct {
	Path    string
	Handler http.Handler
	Method  string
}

// Controller represents web controllers.
type Controller interface {
	Routes() []Route
}

// PageInfoFrom returns PageInfo created from GET params.
func PageInfoFrom(r *http.Request) *common.PageInfo {

	page := 0
	if pageStrs := r.URL.Query()["page"]; len(pageStrs) > 0 {
		if cand, err := strconv.Atoi(pageStrs[0]); err == nil && cand >= 0 {
			page = cand
		}
	}

	phrase := ""
	if phraseStrs := r.URL.Query()["phrase"]; len(phraseStrs) > 0 {
		if cand, err := url.QueryUnescape(phraseStrs[0]); err == nil {
			phrase = cand
		}
	}

	size := -1
	if sizeStrs := r.URL.Query()["size"]; len(sizeStrs) > 0 {
		if cand, err := strconv.Atoi(sizeStrs[0]); err == nil && cand >= 0 {
			size = cand
		}
	}

	sort := ""
	if sortStrs := r.URL.Query()["sort"]; len(sortStrs) > 0 {
		sort = sortStrs[0]
	}

	return common.NewPageInfo(page, size, phrase, sort)

}

// GetPathParam returns path param with given name.
func GetPathParam(r *http.Request, name string) string {
	vars := mux.Vars(r)
	return vars[name]
}
