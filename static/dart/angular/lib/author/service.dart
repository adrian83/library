import 'dart:async';
import 'dart:convert';

import 'package:angular/angular.dart';
import 'package:http/http.dart';
import 'package:logging/logging.dart';

import 'model.dart';

@Injectable()
class AuthorService {

  static final Logger LOGGER = new Logger('AuthorService');

  static final String _listAuthorsUrl = "/rest/api/v1.0/authors";
  static final String _createAuthorUrl = "/rest/api/v1.0/authors";
  static final String _updateAuthorUrl = "/rest/api/v1.0/authors";

  static final _headers = {'Content-Type': 'application/json'};

  final Client _http;

  AuthorService(this._http);

  Future<AuthorsPage> authors() async {
    LOGGER.info("Get authors");
    try {
      final response = await _http.get(_listAuthorsUrl);
      final page = new AuthorsPage.fromJson(_extractData(response));
      return page;
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<Author> createAuthor(Author author) async {
    try {
      final response = await _http.post(_createAuthorUrl,
          headers: _headers, body: JSON.encode(author));
      return new Author.fromJson(_extractData(response));
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<Author> updateAuthor(Author author) async {
    try {
      final response = await _http.put(_updateAuthorUrl + "/" + author.id,
          headers: _headers, body: JSON.encode(author));
      return new Author.fromJson(_extractData(response));
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<Author> getAuthor(String id) async {
    try {
      final response = await _http.get(_listAuthorsUrl + "/" + id);
      return new Author.fromJson(_extractData(response));
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<Null> deleteAuthor(String id) async {
    try {
      await _http.delete(_listAuthorsUrl + "/" + id);
    } catch (e) {
      throw _handleError(e);
    }
  }

  dynamic _extractData(Response resp) => JSON.decode(resp.body);

  Exception _handleError(dynamic e) {
    print(e);
    return new Exception('Server error; cause: $e');
  }
}
