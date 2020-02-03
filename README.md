
# LIBRARY
Simple CRUD application written in [Go](https://golang.org/) and [JavaScrip (React)](https://reactjs.org/) programming languages with [MongoDB](https://www.mongodb.com/) as a main data storage.


## Running

### Running with docker compose

#### Prerequisites
- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

#### Steps
1. Run `make compose-up`
2. Navigate in browser to `localhost:3000`

### Running locally

#### Prerequisites
- [Docker](https://www.docker.com/)
- [Go](https://golang.org/)
- [Npm](https://www.npmjs.com/)
- [GNU Make](https://www.gnu.org/software/make/)

#### Steps
1. Start infrastructure (MongoDB): `make deps`
2. Start backend: `make be-all`
3. Start frontend: `make fe-all`
4. Navigate in browser to `localhost:3000`
