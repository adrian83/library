import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_forms/angular_forms.dart';

import 'package:logging/logging.dart';

import '../../common/components/pagination.dart';
import '../../common/components/validation.dart';
import '../../common/components/errors.dart';
import '../../common/components/info.dart';

import '../../author/components/pageable.dart';
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
class UpdateBookComponent extends AuthorsPageable implements OnInit {
  static final Logger LOGGER = new Logger('BookUpdateComponent');

  final BookService _bookService;
  final RouteParams _routeParams;

  Book _book = new Book(null, "", new List<Author>());

  UpdateBookComponent(
      this._bookService, AuthorService authorService, this._routeParams)
      : super(authorService);

  Book get book => _book;
  void set book(b) {
    _book = b;
  }

  @override
  Future<Null> ngOnInit() async {
    LOGGER.info("BookUpdateComponent initialized");

    var _id = _routeParams.get('id');
    _bookService
        .get(_id)
        .then((b) => _book = b, onError: handleError)
        .then((n) => fetchAuthors(0))
        .whenComplete(() {
      usedAuthors = _book.authors;
    });
  }

  void filterAuthors() {
    fetchAuthors(0);
  }

  void addAuthor(Author author) {
    LOGGER.info("Add author $author len ${_book.authors.length}" );
    if (author.id != null && !_book.authors.any((a) => a.id == author.id)) {
      _book.authors.add(author);
    }
  }

  void deleteAuthor(Author author) {
    _book.authors.removeWhere((a) => a.id == author.id);
  }

  Future<Null> updateBook() async {
  LOGGER.info("update book $_book" );
    _bookService
        .update(_book)
        .then((b) => _book = b, onError: handleError)
        .then((n) => showInfo("Book updated"))
        .whenComplete(() {
      usedAuthors = _book.authors;
    });
  }
}
