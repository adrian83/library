import '../author/model.dart';
import '../common/serializable.dart';
import '../common/page.dart';

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

  String toString() {
    return "Book { title: $title, authors: ${authors.map((a) => a.toString()).join()}}";
  }
}

class BooksPage extends Page<Book> {
  BooksPage(int current, int total, int size, List<Book> books)
      : super(current, total, size, books);

  factory BooksPage.fromJson(Map<String, dynamic> json) {
    var booksJson = json['books'];
    List<Book> books = booksJson == null
        ? new List<Book>()
        : booksJson.map((j) => new Book.fromJson(j));

    return new BooksPage(json[PAGE], json[TOTAL], json[SIZE], books);
  }
}
