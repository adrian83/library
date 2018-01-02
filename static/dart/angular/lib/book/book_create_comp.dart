import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_forms/angular_forms.dart';

import 'book_service.dart';
import 'model.dart';

import '../author/author_service.dart';
import '../author/model.dart';

import '../common/errors.dart';

@Component(
    selector: 'b-comp',
    templateUrl: 'book_create_comp.template.html',
    directives: const [formDirectives, CORE_DIRECTIVES])
class BookCreateComponent implements OnInit {
  Book book = new Book(null, "");
  List<Author> authors = new List<Author>();

  final BookService _bookService;
  final AuthorService _authorService;

  final Router _router;

  List<ValidationError> validationErrors;

  BookCreateComponent(this._bookService, this._authorService, this._router);

  Future<Null> ngOnInit() async {
    this.authors = await this._authorService.listAuthors();
  }

  List<Author> get getAuthors => this.authors;

  addAuthor(Author author) {
    book.authors.add(author);
  }

  Future<Null> onSubmit() async {
    print("onSubmit");

    this._bookService.createBook(this.book).then((book) => bookCreated(book),
        onError: (e) {
      onError(e);
    }).whenComplete(() {
      if (this.book.id != null) {
        _router.navigate([
          'BookUpdateC',
          {'id': this.book.id}
        ]);
      }
    });
  }

  void onError(e) {
    print(e);
    if (e is ValidationErrors) {
      this.validationErrors = e.validationErrors;
    } else {
      print("Not ValidationErrors: ${e}");
    }
  }

  void bookCreated(Book book) {
    this.book = book;
  }
}
