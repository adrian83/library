

class Author {
	String id;
	String firstName;
	String lastName;

	Author(this.id, this.firstName, this.lastName){}

	factory Author.fromJson(Map<String, dynamic> author) =>
		new Author(author['id'], author['firstName'], author['lastName']);

}
