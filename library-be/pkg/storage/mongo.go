package storage

import (
	"context"

	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
)

type Adapter struct {
	collection *mongo.Collection
}

func NewAdapter(coll *mongo.Collection) *Adapter {
	return &Adapter{
		collection: coll,
	}
}

func (a *Adapter) InsertOne(ctx context.Context, doc interface{}) error {

	_, err := a.collection.InsertOne(ctx, doc)
	return err
}

func (a *Adapter) List(ctx context.Context) ([]bson.M, error) {

	cur, err := a.collection.Find(ctx, bson.D{})
	if err != nil {
		return nil, err
	}
	defer cur.Close(ctx)

	if err := cur.Err(); err != nil {
		return nil, err
	}

	result := make([]bson.M, 0)
	for cur.Next(ctx) {
		var m bson.M
		err := cur.Decode(&m)
		if err != nil {
			return nil, err
		}
		result = append(result, m)
	}

	return result, nil
}
