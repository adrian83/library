import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'service.dart';
import 'model.dart';

import '../common/components/pagination.dart';


class BooksPageSwitcher extends PageSwitcher {

  final BooksListComponent _booksListComponent;

  BooksPageSwitcher(this._booksListComponent);

  void change(int pageNumber) {
    print("change to $pageNumber in list books");
    _booksListComponent.fetchBooks(pageNumber);
  }
}

@Component(
    selector: 'books_list-comp',
    templateUrl: 'list.template.html',
    directives: const [CORE_DIRECTIVES, Pagination])
class BooksListComponent implements OnInit {
  final BookService _bookService;
  final Router _router;

  BooksPage page = new BooksPage(0, 0, 0, new List<Book>());
  List<Book> books = new List<Book>();
  PageSwitcher switcher;

  BooksListComponent(this._bookService, this._router){
    switcher = new BooksPageSwitcher(this);
  }

  Future<Null> ngOnInit() async {
    fetchBooks(0);
  }

  Future<Null> fetchBooks(int pageNo) async {
    this.page = await this._bookService.listBooks(pageNo);
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
