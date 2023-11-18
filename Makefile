
docker:
	sudo systemctl start docker

compose-up:
	sudo docker-compose up --build

deps:
	echo "starting mongodb image (version 5.0.14)"
	docker run -p 27017:27017 -d mongo:5.0.14

fe-get:
	echo "getting frontend dependencies" 
	cd library-fe && npm install

fe-update:
	echo "getting frontend dependencies" 
	cd library-fe && npm update --save && npm install

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

be-lint:
	cd library-be && golangci-lint run ./...

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