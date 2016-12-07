
import 'dart:async';
import 'package:http/browser_client.dart';
import 'dart:convert';
import 'package:angular2/platform/browser.dart';
import 'package:angular2/core.dart';
import 'package:http/http.dart';

import 'model.dart';


@Injectable()
class AuthorService {

	String _listAuthorsUrl = "/rest/api/v1.0/authors";
	String _createAuthorUrl = "/rest/api/v1.0/authors";


	static final _headers = {'Content-Type': 'application/json'};
  static const _heroesUrl = 'app/heroes'; // URL to web API

  final Client _http;

  AuthorService(this._http);


	Future<List<Author>> listAuthors() async {
    try {
      final response = await _http.get(_listAuthorsUrl);
      final authors = _extractData(response)
          .map((value) => new Author.fromJson(value))
          .toList();
      return authors;
    } catch (e) {
			throw _handleError(e);
    }
  }

  dynamic _extractData(Response resp) => JSON.decode(resp.body)['data'];

  Exception _handleError(dynamic e) {
    print(e); // for demo purposes only
    return new Exception('Server error; cause: $e');
  }
}
