import 'package:angular2/core.dart';

import 'dart:html';

import 'model.dart';


@Injectable()
class AuthorService {

	void saveAuthor(Author author) {
	window.alert("- " + author.lastName);
	
	HttpRequest request = new HttpRequest(); // create a new XHR

  // add an event handler that is called when the request finishes
  request.onReadyStateChange.listen((_) {
    if (request.readyState == HttpRequest.DONE &&
        (request.status == 200 || request.status == 0)) {
      // data saved OK.
      print(request.responseText); // output the response from the server
    }
  });

  // POST the data to the server
  var url = "/rest/api/v1.0/authors";
  request.open("POST", url, async: false);

  String jsonData = '{"firstName":"' + author.firstName + '", "lastName":"'+author.lastName+'"}'; // etc...
  request.send(jsonData); // perform the async POST
	
	}

}