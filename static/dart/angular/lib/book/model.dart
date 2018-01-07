import '../author/model.dart';
import '../common/serializable.dart';

class Book extends Serializable {
  String id;
  String title;
  List<Author> authors = new List<Author>();

  Book([this.id, this.title]);

  factory Book.fromJson(Map<String, dynamic> book) =>
      new Book(book['id'], book['title']);

  bool get hasTitle => title != null && title.trim() != "";

  bool get hasAuthors => authors != null && authors.length > 0;

  String get authorsNames {
    return authors == null
        ? ""
        : authors.map((a) => a.fullName).join(", ").trim();
  }
}
