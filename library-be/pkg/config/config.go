package config

import (
	"encoding/json"

	"github.com/kelseyhightower/envconfig"
)

// Config is a configuration.
type Config struct {
	ServerPort   int    `envconfig:"SERVER_PORT"`
	ServerHost   string `envconfig:"SERVER_HOST"`
	DatabaseName string `envconfig:"DATABASE_NAME"`
	DatabaseHost string `envconfig:"DATABASE_HOST"`
	DatabasePort int    `envconfig:"DATABASE_PORT"`
	StaticsPath  string `envconfig:"STATICS_PATH"`
}

func (c *Config) String() string {
	bts, _ := json.Marshal(c)
	return string(bts)
}

// ReadConfiguration reads configuration properties from Environment.
func ReadConfiguration(prefix string) (*Config, error) {
	var cfg Config
	if err := envconfig.Process(prefix, &cfg); err != nil {
		return nil, err
	}

	return &cfg, nil
}
