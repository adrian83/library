import 'package:angular2/core.dart';
import 'package:http/browser_client.dart';
import 'package:http/http.dart';

import 'dart:html';
import 'dart:convert';

import 'model.dart';


@Injectable()
class AuthorService {

	String _listAuthorsUrl = "/rest/api/v1.0/authors";
	String _createAuthorUrl = "/rest/api/v1.0/authors";

	final BrowserClient _http;

  AuthorService(this._http);

	Future<List<Author>> listAuthors() async {
    try {
      final response = await _http.get(_listAuthorsUrl);
      final authors = _extractData(response)
          .map((value) => new Author.fromJson(value))
          .toList();
      return authors;
    } catch (e) {
      //throw _handleError(e);
    }
  }
dynamic _extractData(Response res) {
  var body = JSON.decode(res.body);
  return body['data'];
}
}
