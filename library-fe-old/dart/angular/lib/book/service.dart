import 'dart:async';

import 'package:angular/angular.dart';
import 'package:http/http.dart';
import 'package:logging/logging.dart';

import 'model.dart';
import '../common/page.dart';
import '../common/service.dart';

@Injectable()
class BookService extends Service {
  static final Logger LOGGER = new Logger('BookService');

  static final String _apiV1 = "/rest/api/v1.0";
  static final String _books = "books";

  BookService(Client client) : super(client);

  Future<BooksPage> list(PageRequest request) async {
    LOGGER.info("Get books. Request params: $request");
    var url = listUrl(_apiV1, _books, request.asGetParams());
    var jsonPage = await getEntity(url);
    return new BooksPage.fromJson(jsonPage);
  }

  Future<Book> create(Book book) async {
    LOGGER.info("Create book: $book");
    var url = createUrl(_apiV1, _books);
    LOGGER.info("URL: $url");
    var json = await createEntity(url, book);
    LOGGER.info("Json: $json");
    return new Book.fromJson(json);
  }

  Future<Book> update(Book book) async {
    LOGGER.info("Update book: $book");
    var url = updateUrl(_apiV1, _books, book.id);
    var json = await updateEntity(url, book);
    return new Book.fromJson(json);
  }

  Future<Book> get(String id) async {
    LOGGER.info("Get book with id: $id");
    var url = getUrl(_apiV1, _books, id);
    var json = await getEntity(url);
    return new Book.fromJson(json);
  }

  Future<Null> delete(String id) async {
    LOGGER.info("Delete book with id: $id");
    var url = deleteUrl(_apiV1, _books, id);
    await deleteEntity(url);
  }
}
