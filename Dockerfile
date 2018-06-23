FROM debian:testing-slim

ADD . /go/src/github.com/adrian83/go-mvc-library/
WORKDIR /go/src/github.com/adrian83/go-mvc-library

RUN pwd
RUN ls -al

RUN apt-get update
RUN apt-get install apt-transport-https -y
RUN apt-get install curl -y
RUN apt-get install gnupg2 -y
RUN apt-get install git -y

RUN curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list
RUN apt-get update
RUN apt-get install dart -y

RUN cd /usr/lib/dart/bin && ls -al

ENV PATH "$PATH:/usr/lib/dart/bin"
#ENV PATH "$PATH:/go/bin"

RUN dart --version
RUN pub --version
RUN cd /go/src/github.com/adrian83/go-mvc-library/library-fe/dart/angular && pub get && pub build


RUN apt-get install golang -y

#RUN mkdir /go
ENV GOPATH "/go"
RUN echo $GOPATH

RUN go version
#RUN go get -u github.com/golang/vgo
#RUN cd /go/src/github.com/adrian83/go-mvc-library/library && vgo build

RUN cd /go/src/github.com/adrian83/go-mvc-library/library && go get ./...

ENTRYPOINT cd /go/src/github.com/adrian83/go-mvc-library/library && go run main.go config-docker.json
EXPOSE 9090
