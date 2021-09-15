FROM golang:1.17.1-alpine3.14

ADD . /library-be
WORKDIR /library-be

ENV SERVER_PORT 7070
ENV SERVER_HOST 0.0.0.0
ENV DATABASE_NAME library
ENV DATABASE_HOST mongo
ENV DATABASE_PORT 27017
ENV STATICS_PATH '../../../library-fe/build'

CMD ["go", "run", "cmd/library/main.go"]