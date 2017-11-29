package db

import (
	"strconv"

	"github.com/adrian83/go-mvc-library/library/config"
	"gopkg.in/mgo.v2"
)

// Mongo struct represents mongo connection.
type Mongo struct {
	session *mgo.Session
	config  *config.MongoConfig
}

// Library returns library database.
func (m *Mongo) Library() *mgo.Database {
	return m.session.DB(m.config.DB)
}

// Close closes mongo session.
func (m *Mongo) Close() {
	m.session.Close()
}

// NewMongo returns new mongo 'connection'.
func NewMongo(config *config.MongoConfig) (*Mongo, error) {
	session, err := mgo.Dial(config.Host + ":" + strconv.Itoa(config.Port))
	if err != nil {
		return nil, err
	}

	session.SetMode(mgo.Monotonic, true)

	return &Mongo{
		session: session,
		config:  config,
	}, nil
}
