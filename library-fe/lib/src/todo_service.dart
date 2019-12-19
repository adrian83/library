import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';

import 'todo.dart';
import 'store.dart';
import 'user.dart';
import '../generated_consts.dart';

class TodoService {
  static const _todosUrl = '/api/v1/todos'; 

  final Client _http;
  final Store _store;

  TodoService(this._http, this._store);

  String _todosApi() => backendHost + _todosUrl;

  Future<Response> getAll() async {
      return authenticated()
        .then((headers) => _http.get(_todosApi(), headers: headers));
  }

  Future<Response> create(String text) async {
      return authenticated()
        .then((headers) => _http.post(_todosApi(),
          headers: headers, body: json.encode({'text': text})));
  }

  Future<Response> update(Todo todo) async {
      final url = '${_todosApi()}/${todo.id}';
      return authenticated()
        .then((headers) => _http.put(url, headers: headers, body: json.encode(todo)));
  }

  Future<Response> delete(int id) async {
      final url = '${_todosApi()}/$id';
      return authenticated()
        .then((headers) => _http.delete(url, headers: headers));
  }

  Future<Map<String, String>> authenticated() {

    var f = (){
      var authToken = _store.getAuthToken();
      if(authToken == null || authToken == "") {
        throw UnauthorizedException("Auth token doesn't exist");
      }
      return {
        'Content-Type': 'application/json',
        'Authorization': authToken
      };
    };

    return Future.sync(f);
  }

}
