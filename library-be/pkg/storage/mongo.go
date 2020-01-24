package storage

import (
	"context"
	"fmt"

	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
)

type logger interface {
	Infof(template string, args ...interface{})
}

// Adapter is a wrapper on MongoDB collection.
type Adapter struct {
	collection *mongo.Collection
	logger     logger
}

// NewAdapter is a constructor for Adapter.
func NewAdapter(coll *mongo.Collection, logger logger) *Adapter {
	return &Adapter{
		collection: coll,
		logger:     logger,
	}
}

// InsertOne inserts one document into MongoDB collection.
func (a *Adapter) InsertOne(ctx context.Context, doc interface{}) error {
	a.logger.Infof("inserting document: %v", doc)

	output, err := a.collection.InsertOne(ctx, doc)
	if err != nil {
		return fmt.Errorf("cannot insert document, error: %v", err)
	}

	a.logger.Infof("inserting document response: %v", output)

	return err
}

func (a *Adapter) UpdateOne(ctx context.Context, id string, str interface{}) error {
	strBts, err := bson.Marshal(str)
	if err != nil {
		return err
	}

	var m bson.M
	if uEerr := bson.Unmarshal(strBts, &m); err != nil {
		return uEerr
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

func (a *Adapter) DeleteOne(ctx context.Context, id string) error {
	filter := bson.M{"_id": id}
	_, err := a.collection.DeleteOne(ctx, filter)

	return err
}

func (a *Adapter) List(ctx context.Context, criteria bson.D, offset, size int64) ([]map[string]interface{}, error) {
	cur, err := a.collection.Find(ctx, criteria, a.Skip(offset), a.Limit(size))
	if err != nil {
		return nil, err
	}
	defer cur.Close(ctx)

	if err := cur.Err(); err != nil {
		return nil, err
	}

	result := make([]map[string]interface{}, 0)

	for cur.Next(ctx) {
		var m map[string]interface{}
		if err := cur.Decode(&m); err != nil {
			return nil, err
		}

		fmt.Printf("Next: %v", m)
		result = append(result, m)
	}

	return result, nil
}

func (a *Adapter) Count(ctx context.Context, filter interface{}) (int64, error) {
	return a.collection.CountDocuments(ctx, filter)
}

func (a *Adapter) Skip(offset int64) *options.FindOptions {
	return &options.FindOptions{
		Skip: &offset,
	}
}

func (a *Adapter) Limit(size int64) *options.FindOptions {
	return &options.FindOptions{
		Limit: &size,
	}
}
