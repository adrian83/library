import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_forms/angular_forms.dart';

import 'package:logging/logging.dart';

import '../../common/components/validation.dart';
import '../../common/components/pagination.dart';
import '../../common/errorhandler.dart';
import '../../common/page.dart';

import '../service.dart';
import '../model.dart';

@Component(
    selector: 'list-books-component',
    templateUrl: 'list.template.html',
    directives: const [
      CORE_DIRECTIVES,
      formDirectives,
      Pagination,
      ValidationErrorsComponent
    ])
class ListBooksComponent extends PageSwitcher
    with ErrorHandler
    implements OnInit {
  static final Logger LOGGER = new Logger('BooksListComponent');

  final BookService _bookService;
  final Router _router;

  String _filter = "";
  BooksPage _page = new BooksPage(0, 0, 0, new List<Book>());

  ListBooksComponent(this._bookService, this._router);

  PageSwitcher get switcher => this;
  BooksPage get page => _page;
  String get filter => _filter;
  void set filter(String f) {
    _filter = f;
  }

  @override
  Future<Null> ngOnInit() async {
    LOGGER.info("ListBooksComponent initialized");
    fetchBooks(0);
  }

  @override
  void change(int pageNumber) {
    LOGGER.info("Fetch $pageNumber books page");
    fetchBooks(pageNumber);
  }

  Future<Null> filterBooks() async {
    fetchBooks(0);
  }

  Future<Null> delete(Book book) async {
    _bookService
        .delete(book.id)
        .then((n) => fetchBooks(_page.current), onError: handleError);
  }

  Future<Null> fetchBooks(int pageNo) async {
    _bookService
        .list(new PageRequest(pageNo, _filter))
        .then((p) => _page = p, onError: handleError)
        .whenComplete(ifEmptyShowPrev);
  }

  Future<Null> show(Book book) async {
    _router.navigate([
      'ShowBookComponent',
      {'id': book.id}
    ]);
  }

  Future<Null> edit(Book book) async {
    _router.navigate([
      'UpdateBookComponent',
      {'id': book.id}
    ]);
  }

  void ifEmptyShowPrev() {
    if (_page.hasPrev && _page.isEmpty) {
      fetchBooks(_page.current - 1);
    }
  }
}
