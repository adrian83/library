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

@Component(
    selector: 'b-comp',
    templateUrl: 'create.template.html',
    directives: const [formDirectives, CORE_DIRECTIVES])
class BookCreateComponent implements OnInit {
  static final Logger LOGGER = new Logger('BookCreateComponent');

  final BookService _bookService;
  final AuthorService _authorService;
  final Router _router;

  Book book = new Book(null, "", new List<Author>());
  List<Author> authors = new List<Author>();
  List<ValidationError> validationErrors;

  BookCreateComponent(this._bookService, this._authorService, this._router);

  Future<Null> ngOnInit() async {
    LOGGER.info("Init BookCreateComponent");
    var page = await this._authorService.authors();
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

  Future<Null> createBook() async {
    this._bookService.createBook(this.book).then((book) => this.book = book,
        onError: (e) {
      if (e is ValidationErrors) {
        LOGGER.info("Invalid book: ${e.validationErrors}");
        this.validationErrors = e.validationErrors;
      } else {
        LOGGER.info("Error while book creation: $e");
      }
    }).whenComplete(() {
      if (this.book.id != null) {
        showEditPage();
      }
    });
  }

  void showEditPage() {
    _router.navigate([
      'BookUpdateC',
      {'id': this.book.id}
    ]);
  }
}
