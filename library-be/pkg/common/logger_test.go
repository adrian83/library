package common

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestNewLoggerCreation(t *testing.T) {
	// when
	sugaredLogger, err := NewLogger()

	// then
	assert.NotNil(t, sugaredLogger)
	assert.NoError(t, err)
}
