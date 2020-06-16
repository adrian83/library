package common

import (
	"go.uber.org/zap"
)

// nolint
func NewLogger() (*zap.Logger, error) {
	return zap.NewProduction()
}
