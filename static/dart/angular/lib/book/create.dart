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
    templateUrl: 'create.template.html',
    directives: const [formDirectives, CORE_DIRECTIVES, Pagination])
class BookCreateComponent extends PageSwitcher implements OnInit {
  static final Logger LOGGER = new Logger('BookCreateComponent');

  final BookService _bookService;
  final AuthorService _authorService;
  final Router _router;

  Book book = new Book(null, "", new List<Author>());
  List<ValidationError> validationErrors;

  String searchedPhrase = "";

  AuthorsPage page = new AuthorsPage(0, 0, 0, new List<Author>());


  BookCreateComponent(this._bookService, this._authorService, this._router);

  Future<Null> ngOnInit() async {
    LOGGER.info("Init BookCreateComponent");
    fetchAuthors(0);
  }

  void change(int pageNumber){
    print("Change authors page to $pageNumber");
    fetchAuthors(pageNumber);
  }

  Future<Null> fetchAuthors(int pageNo) async {
    PageRequest req = new PageRequest(pageNo, searchedPhrase);
    this.page = await this._authorService.authors(req);
  }

  List<Author> get authors => this.page == null ? new List<Author>() : this.page.elements;
  PageSwitcher get switcher => this;

  void addAuthor(Author author) {
    LOGGER.info("Adding author: $author");
    if (!book.authors.any((a) => a.id == author.id)) {
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
