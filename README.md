
# LIBRARY
Simple CRUD application written in [Go](https://golang.org/) and [JavaScrip (React)](https://reactjs.org/) programming languages with [MongoDB](https://www.mongodb.com/) as a main data storage.


## Running

### Running with docker compose

#### Prerequisites
- [docker](https://www.docker.com/)
- [docker compose](https://docs.docker.com/compose/)

#### Steps
1. Run `make compose-up`
2. Navigate in browser to `localhost:3000`

### Running locally

#### Prerequisites
- [docker](https://www.docker.com/)
- [go](https://golang.org/)
- [npm](https://www.npmjs.com/)
- [GNU Make](https://www.gnu.org/software/make/)
- [golangci-lint (optional)](https://github.com/golangci/golangci-lint)

#### Steps
1. Start infrastructure (MongoDB): `make deps`
2. Start backend: `make be-all`
3. Start frontend: `make fe-all`
4. Navigate in browser to `localhost:3000`
