import 'dart:async';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'author_service.dart';
import 'book_service.dart';
import 'model.dart';

@Component(
		selector: 'b-comp',
    templateUrl: 'book_create_comp.template.html'
    )
class BookCreateComponent implements OnInit  {
	Book book = new Book(null,"");
	List<Author> authors = new List<Author>();

	final BookService _bookService;
	final AuthorService _authorService;
	final Router _router;

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

		this.book = await this._bookService.createBook(this.book);
	//	_router.navigate([
	//	        'BookUpdateC',
	//	        {'id': book.id}
	//	      ]);
	}
}
