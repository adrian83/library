import 'dart:convert';

class Author {
	String id;
	String firstName;
	String lastName;

	Author(this.id, this.firstName, this.lastName){}

	factory Author.fromJson(Map<String, dynamic> author) =>
		new Author(author['id'], author['firstName'], author['lastName']);

	toJson() {
		return JSON.encode({'firstName': firstName, "lastName": lastName});
	}
}

class Book {
	String id;
	String title;
	String authorId;

	Book(this.id, this.title){}

	factory Book.fromJson(Map<String, dynamic> book) =>
		new Book(book['id'], book['title']);

	toJson() {
		return JSON.encode({'title': title});
	}
}
