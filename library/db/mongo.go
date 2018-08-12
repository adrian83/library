package db

import (
	"strconv"

	"github.com/adrian83/go-mvc-library/library/config"
	"gopkg.in/mgo.v2"
)

// Mongo struct represents mongo connection.
type Mongo interface {
	Library() *mgo.Database
	Close()
}

type mongo struct {
	session *mgo.Session
	config  *config.MongoConfig
}

// Library returns library database.
func (m *mongo) Library() *mgo.Database {
	return m.session.DB(m.config.DB)
}

// Close closes mongo session.
func (m *mongo) Close() {
	m.session.Close()
}

// NewMongo returns new mongo 'connection'.
func NewMongo(config *config.MongoConfig) (*mongo, error) {
	session, err := mgo.Dial(config.Host + ":" + strconv.Itoa(config.Port))
	if err != nil {
		return nil, err
	}

	session.SetMode(mgo.Monotonic, true)

	return &mongo{
		session: session,
		config:  config,
	}, nil
}
