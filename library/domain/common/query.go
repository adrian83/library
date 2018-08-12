package common

import (
	"fmt"

	"gopkg.in/mgo.v2/bson"
)

// Or returns mgo query which returns documents which at least one
// given field matches (case insensitive) at least one given word.
func Or(words, fields []string) bson.M {
	bsons := make([]bson.M, 0)
	for _, word := range words {
		for _, field := range fields {
			bs := bson.M{field: bson.M{"$regex": fmt.Sprintf(".*%v.*", word), "$options": "i"}}
			bsons = append(bsons, bs)
		}
	}
	return bson.M{"$or": bsons}
}
