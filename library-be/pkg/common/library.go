package common

import (
	"fmt"
	"time"

	"github.com/google/uuid"
)

type Page struct {
	Limit  int64 `json:"limit"`
	Offset int64 `json:"offset"`
	Total  int64 `json:"total"`
}

func (p *Page) String() string {
	return fmt.Sprintf("Page {limit: %v, offset: %v, total: %v}", p.Limit, p.Offset, p.Total)
}

func NewPage(limit, offset, total int64) *Page {
	return &Page{
		Limit:  limit,
		Offset: offset,
		Total:  total,
	}
}

// ListQuery is a structure that contains data used for listing entities.
type ListQuery struct {
	Offset int64
	Limit  int64
	Sort   string
}

// NewListQuery is a constructor for ListRequest.
func NewListQuery(offset, limit int64, sort string) *ListQuery {
	return &ListQuery{
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
