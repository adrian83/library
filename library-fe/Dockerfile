FROM google/dart:2.6

ADD . /todo-fe/
WORKDIR /todo-fe

RUN dart --version
RUN pub --version

RUN pub get

RUN pub global activate webdev

RUN pub run build_runner build --delete-conflicting-outputs

EXPOSE 8080
CMD ["/root/.pub-cache/bin/webdev", "serve", "--hostname", "0.0.0.0", "--release"]

