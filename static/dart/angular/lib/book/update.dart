import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_forms/angular_forms.dart';

import 'package:logging/logging.dart';

import 'service.dart';
import 'model.dart';

import '../author/service.dart';
import '../author/model.dart';

import '../common/errors.dart';
import '../common/components/pagination.dart';
import '../common/page.dart';

@Component(
    selector: 'b-comp',
    templateUrl: 'update.template.html',
    directives: const [formDirectives, CORE_DIRECTIVES])
class BookUpdateComponent implements OnInit {
  static final Logger LOGGER = new Logger('BookUpdateComponent');

  final BookService _bookService;
  final AuthorService _authorService;
  final Router _router;
  final RouteParams _routeParams;

  Book book = new Book(null, "", new List<Author>());
  List<Author> authors = new List<Author>();
  List<ValidationError> validationErrors;

  String searchedPhrase = "";
  int pageNumber = 0;

  BookUpdateComponent(this._bookService, this._authorService, this._router, this._routeParams);

  Future<Null> ngOnInit() async {
    LOGGER.info("Init BookCreateComponent");

    var _id = _routeParams.get('id');
    this.book = await this._bookService.getBook(_id);
    LOGGER.info("Edited book: $book");
    PageRequest req = new PageRequest(pageNumber, searchedPhrase);
    var page = await this._authorService.authors(req);
    this.authors = page == null ? new List() : page.elements;
  }

  List<Author> get getAuthors => this.authors;

  void addAuthor(Author author) {
    LOGGER.info("Adding author: $author");
    if (!book.authors.contains(author)) {
      book.authors.add(author);
    }
  }

  void deleteAuthor(Author author) {
    LOGGER.info("Removing author: $author");
    book.authors.remove(author);
  }

  Future<Null> updateBook() async {
    this._bookService.updateBook(this.book).then((book) => this.book = book,
        onError: (e) {
      if (e is ValidationErrors) {
        LOGGER.info("Invalid book: ${e.validationErrors}");
        this.validationErrors = e.validationErrors;
      } else {
        LOGGER.info("Error while book creation: $e");
      }
    });
  }


}
