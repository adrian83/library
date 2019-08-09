package storage

import (
	"context"

	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"

	"github.com/adrian83/library/pkg/book"
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

func (a *Adapter) UpdateOne(ctx context.Context, id string, str interface{}) error {

	strBts, err := bson.Marshal(str)
	if err != nil {
		return err
	}

	var m bson.M
	if err = bson.Unmarshal(strBts, &m); err != nil {
		return err
	}

	filter := bson.M{"_id": id}
	update := bson.M{"$set": m}
	_, err = a.collection.UpdateOne(ctx, filter, update)
	return err
}

func (a *Adapter) FindOne(ctx context.Context, id string, str interface{}) error {
	filter := bson.M{"_id": id}
	return a.collection.FindOne(ctx, filter).Decode(str)
}

func (a *Adapter) List(ctx context.Context, listBooks *book.ListBooks) ([]bson.M, error) {

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
		if err := cur.Decode(&m); err != nil {
			return nil, err
		}
		result = append(result, m)
	}

	return result, nil
}

func (a *Adapter) count(ctx context.Context, filter interface{}) (int64, error) {
	return a.collection.CountDocuments(ctx, filter)
}
