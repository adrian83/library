
import '../common/serializable.dart';

class Author extends Serializable {
	String id;
	String firstName;
	String lastName;

	Author([this.id, this.firstName, this.lastName]);

	factory Author.fromJson(Map<String, dynamic> author) =>
		new Author(author['id'], author['firstName'], author['lastName']);

		String get fullName {
			var fn = firstName == null ? "" : firstName;
			var ln = lastName == null ? "" : lastName;
			return "$fn $ln".trim();
		}

	String toString() {
		return "Author { id=$id, firstName=$firstName, lastName=$lastName }";
	}

}
