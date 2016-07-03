package config

import ()

type Config struct {
	server  ServerConfig  `json:"server"`
	session SessionConfig `json:"session"`
}

type SessionConfig struct {
	Redis    RedisConfig `json:"redis"`
	IDLength int         `json:"idLength"`
}

type RedisConfig struct {
	DB       int    `json:"db"`
	Password string `json:"password"`
	Host     string `json:"host"`
	Port     int    `json:"port"`
}

type ServerConfig struct {
	Port int `json:"port"`
}
