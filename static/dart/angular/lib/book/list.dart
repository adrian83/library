import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'service.dart';
import 'model.dart';

import '../common/components/pagination.dart';

@Component(
    selector: 'books_list-comp',
    templateUrl: 'list.template.html',
    directives: const [CORE_DIRECTIVES, Pagination])
class BooksListComponent implements OnInit {
  final BookService _bookService;
  final Router _router;

  BooksPage page = new BooksPage(0, 0, new List<Book>());
  List<Book> books = new List<Book>();

  BooksListComponent(this._bookService, this._router);

  Future<Null> ngOnInit() async {
    this.page = await this._bookService.listBooks();
    this.books = page.getElements;
  }

  List<Book> get getBooks => this.books;

  Future<Null> show(Book book) async {
    _router.navigate([
      'BookShowC',
      {'id': book.id}
    ]);
  }

  Future<Null> delete(Book book) async {
    await this._bookService.deleteBook(book.id);
    books.remove(book);
  }

  Future<Null> edit(Book book) async {
    _router.navigate([
      'BookUpdateC',
      {'id': book.id}
    ]);
  }

}
