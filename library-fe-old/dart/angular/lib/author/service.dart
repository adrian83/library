import 'dart:async';

import 'package:angular/angular.dart';
import 'package:http/http.dart';
import 'package:logging/logging.dart';

import '../common/page.dart';
import '../common/service.dart';

import 'model.dart';

@Injectable()
class AuthorService extends Service {
  static final Logger LOGGER = new Logger('AuthorService');

  static final String _apiV1 = "/rest/api/v1.0";
  static final String _authors = "authors";

  AuthorService(Client client) : super(client);

  Future<AuthorsPage> list(PageRequest request) async {
    LOGGER.info("Get authors. Request params: $request");
    var url = listUrl(_apiV1, _authors, request.asGetParams());
    var jsonPage = await getEntity(url);
    return new AuthorsPage.fromJson(jsonPage);
  }

  Future<Author> create(Author author) async {
    LOGGER.info("Create author: $author");
    var url = createUrl(_apiV1, _authors);
    var json = await createEntity(url, author);
    return new Author.fromJson(json);
  }

  Future<Author> update(Author author) async {
    LOGGER.info("Update author: $author");
    var url = updateUrl(_apiV1, _authors, author.id);
    var json = await updateEntity(url, author);
    return new Author.fromJson(json);
  }

  Future<Author> get(String id) async {
    LOGGER.info("Get author with id: $id");
    var url = getUrl(_apiV1, _authors, id);
    var json = await getEntity(url);
    return new Author.fromJson(json);
  }

  Future<Null> delete(String id) async {
    LOGGER.info("Delete author with id: $id");
    var url = deleteUrl(_apiV1, _authors, id);
    LOGGER.info("Url : $url");
    await deleteEntity(url);
  }
}
