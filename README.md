
# LIBRARY
Simple CRUD application written in [Go](https://golang.org/) and [Dart](https://www.dartlang.org/) programming languages with [MongoDB](https://www.mongodb.com/) as a main data storage.


## Running

### Running with docker compose

#### Prerequisites
- Docker
- Docker Compose

#### Steps
1. Run `make compose-up`
2. Navigate in browser to `localhost:3000`

### Running locally

#### Prerequisites
- Docker
- Go
- Npm

#### Steps
1. Start infrastructure (MongoDB): `make deps`
2. Start backend: `make be-all`
3. Start frontend: `make fe-all`
4. Navigate in browser to `localhost:3000`

