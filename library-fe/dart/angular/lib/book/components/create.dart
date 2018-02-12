import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_forms/angular_forms.dart';

import 'package:logging/logging.dart';

import '../../common/components/validation.dart';
import '../../common/components/pagination.dart';
import '../../common/errorhandler.dart';
import '../../common/page.dart';

import '../../author/service.dart';
import '../../author/model.dart';

import '../service.dart';
import '../model.dart';

@Component(
    selector: 'create-book-component',
    templateUrl: 'create.template.html',
    directives: const [CORE_DIRECTIVES, formDirectives, Pagination, ValidationErrorsComponent])
class CreateBookComponent extends PageSwitcher
    with ErrorHandler
    implements OnInit {
  static final Logger LOGGER = new Logger('CreateBookComponent');

  final BookService _bookService;
  final AuthorService _authorService;
  final Router _router;

  Book _book = new Book(null, "", new List<Author>());

  AuthorsPage _authorsPage = new AuthorsPage(0, 0, 0, new List<Author>());
  String _authorsFilter = "";

  CreateBookComponent(this._bookService, this._authorService, this._router);

@override
  Future<Null> ngOnInit() async {
    LOGGER.info("CreateBookComponent initialized");
    fetchAuthors(0);
  }

  void change(int pageNumber) {
    print("Fetch $pageNumber authors page");
    fetchAuthors(pageNumber);
  }

  bool authorUsed(Author author) {
    return _book.authors.any((a) => a.id == author.id);
  }

  Future<Null> fetchAuthors(int pageNumber) async {
    _authorService
        .list(new PageRequest(pageNumber, _authorsFilter))
        .then((p) => _authorsPage = p, onError: handleError);
  }

  Book get book => _book;
  AuthorsPage get authorsPage => _authorsPage;
  PageSwitcher get switcher => this;
  String get authorsFilter => _authorsFilter;
  void set authorsFilter(String f){
    _authorsFilter = f;
  }

  void filterAuthors(){
    fetchAuthors(0);
  }

  void addAuthor(Author author) {
    LOGGER.info("Adding author: $author");
    if (!_book.authors.any((a) => a.id == author.id)) {
      _book.authors.add(author);
    }
  }

  void deleteAuthor(Author author) {
    LOGGER.info("Removing author: $author");
    _book.authors.removeWhere((a) => a.id == author.id);
  }

  Future<Null> createBook() async {
    _bookService
        .create(_book)
        .then((b) => _book = b, onError: handleError)
        .whenComplete(showEditPage);
  }

  void showEditPage() {
    if (_book.id != null) {
      _router.navigate([
        'UpdateBookComponent',
        {'id': _book.id}
      ]);
    }
  }
}
