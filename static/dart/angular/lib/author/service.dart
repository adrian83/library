import 'dart:async';

import 'package:angular/angular.dart';
import 'package:http/http.dart';
import 'package:logging/logging.dart';

import 'model.dart';
import '../common/page.dart';
import '../common/service.dart';

@Injectable()
class AuthorService extends Service {
  static final Logger LOGGER = new Logger('AuthorService');

  static final String apiV1 = "/rest/api/v1.0";
  static final String _authors = "authors";

  AuthorService(Client client) : super(client);

  Future<AuthorsPage> authors(PageRequest request) async {
    LOGGER.info("Get authors. Request params: $request");
    var jsonPage = await getEntity(listUrl(apiV1, _authors, request.asGetParams()));
    return new AuthorsPage.fromJson(jsonPage);
  }

  Future<Author> create(Author author) async {
    LOGGER.info("Create author: $author");
    var json = await createEntity(createUrl(apiV1, _authors), author);
    return new Author.fromJson(json);
  }

  Future<Author> updateAuthor(Author author) async {
    LOGGER.info("Update author: $author");
    var json = await updateEntity(updateUrl(apiV1, _authors, author.id), author);
    return new Author.fromJson(json);
  }

  Future<Author> getAuthor(String id) async {
    LOGGER.info("Get author with id: $id");
    var json = await getEntity(getUrl(apiV1, _authors, id));
    return new Author.fromJson(json);
  }

  Future<Null> deleteAuthor(String id) async {
    LOGGER.info("Delete author with id: $id");
    await deleteEntity(deleteUrl(apiV1, _authors, id));
  }

}
