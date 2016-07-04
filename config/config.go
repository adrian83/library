package config

import (
	"bytes"
	"encoding/json"
	"io/ioutil"
)

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

type Config struct {
	Server    ServerConfig    `json:"server"`
	Session   SessionConfig   `json:"session"`
	Databases DatabasesConfig `json:"databases"`
}

type SessionConfig struct {
	Redis    RedisConfig `json:"redis"`
	IDLength int         `json:"idLength"`
}

type RedisConfig struct {
	DB       int64  `json:"db"`
	Password string `json:"password"`
	Host     string `json:"host"`
	Port     int    `json:"port"`
}

type ServerConfig struct {
	Port int `json:"port"`
}

type DatabasesConfig struct {
	Mongo MongoConfig `json:"mongo"`
}

type MongoConfig struct {
	Host string `json:"host"`
	DB   string `json:"db"`
}
