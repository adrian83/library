import 'package:angular2/core.dart';

import 'dart:html';
import 'dart:convert';

import 'model.dart';


@Injectable()
class AuthorService {

	String _listAuthorsUrl = "/rest/api/v1.0/authors";
	String _createAuthorUrl = "/rest/api/v1.0/authors";

	void saveAuthor(Author author) {
	
		HttpRequest request = new HttpRequest(); // create a new XHR

  		// add an event handler that is called when the request finishes
  		request.onReadyStateChange.listen((_) {
    		if (request.readyState == HttpRequest.DONE && (request.status == 200 || request.status == 0)) {
				print(request.responseText); // output the response from the server
    		}
  		});

  		request.open("POST", _createAuthorUrl, async: false);

  		String jsonData = '{"firstName":"' + author.firstName + '", "lastName":"'+author.lastName+'"}'; // etc...
  		request.send(jsonData); // perform the async POST
	}
	
	void listAuthors(callback) {
	
		

  		// call the web server asynchronously
  		var request = HttpRequest.getString(_listAuthorsUrl).then((text){
  			List<Author> authorList = new List<Author>();
  			
  			Map parsedMap = JSON.decode(text);
  			var authors =  parsedMap["authors"];
  			for (var a in authors) {
				var author = new Author(a["firstName"], a["lastName"]);
				authorList.add(author);
			}
			
			
			callback(authorList);
  			
  		});

	}
}