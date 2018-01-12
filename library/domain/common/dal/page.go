package dal

import "fmt"

// PageInfo is a struct used in DALs in queries that returs collections of structs.
type PageInfo struct {
	Number int
	Size   int
	Sort   string
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
	return fmt.Sprintf("PageInfo { Number: %v, Size: %v, Sort: %v }",
		pi.Number, pi.Size, pi.Sort)
}

// NewPageInfo returns page info with given page number and few default values.
func NewPageInfo(no int) *PageInfo {
	return &PageInfo{
		Number: no,
		Size:   1000,
		Sort:   "_id",
	}
}
