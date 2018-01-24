import '../common/page.dart';
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

class AuthorsPage extends Page<Author> {
  AuthorsPage(int page, int total, int size, List<Author> authors)
      : super(page, total, size, authors);

  factory AuthorsPage.fromJson(Map<String, dynamic> json) {
    var authorsJson = json['authors'];
    List<Author> authors = authorsJson == null
        ? new List<Author>()
        : authorsJson.map((j) => new Author.fromJson(j));

    return new AuthorsPage(json[PAGE], json[TOTAL], json[SIZE], authors);
  }
}
