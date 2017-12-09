

import 'package:dartson/dartson.dart';

@Entity()
class Author {
	String id;
	String firstName;
	String lastName;

	Author([this.id, this.firstName, this.lastName]);

	factory Author.fromJson(Map<String, dynamic> author) =>
		new Author(author['id'], author['firstName'], author['lastName']);

	toJson() {
		var dson = new Dartson.JSON();
		return dson.encode(this);
		//return JSON.encode({"id": id, "firstName": firstName, "lastName": lastName});
	}

}

@Entity()
class Book {
	String id;
	String title;
	List<Author> authors = new List<Author>();

	Book([this.id, this.title]);

	factory Book.fromJson(Map<String, dynamic> book) =>
		new Book(book['id'], book['title']);

	toJson() {
		var dson = new Dartson.JSON();
		return dson.encode(this);
	}

}
