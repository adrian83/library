package storage

import (
	"context"
	"errors"
	"fmt"
	"strconv"

	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
)

// ErrNotFound is an error that should be returned if requested document cannot be found.
var ErrNotFound = errors.New("not found")

type logger interface {
	Infof(string, ...interface{})
	Fatalf(string, ...interface{})
}

type Connection struct {
	host                string
	port                int
	connectionTimeoutMs int
	client              *mongo.Client
	logger              logger
}

func NewConnection(host string, port, connectionTimeoutMs int, logger logger) *Connection {
	return &Connection{
		host:                host,
		port:                port,
		connectionTimeoutMs: connectionTimeoutMs,
		client:              nil,
		logger:              logger,
	}
}

func (c *Connection) Connect() {
	mongoURI := "mongodb://" + c.host + ":" + strconv.Itoa(c.port) + "/?retryWrites=true&timeoutMS=" + strconv.Itoa(c.connectionTimeoutMs)
	c.logger.Infof("Connecting to MongoDB on URI: %v", mongoURI)

	serverAPI := options.ServerAPI(options.ServerAPIVersion1)
	opts := options.Client().ApplyURI(mongoURI).SetServerAPIOptions(serverAPI)

	client, err := mongo.Connect(context.TODO(), opts)

	if err != nil {
		c.logger.Fatalf("Cannot create MongoDB client: %v", err)
	}

	var result bson.M
	if err := client.Database("admin").RunCommand(context.TODO(), bson.D{{Key: "ping", Value: 1}}).Decode(&result); err != nil {
		c.logger.Fatalf("Cannot ping MongoDB: %v", err)
	}

	c.logger.Infof("Successfully connected to MongoDB, result: %v", result)

	c.client = client
}

func (c *Connection) Disconnect() {
	if err := c.client.Disconnect(context.TODO()); err != nil {
		c.logger.Fatalf("Cannot disconnect with MongoDB, error: %v", err)
	}
}

func (c *Connection) Database(dbName string) *mongo.Database {
	return c.client.Database(dbName)
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

// UpdateOne updates single document in MongoDB collection.
func (a *Adapter) UpdateOne(ctx context.Context, id string, doc interface{}) error {
	a.logger.Infof("updating document: %v with id: %v", doc, id)

	strBts, err := bson.Marshal(doc)
	if err != nil {
		return fmt.Errorf("cannot marshal document to json, error: %w", err)
	}

	var m bson.M
	if uEerr := bson.Unmarshal(strBts, &m); err != nil {
		return fmt.Errorf("cannot unmarshal json to bson.M, error: %w", uEerr)
	}

	filter := bson.M{"_id": id}
	update := bson.M{"$set": m}

	output, err := a.collection.UpdateOne(ctx, filter, update)
	if err != nil {
		return fmt.Errorf("cannot update document, error: %w", err)
	}

	if output.MatchedCount == 0 {
		return fmt.Errorf("cannot update document, error: %w", ErrNotFound)
	}

	a.logger.Infof("updating document response: %v", output)

	return nil
}

// FindOne returns single document with given id.
func (a *Adapter) FindOne(ctx context.Context, id string, doc interface{}) error {
	a.logger.Infof("getting document with id: %v", id)

	filter := bson.M{"_id": id}
	if err := a.collection.FindOne(ctx, filter).Decode(doc); err != nil {
		if errors.Is(err, mongo.ErrNoDocuments) {
			return fmt.Errorf("cannot find document with id: %v, error: %w", id, ErrNotFound)
		}

		return err
	}

	return nil
}

// DeleteOne removes single document with given id.
func (a *Adapter) DeleteOne(ctx context.Context, id string) error {
	a.logger.Infof("deleting document with id: %v", id)

	filter := bson.M{"_id": id}

	output, err := a.collection.DeleteOne(ctx, filter)
	if err != nil {
		return fmt.Errorf("cannot delete document, error: %w", err)
	}

	if output.DeletedCount == 0 {
		return fmt.Errorf("cannot delete document with id: %v, error: %w", id, ErrNotFound)
	}

	a.logger.Infof("deleting document response: %v", output)

	return nil
}

// List returns page of documents.
func (a *Adapter) List(ctx context.Context, criteria bson.D, offset, size int64) ([]map[string]interface{}, error) {
	a.logger.Infof("listing documents with offset: %v, size: %v, criteria: %v", offset, size, criteria)

	cur, err := a.collection.Find(ctx, criteria, a.Skip(offset), a.Limit(size))
	if err != nil {
		return nil, fmt.Errorf("cannot list documents, error: %w", err)
	}
	defer cur.Close(ctx)

	if err := cur.Err(); err != nil {
		return nil, fmt.Errorf("cursor contains error, error: %w", err)
	}

	result := make([]map[string]interface{}, 0)

	for cur.Next(ctx) {
		var m map[string]interface{}
		if err := cur.Decode(&m); err != nil {
			return nil, fmt.Errorf("cannot decode cursor element to map, error: %w", err)
		}

		result = append(result, m)
	}

	return result, nil
}

func (a *Adapter) Count(ctx context.Context, filter interface{}) (int64, error) {
	a.logger.Infof("counting documents with criteria: %v", filter)
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
