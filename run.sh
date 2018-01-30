#!/bin/bash

usage() {
	cat <<EOF

    Usage: $(basename $0) <command>

    run-docker            Starts Docker daemon.
    run-zookeeper         Starts Zookeeper localy.
    run-kafka             Starts Kafka localy.
    run-mongo             Starts MongoDB docker image.
    run-redis             Starts Redis docker image.
    run-infra             Starts Docker, RethinkDB and Redis.
    run-app               Starts application.
    dart                  Downloads Dart dependencies and rebuilds Dart files.

EOF
	exit 1
}

run-docker() {
	set -e
		sudo systemctl start docker
	set +e
}

run-zookeeper() {
	set -e
		if [ -z "$KAFKA_HOME" ]; then
    			echo "    Please set KAFKA_HOME (e.g. /home/some/path/to/kafka_2.12-0.10.2.1)"
    			exit 1
		else
			echo "    KAFKA_HOME=" $KAFKA_HOME
		fi

		$KAFKA_HOME/bin/zookeeper-server-start.sh $KAFKA_HOME/config/zookeeper.properties

	set +e
}

run-kafka() {
	set -e
		if [ -z "$KAFKA_HOME" ]; then
    			echo "    Please set KAFKA_HOME (e.g. /home/some/path/to/kafka_2.12-0.10.2.1)"
    			exit 1
		else
			echo "    KAFKA_HOME=" $KAFKA_HOME
		fi

		$KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/server.properties

	set +e
}

run-mongo() {
	set -e
		docker run -p 27018:27017 -v $PWD/infrastructure/mongodb:/data/db -d mongo
		echo "MongoDB is listening on ports: 27018. Data is stored inside 'infrastructure/mongodb' directory"
	set +e
}

run-redis() {
	set -e
		docker run -p 6380:6379 -v $PWD/infrastructure/redis:/data -d redis redis-server --appendonly yes
		echo "Redis is listening on port 6380. Data is stored inside 'infrastructure/redis' directory"
	set +e
}

run-infra() {
	set -e
		run-docker
		run-mongo
		run-redis
	set +e
}

run-app() {
	set -e
		cd library && go run main.go config.json
	set +e
}

dart() {
	set -e
		cd library-fe/dart/angular && pub get && pub build
	set +e
}

CMD="$1"
shift
case "$CMD" in
	run-docker)
		run-docker
	;;
	run-zookeeper)
		run-zookeeper
	;;
	run-kafka)
		run-kafka
	;;
	run-mongo)
		run-mongo
	;;
	run-redis)
		run-redis
	;;
	run-infra)
		run-infra
	;;
	run-app)
		run-app
	;;
	dart)
		dart
	;;
	*)
		usage
	;;
esac
