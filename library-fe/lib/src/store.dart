
import 'dart:html';

class Store {
  static String _tokenKey = "authToken"; 

  void storeAuthToken(String token) {
    window.localStorage[_tokenKey] = token;
  }

  String getAuthToken() => window.localStorage[_tokenKey];
}