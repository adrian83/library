import 'dart:async';
import 'dart:convert';

import 'package:angular/angular.dart';
import 'package:http/http.dart';

import 'model.dart';

@Injectable()
class BookService {
  static final String _listBooksUrl = "/rest/api/v1.0/books";
  static final String _createBookUrl = "/rest/api/v1.0/books";

  static final _headers = {'Content-Type': 'application/json'};

  final Client _http;

  BookService(this._http);

  Future<List<Book>> listBooks() async {
    try {
      final response = await _http.get(_listBooksUrl);
      final books = _extractData(response)
          .map((value) => new Book.fromJson(value))
          .toList();
      return books;
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<Book> createBook(Book book) async {
    print(book.title);
    try {
      final response = await _http.post(_createBookUrl,
          headers: _headers, body: JSON.encode(book));

    //  if (response.statusCode == 400) {

    //  } else {
      var jsonn = _extractData(response);
      print(jsonn);
        return new Book.fromJson(jsonn);
    //  }
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<Book> getBook(String id) async {
    try {
      final response = await _http.get(_listBooksUrl + "/" + id);
      return new Book.fromJson(_extractData(response));
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<Null> deleteBook(String id) async {
    try {
      await _http.delete(_listBooksUrl + "/" + id);
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
