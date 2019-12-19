import 'dart:async';
import 'dart:convert';
// import 'dart:html';

import 'package:http/http.dart';

import 'user.dart';
import '../generated_consts.dart';

class AuthService {
  static final _headers = {'Content-Type': 'application/json'};
  static const _authUrl = '/api/v1/auth/';

  final Client _http;

  AuthService(this._http);

  String _authApi() => backendHost + _authUrl;

  Future<Response> register(Register register) async => _http.post(_authApi() + "register", headers: _headers, body: json.encode(register));

  Future<Response> login(Login login) async => _http.post(_authApi() + "login", headers: _headers, body: json.encode(login)); 

}
