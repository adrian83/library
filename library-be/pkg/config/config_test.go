package config

import (
	"fmt"
	"os"
	"testing"

	"github.com/stretchr/testify/assert"
)

var (
	prefix = "TEST"

	serverHost  = "localhost"
	serverPort  = 8080
	dbName      = "lib"
	dbHost      = "db.host"
	dbPort      = 7654
	dbUser      = "admin"
	dbPass      = "secret"
	staticsPath = "/some/path"
)

func TestReadingConfiguration(t *testing.T) {
	// given
	setEnvVars()

	// when
	config, err := ReadConfiguration(prefix)

	// then
	assert.NoError(t, err)

	assert.Equal(t, serverHost, config.ServerHost)
	assert.Equal(t, serverPort, config.ServerPort)
	assert.Equal(t, dbName, config.DatabaseName)
	assert.Equal(t, dbHost, config.DatabaseHost)
	assert.Equal(t, dbPort, config.DatabasePort)
	assert.Equal(t, staticsPath, config.StaticsPath)
	assert.Equal(t, dbPass, config.DatabasePass)
	assert.Equal(t, dbUser, config.DatabaseUser)

	stringRepr := config.String()

	assert.Contains(t, stringRepr, serverHost)
	assert.Contains(t, stringRepr, fmt.Sprintf("%v", serverPort))
	assert.Contains(t, stringRepr, dbName)
	assert.Contains(t, stringRepr, dbHost)
	assert.Contains(t, stringRepr, fmt.Sprintf("%v", dbPort))
	assert.Contains(t, stringRepr, staticsPath)
	assert.Contains(t, stringRepr, dbUser)
	assert.Contains(t, stringRepr, dbPass)
}

func TestReadingConfigurationError(t *testing.T) {
	// given
	setEnvVars()

	os.Setenv("SERVER_PORT", "this should be an integer") // overriding env var

	// when
	config, err := ReadConfiguration(prefix)

	// then
	assert.Error(t, err)
	assert.Nil(t, config)
}

func setEnvVars() {
	os.Setenv("SERVER_HOST", serverHost)
	os.Setenv("SERVER_PORT", fmt.Sprintf("%v", serverPort))
	os.Setenv("DATABASE_NAME", dbName)
	os.Setenv("DATABASE_HOST", dbHost)
	os.Setenv("DATABASE_PORT", fmt.Sprintf("%v", dbPort))
	os.Setenv("STATICS_PATH", staticsPath)
	os.Setenv("DATABASE_PASSWORD", dbPass)
	os.Setenv("DATABASE_USER", dbUser)
}
