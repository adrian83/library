import 'dart:async';

import 'package:http/http.dart';

import '../generated_consts.dart';

class BookService {
  static const _booksUrl = '/api/v1/books'; 

  final Client _http;

  BookService(this._http);

  String _booksApi() => backendHost + _booksUrl;

  Future<Response> getAll() async => _http.get(_booksApi());

}
