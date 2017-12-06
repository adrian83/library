package book

import (
	"testing"
)

func TestMongoDalImplementsBookDal(t *testing.T) {
	var _ Dal = MongoDal{}
}
