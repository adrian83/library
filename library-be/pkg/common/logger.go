package common

import (
	"fmt"

	"go.uber.org/zap"
	"go.uber.org/zap/zapcore"
)

// nolint
func NewLogger() (*zap.SugaredLogger, error) {

	logger, err := zap.Config{
		Encoding:         "json",
		Level:            zap.NewAtomicLevelAt(zapcore.InfoLevel),
		OutputPaths:      []string{"stderr"},
		ErrorOutputPaths: []string{"stderr"},
		EncoderConfig: zapcore.EncoderConfig{
			MessageKey:   "message",
			TimeKey:      "time",
			EncodeTime:   zapcore.ISO8601TimeEncoder,
			CallerKey:    "caller",
			EncodeCaller: zapcore.ShortCallerEncoder,
			LevelKey:     "level",
			EncodeLevel:  zapcore.CapitalLevelEncoder,
		},
	}.Build()

	if err != nil {
		return nil, fmt.Errorf("cannot create zap.SugaredLogger, error: %v", err)
	}

	return logger.WithOptions(zap.AddCallerSkip(1)).Sugar(), nil
}
