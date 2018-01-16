import 'dart:async';
import 'dart:convert';

import 'package:angular/angular.dart';
import 'package:http/http.dart';

import 'model.dart';
import '../common/errors.dart';

@Injectable()
class BookService {
  static final String _baseBookUrl = "/rest/api/v1.0/books";
  static final String _listBooksUrl = "/rest/api/v1.0/books?page=";


  static final _headers = {'Content-Type': 'application/json'};

  final Client _http;

  BookService(this._http);

  Future<BooksPage> listBooks(int pageNumber) async {
    try {
      final response = await _http.get(_listBooksUrl + pageNumber.toString());
      final page = new BooksPage.fromJson(_extractData(response));
      return page;
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<Book> updateBook(Book book) async {
    print(book.title);

    final response = await _http.put(_baseBookUrl + "/" + book.id,
        headers: _headers, body: JSON.encode(book));

    var json = _extractData(response);
    print(json);

    if (response.statusCode == 400) {
      var valErrors = new ValidationErrors.fromJson(json);
      print(valErrors);
      throw valErrors;
    } else {
      return new Book.fromJson(json);
    }
  }

  Future<Book> createBook(Book book) async {
    print(book.title);

    final response = await _http.post(_baseBookUrl,
        headers: _headers, body: JSON.encode(book));

    var json = _extractData(response);
    print(json);

    if (response.statusCode == 400) {
      var valErrors = new ValidationErrors.fromJson(json);
      print(valErrors);
      throw valErrors;
    } else {
      return new Book.fromJson(json);
    }
  }

  Future<Book> getBook(String id) async {
    try {
      final response = await _http.get(_baseBookUrl + "/" + id);
      return new Book.fromJson(_extractData(response));
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<Null> deleteBook(String id) async {
    try {
      await _http.delete(_baseBookUrl + "/" + id);
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
