import 'dart:async';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'book_service.dart';
import 'model.dart';

@Component(
    selector: 'books_list-comp',
    templateUrl: 'books_list_comp.template.html')
class BooksListComponent implements OnInit {
  final BookService _bookService;
  final Router _router;

  List<Book> books = new List<Book>();

  BooksListComponent(this._bookService, this._router);

  Future<Null> ngOnInit() async {
    this.books = await this._bookService.listBooks();
  }

  List<Book> get getBooks => this.books;

  Future<Null> show(Book book) async {
  //  _router.navigate([
  //    'BookShowC',
  //    {'id': book.id}
  //  ]);
  }
Future<Null> delete(Book book) async {
}
  Future<Null> edit(Book book) async {
  }
  Future<Null> deleteBook(Book book) async {
    await this._bookService.deleteBook(book.id);
  }
}
