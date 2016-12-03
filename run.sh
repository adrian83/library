#!/bin/bash

usage() {
	cat <<EOF

    Usage: $(basename $0) <command>

    run-docker            Starts Docker on Arch based GNU Linux.
    run-mongo             Starts MongoDB docker image.
    run-infra             Starts Docker, RethinkDB and Redis

EOF
	exit 1
}

run-docker() {
	set -e
		sudo systemctl start docker
	set +e
}

run-mongo() {
	set -e
		docker run -p 27018:27017 -v $PWD/infrastructure/mongodb:/data/db -d mongo:tag
		echo "MongoDB is listening on ports: 27018. Data is stored inside 'infrastructure/mongodb' directory"
	set +e
}

run-infra() {
	set -e
		run-docker
		run-rethink
		run-redis
	set +e
}


CMD="$1"
shift
case "$CMD" in
	run-docker)
		run-docker
	;;
	run-mongo)
		run-mongo
	;;
	run-infra)
		run-infra
	;;
	*)
		usage
	;;
esac
