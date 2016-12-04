
# GO-MVC-LIBRARY
Simple CRUD application written in [Go](https://golang.org/) and [Dart](https://www.dartlang.org/) programming languages with [Redis](//http://redis.io) as a session storage and [MongoDB](https://www.mongodb.com/) as a main data storage.

### prerequisites
1. Go installed (1.6 or higher)
2. Dart SDK installed (1.18 or higher)
3. Docker 

#### run
1. Start Docker daemon, Redis and MongoDB in docker containers: `./run.sh run-infra`
2. Download project to $project location inside your $GOPATH
3. Download Go dependencies, in $project/src run `go get ./...` 
4. Download Dart dependencies, in $project/static/dart/angular run `pub get`
5. Translate `dart` into `javascript` in $project/static/dart/angular run `pub build`
6. Adjust config.json file to your needs.
7. In $project/src run `go run main.go config.json`
