package author

import (
	"testing"

	"github.com/adrian83/library/pkg/storage"
)

var (
	authorShakespeare = NewAuthor(
		"William Shakespeare",
		"Shakespeare was born and raised in Stratford-upon-Avon, Warwickshire. At the age...",
	)

	authorGoethe = NewAuthor(
		"Johann Wolfgang von Goethe",
		"Johann Wolfgang von Goethe was a German writer and statesman. His works...",
	)

	entityShakespear = NewEntity(
		authorShakespeare.ID,
		authorShakespeare.Name,
		authorShakespeare.Description,
		authorShakespeare.CreationDate,
	)

	entityGoethe = NewEntity(
		authorGoethe.ID,
		authorGoethe.Name,
		authorGoethe.Description,
		authorGoethe.CreationDate,
	)

	mapShakespeare = map[string]interface{}{
		"id":           authorShakespeare.ID,
		"name":         authorShakespeare.Name,
		"description":  authorShakespeare.Description,
		"creationDate": authorShakespeare.CreationDate,
	}

	mapGoethe = map[string]interface{}{
		"id":           authorGoethe.ID,
		"name":         authorGoethe.Name,
		"description":  authorGoethe.Description,
		"creationDate": authorGoethe.CreationDate,
	}
)

func TestEntityImplementsDocument(t *testing.T) {
	var _ storage.Document = entityGoethe
}
