package book

import (
	"testing"

	"github.com/adrian83/library/pkg/author"
	"github.com/adrian83/library/pkg/storage"
)

var (
	authorShakespeare = author.NewAuthor(
		"William Shakespeare",
		"Shakespeare was born and raised in Stratford-upon-Avon, Warwickshire. At the age...",
	)

	authorGoethe = author.NewAuthor(
		"Johann Wolfgang von Goethe",
		"Johann Wolfgang von Goethe was a German writer and statesman. His works...",
	)

	bookHamlet = NewBook(
		"Hamlet",
		"The Tragedy of Hamlet, Prince of Denmark, often shortened to Hamlet, is a tragedy written by William Shakespeare sometime between 1599 and 1601. It is...",
		"isbn-abc-def-ghi",
		author.NewAuthors(authorShakespeare),
	)

	bookFaust = NewBook(
		"Faust",
		"Faust is a tragic play in two parts by Johann Wolfgang von Goethe, usually known in English as Faust, Part One and Faust, Part Two. Although rarely staged in its entirety, it is the play...",
		"isbn-mno-prs-tuv",
		author.NewAuthors(authorGoethe),
	)

	bookWithoutAuthor = NewBook(
		"Just a title",
		"Just a description", "isbn-def-ghi-jkl",
		nil,
	)

	entityHamlet = NewEntity(
		bookHamlet.ID,
		bookHamlet.Title,
		bookHamlet.Description,
		bookHamlet.ISBN,
		[]string{authorShakespeare.ID},
		bookHamlet.CreationDate,
	)

	entityFaust = NewEntity(
		bookFaust.ID,
		bookFaust.Title,
		bookFaust.Description,
		bookFaust.ISBN,
		[]string{authorGoethe.ID},
		bookFaust.CreationDate,
	)

	entityWithoutAuthor = NewEntity(
		bookWithoutAuthor.ID,
		bookWithoutAuthor.Title,
		bookWithoutAuthor.Description,
		bookWithoutAuthor.ISBN, []string{},
		bookWithoutAuthor.CreationDate,
	)

	mapHamlet = map[string]interface{}{
		"id":           entityHamlet.ID,
		"title":        entityHamlet.Title,
		"authors":      entityHamlet.Authors,
		"description":  entityHamlet.Description,
		"isbn":         entityHamlet.ISBN,
		"creationDate": entityHamlet.CreationDate,
	}
	mapFaust = map[string]interface{}{
		"id":           entityFaust.ID,
		"title":        entityFaust.Title,
		"authors":      entityFaust.Authors,
		"description":  entityFaust.Description,
		"isbn":         entityFaust.ISBN,
		"creationDate": entityFaust.CreationDate,
	}
)

func TestEntityImplementsDocument(t *testing.T) {
	var _ storage.Document = entityFaust
}
