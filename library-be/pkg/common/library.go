package common

type Page struct {
	Limit  int   `json:"limit"`
	Offset int   `json:"offset"`
	Total  int64 `json:"total"`
}

func NewPage(limit, offset int, total int64) *Page {
	return &Page{
		Limit:  limit,
		Offset: offset,
		Total:  total,
	}
}

// ListRequest is a structure that contains data used for listing entities.
type ListRequest struct {
	Offset int
	Limit  int
	Sort   string
}

// NewListRequest is a constructor for ListRequest.
func NewListRequest(offset, limit int, sort string) *ListRequest {
	return &ListRequest{
		Offset: offset,
		Limit:  limit,
		Sort:   sort,
	}
}
