
# GO-MVC-LIBRARY
Simple CRUD application written in [Go](https://golang.org/) and [Dart](https://www.dartlang.org/) programming languages with [Redis](//http://redis.io) as a session storage and [MongoDB](https://www.mongodb.com/) as a main data storage.

### prerequisites
1. Go installed (1.6 or higher)
2. Dart SDK installed (1.18 or higher)
3. Redis installed
4. MongoDB installed

#### run
1. Start redis: `redis-server`
2. Start mongo: `mongod --dbpath /path/to/mongo/data`
3. Download project to $project location inside your $GOPATH
4. To download add `go` dependencies in $project/src run `go get ./...` 
5. To download add `dart` dependencies in $project/static/dart/angular run `pub get`
6. To translate `dart` into `javascript` in $project/static/dart/angular run `pub build`
7. Adjust config.json file to your needs.
8. In $project/src run `go run main.go config.json`
