package common

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestNewPageCreation(t *testing.T) {
	// given
	var limit, offset, total int64 = 20, 10, 123

	// when
	page := NewPage(limit, offset, total)

	// then
	assert.Equal(t, limit, page.Limit)
	assert.Equal(t, total, page.Total)
	assert.Equal(t, offset, page.Offset)
}

func TestNewListQueryCreation(t *testing.T) {
	// given
	sort := "name"

	var offset, limit int64 = 15, 10

	// when
	query := NewListQuery(offset, limit, sort)

	// then
	assert.Equal(t, limit, query.Limit)
	assert.Equal(t, offset, query.Offset)
	assert.Equal(t, sort, query.Sort)
}
