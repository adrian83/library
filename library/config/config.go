package config

import (
	"bytes"
	"encoding/json"
	"io/ioutil"
	"os"
)

// FromArg reads configuration from file given as a N arg.
func FromArg(argNo int) (*Config, error) {

	currentDir, err := os.Getwd()
	if err != nil {
		return nil, err
	}
	configPath := os.Args[argNo]
	return ReadConfig(currentDir + "/" + configPath)
}

// ReadConfig reads config from file path given as an argument.
func ReadConfig(configPath string) (*Config, error) {

	config := new(Config)

	configBytes, err := ioutil.ReadFile(configPath)
	if err != nil {
		return config, err
	}

	configReader := bytes.NewReader(configBytes)

	jsonParser := json.NewDecoder(configReader)
	if err := jsonParser.Decode(config); err != nil {
		return config, err
	}

	return config, nil
}

// Config contains all data needed to configure application.
type Config struct {
	Server    ServerConfig    `json:"server"`
	Session   SessionConfig   `json:"session"`
	Databases DatabasesConfig `json:"databases"`
	Kafka     KafkaConfig     `json:"kafka"`
}

// SessionConfig contains all data needed to configure session store.
type SessionConfig struct {
	Redis    RedisConfig `json:"redis"`
	IDLength int         `json:"idLength"`
}

// RedisConfig contains all data needed to configure redis connection.
type RedisConfig struct {
	DB       int    `json:"db"`
	Password string `json:"password"`
	Host     string `json:"host"`
	Port     int    `json:"port"`
}

// ServerConfig contains all data needed to configure http server.
type ServerConfig struct {
	Port int `json:"port"`
}

// DatabasesConfig contains all data needed to configure databases connections.
type DatabasesConfig struct {
	Mongo MongoConfig `json:"mongo"`
}

// MongoConfig contains all data needed to configure mongo connection.
type MongoConfig struct {
	Host string `json:"host"`
	Port int    `json:"port"`
	DB   string `json:"db"`
}

// KafkaConfig contains all data needed to configure kafka connection.
type KafkaConfig struct {
	Brokers []string `json:"brokers"`
}
