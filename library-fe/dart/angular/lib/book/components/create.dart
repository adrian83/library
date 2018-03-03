import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_forms/angular_forms.dart';

import 'package:logging/logging.dart';

import '../../common/components/validation.dart';
import '../../common/components/pagination.dart';
import '../../common/components/info.dart';
import '../../common/components/errors.dart';

import '../../author/service.dart';
import '../../author/model.dart';
import '../../author/components/pageable.dart';

import '../service.dart';
import '../model.dart';

@Component(
    selector: 'create-book-component',
    templateUrl: 'create.template.html',
    directives: const [
      CORE_DIRECTIVES,
      formDirectives,
      Pagination,
      ValidationErrorsComponent,
      ServerErrorsComponent,
      InfoComponent
    ])
class CreateBookComponent extends AuthorsPageable implements OnInit {
  static final Logger LOGGER = new Logger('CreateBookComponent');

  final BookService _bookService;
  final Router _router;

  Book _book = new Book(null, "", new List<Author>());

  CreateBookComponent(
      AuthorService authorService, this._bookService, this._router)
      : super(authorService);

  Book get book => _book;

  @override
  Future<Null> ngOnInit() async {
    LOGGER.info("CreateBookComponent initialized");
    usedAuthors = _book.authors;
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
    LOGGER.info("Create book: $_book");
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
