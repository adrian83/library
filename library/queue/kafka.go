package queue

import (
	"time"

	libconfig "github.com/adrian83/go-mvc-library/library/config"

	"github.com/Shopify/sarama"
)

// NewKafka returns new Kafka struct.
func NewKafka(config *libconfig.KafkaConfig) *Kafka {
	kafkaConfig := sarama.NewConfig()

	kafkaConfig.Producer.RequiredAcks = sarama.WaitForLocal       // Only wait for the leader to ack
	kafkaConfig.Producer.Compression = sarama.CompressionSnappy   // Compress messages
	kafkaConfig.Producer.Flush.Frequency = 500 * time.Millisecond // Flush batches every 500ms

	return &Kafka{
		kafkaConfig: kafkaConfig,
		config:      config,
	}
}

// Kafka is a base structure for working with Kafka.
type Kafka struct {
	kafkaConfig *sarama.Config
	config      *libconfig.KafkaConfig
}

// AsyncProducer returns kafka async producer.
func (k *Kafka) AsyncProducer() (sarama.AsyncProducer, error) {
	return sarama.NewAsyncProducer(k.config.Brokers, k.kafkaConfig)
}
