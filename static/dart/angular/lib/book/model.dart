import '../author/model.dart';
import '../common/serializable.dart';

class Book extends Serializable {
  String id;
  String title;
  List<Author> authors = new List<Author>();

  Book([this.id, this.title, this.authors]);

  factory Book.fromJson(Map<String, dynamic> json) {
    var authorsJson = json['authors'];
    List<Author> atrs = new List<Author>();
    authorsJson.forEach((j) => atrs.add(new Author.fromJson(j)));

    return new Book(json['id'], json['title'], atrs);
  }

  bool get hasTitle => title != null && title.trim() != "";

  bool get hasAuthors => authors != null && authors.length > 0;

  String get authorsNames {
    return authors == null
        ? ""
        : authors.map((a) => a.fullName).join(", ").trim();
  }

  String toString() {
    return "Book { title: $title, authors: ${authors.map((a) => a.toString()).join()}}";
  }
}
