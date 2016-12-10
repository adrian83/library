import 'dart:async';
import 'dart:convert';

import 'package:angular2/core.dart';
import 'package:http/http.dart';

import 'model.dart';


@Injectable()
class AuthorService {

	static final String _listAuthorsUrl = "/rest/api/v1.0/authors";
	static final String _createAuthorUrl = "/rest/api/v1.0/authors";

	static final _headers = {'Content-Type': 'application/json'};

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

	Future<Author> createAuthor(Author author) async {
		try {
	    final response = await _http.post(_createAuthorUrl,
	        headers: _headers, body: author.toJson());
	    return new Author.fromJson(_extractData(response));
	  } catch (e) {
	    throw _handleError(e);
	  }
	}


Future<Author> getAuthor(String id) async {
	try {
		final response = await _http.get(_listAuthorsUrl+"/"+id);
		return new Author.fromJson(_extractData(response));
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
