package db

import (
	"testing"
)

func TestMongoImplementsMongo(t *testing.T) {
	var _ Mongo = &mongo{}
}
