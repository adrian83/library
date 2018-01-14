import '../author/model.dart';
import '../common/serializable.dart';
import '../common/page.dart';

class BooksPage extends Page<Book> {

  BooksPage(int total, int size, List<Book> books): super(total, size, books);

  factory BooksPage.fromJson(Map<String, dynamic> json) {
    var booksJson = json['books'];
    List<Book> books = new List<Book>();

    if(booksJson != null) {
      booksJson.forEach((j) => books.add(new Book.fromJson(j)));
    }
    return new BooksPage(json['totalElements'], json['pageNumber'], books);
  }
}

class Book extends Serializable {
  String id;
  String title;
  List<Author> authors = new List<Author>();

  Book([this.id, this.title, this.authors]);

  factory Book.fromJson(Map<String, dynamic> json) {
    var authorsJson = json['authors'];
    List<Author> atrs = new List<Author>();

    if(authorsJson != null) {
    authorsJson.forEach((j) => atrs.add(new Author.fromJson(j)));
  }

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
