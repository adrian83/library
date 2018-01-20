package dal

import "fmt"

const (
	defPageSize = 5
)

// PageInfo is a struct used in DALs in queries that returs collections of structs.
type PageInfo struct {
	Number int
	Size   int
	Sort   string
	Phrase string
}

// From returns lower index for listing query.
func (pi *PageInfo) From() int {
	return pi.Number * pi.Size
}

// To returns higher index for listing query.
func (pi *PageInfo) To() int {
	return (pi.Number + 1) * pi.Size
}

// String returns string representation of this struct.
func (pi *PageInfo) String() string {
	return fmt.Sprintf("PageInfo { Number: %v, Size: %v, Sort: %v, Phrase: %v }",
		pi.Number, pi.Size, pi.Sort, pi.Phrase)
}

// NewPageInfo returns page info with given values or default ones..
func NewPageInfo(no, size int, phrase, sort string) *PageInfo {
	pageNumber := 0
	if no > 0 {
		pageNumber = no
	}

	pageSize := defPageSize
	if size > 0 {
		pageSize = size
	}

	searchPhrase := ""
	if phrase != "" {
		searchPhrase = phrase
	}

	pageSort := "_id"
	if sort != "" {
		pageSort = sort
	}

	return &PageInfo{
		Number: pageNumber,
		Size:   pageSize,
		Sort:   pageSort,
		Phrase: searchPhrase,
	}
}

// Page represents single page in Pagination.
type Page struct {
	TotalElements int `json:"totalElements"`
	Size          int `json:"pageSize"`
	Current       int `json:"currentPage"`
}

// String returns string representation of this struct.
func (pi *Page) String() string {
	return fmt.Sprintf("Page { TotalElements: %v, Size: %v, Current: %v }",
		pi.TotalElements, pi.Size, pi.Current)
}
