FROM golang:1.20-alpine

ADD . /library-be
WORKDIR /library-be

RUN go build -o library cmd/library/main.go

CMD ["./library"]