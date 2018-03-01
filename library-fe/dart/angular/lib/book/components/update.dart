import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_forms/angular_forms.dart';

import 'package:logging/logging.dart';

import '../../common/components/pagination.dart';
import '../../common/page.dart';
import '../../common/components/validation.dart';
import '../../common/components/errors.dart';
import '../../common/components/info.dart';
import '../../common/errorhandler.dart';

import '../../author/service.dart';
import '../../author/model.dart';

import '../service.dart';
import '../model.dart';

@Component(
    selector: 'update-book-component',
    templateUrl: 'update.template.html',
    directives: const [
      CORE_DIRECTIVES,
      formDirectives,
      Pagination,
      ValidationErrorsComponent,
      ServerErrorsComponent,
      InfoComponent
    ])
class UpdateBookComponent extends PageSwitcher
    with ErrorHandler
    implements OnInit {
  static final Logger LOGGER = new Logger('BookUpdateComponent');

  final BookService _bookService;
  final AuthorService _authorService;
  final RouteParams _routeParams;

  Book _book = new Book(null, "", new List<Author>());

  SelectableAuthorsPage _authorsPage = new SelectableAuthorsPage(0, 0, 0, new List<SelectableAuthor>());
  String _authorsFilter = "";

  UpdateBookComponent(
      this._bookService, this._authorService, this._routeParams);

  SelectableAuthorsPage get authorsPage => _authorsPage;
  PageSwitcher get switcher => this;
  Book get book => _book;
  void set book(b) {
    _book = b;
  }

  String get authorsFilter => _authorsFilter;
  void set authorsFilter(String f) {
    _authorsFilter = f;
  }

  @override
  Future<Null> ngOnInit() async {
    LOGGER.info("BookUpdateComponent initialized");

    var _id = _routeParams.get('id');
    _bookService
        .get(_id)
        .then((b) => _book = b, onError: handleError)
        .then((n) {
      fetchAuthors(0);
    });
  }

  @override
  void change(int pageNumber) {
    LOGGER.info("Fetch $pageNumber authors page");
    fetchAuthors(pageNumber);
  }

  void filterAuthors() {
    fetchAuthors(0);
  }

  bool authorUsed(Author author) {
    return _book.authors.any((a) => a.id == author.id);
  }

  SelectableAuthorsPage toSelectableAuthorsPage(AuthorsPage authorsPage){
    var authors = authorsPage.elements.map((a) => new SelectableAuthor(a, authorUsed(a)));
    return new SelectableAuthorsPage(authorsPage.current, authorsPage.total, authorsPage.size, authors);
  }

  void fetchAuthors(int pageNumber) {
    _authorService
        .list(new PageRequest(pageNumber, _authorsFilter))
        .then((p) => _authorsPage = toSelectableAuthorsPage(p), onError: handleError);
  }

  void addAuthor(Author author) {
    if (!_book.authors.any((a) => a.id == author.id)) {
      _book.authors.add(author);
    }
  }

  void deleteAuthor(Author author) {
    _book.authors.removeWhere((a) => a.id == author.id);
  }

  Future<Null> updateBook() async {
    _bookService
        .update(_book)
        .then((b) => _book = b, onError: handleError)
        .whenComplete(() => showInfo("Book updated"));
  }
}
