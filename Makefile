
hello:
	echo "HELLO"

docker:
	sudo systemctl start docker

deps:
	echo "starting mongodb image (version 3.4)"
	docker run -p 27017:27017 -d mongo:3.4

fe-get:
	echo "getting frontend dependencies" 
	cd library-fe && npm install

fe-run: 
	echo "running frontend"
	cd library-fe && npm run start

fe-all: fe-get fe-run

be-fmt:
	echo "formatting go code"
	cd library-be && gofmt -w .

be-test: 
	echo "running backend tests"
	cd library-be && go test ./... -cover

be-run: export SERVER_PORT=7070
be-run: export SERVER_HOST=0.0.0.0
be-run: export DATABASE_NAME=library
be-run: export DATABASE_HOST=localhost
be-run: export DATABASE_PORT=27017
be-run: export STATICS_PATH=../../../library-fe/build

be-run: 
	echo "running backend"
	cd library-be/cmd/library && go run main.go

be-all: be-fmt be-test be-run