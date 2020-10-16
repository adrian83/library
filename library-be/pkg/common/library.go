package common

import (
	"time"

	"github.com/google/uuid"
)

type Page struct {
	Limit  int64 `json:"limit"`
	Offset int64 `json:"offset"`
	Total  int64 `json:"total"`
}

func NewPage(limit, offset, total int64) *Page {
	return &Page{
		Limit:  limit,
		Offset: offset,
		Total:  total,
	}
}

// ListRequest is a structure that contains data used for listing entities.
type ListRequest struct {
	Offset int64
	Limit  int64
	Sort   string
}

// NewListRequest is a constructor for ListRequest.
func NewListRequest(offset, limit int64, sort string) *ListRequest {
	return &ListRequest{
		Offset: offset,
		Limit:  limit,
		Sort:   sort,
	}
}

func NewID() string {
	return uuid.New().String()
}

func NowUTC() time.Time {
	return time.Now().UTC()
}
