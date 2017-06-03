import 'dart:async';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'book_service.dart';
import 'model.dart';

@Component(
		selector: 'b-comp',
    templateUrl: 'book_create_comp.template.html'
    )
class BookCreateComponent {
	Book book = new Book(null,"Potop");

	final BookService _bookService;
	final Router _router;

	BookCreateComponent(this._bookService, this._router);


	Future<Null> onSubmit() async {
		print("onSubmit");

		this.book = await this._bookService.createBook(this.book);
	//	_router.navigate([
	//	        'BookUpdateC',
	//	        {'id': book.id}
	//	      ]);
	}
}
