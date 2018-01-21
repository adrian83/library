import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_forms/angular_forms.dart';

import 'service.dart';
import 'model.dart';

import '../common/components/pagination.dart';
import '../common/page.dart';

import 'package:logging/logging.dart';

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
    directives: const [CORE_DIRECTIVES, Pagination, formDirectives])
class BooksListComponent implements OnInit {

static final Logger LOGGER = new Logger('BooksListComponent');

  final BookService _bookService;
  final Router _router;

  String searchedPhrase = "";

  BooksPage page = new BooksPage(0, 0, 0, new List<Book>());
  PageSwitcher switcher;


  BooksListComponent(this._bookService, this._router){
    switcher = new BooksPageSwitcher(this);
  }

  Future<Null> ngOnInit() async {
    fetchBooks(0);
  }

  Future<Null> fetchBooks(int pageNo) async {
    PageRequest req = new PageRequest(pageNo, searchedPhrase);
    this.page = await this._bookService.listBooks(req);
  }

  List<Book> get books => this.page == null ? new List<Book>() : this.page.elements;

  Future<Null> findBooks() async {
    fetchBooks(0);
  }

  Future<Null> show(Book book) async {
    _router.navigate([
      'BookShowC',
      {'id': book.id}
    ]);
  }

  Future<Null> delete(Book book) async {
    await this._bookService.deleteBook(book.id);
    fetchBooks(page.current);
  }

  Future<Null> edit(Book book) async {
    _router.navigate([
      'BookUpdateC',
      {'id': book.id}
    ]);
  }

}
