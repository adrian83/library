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
    templateUrl: 'book_update_comp.template.html',
    directives: const [formDirectives, CORE_DIRECTIVES])
class BookUpdateComponent implements OnInit {

  Book book = new Book();

	final AuthorService _authorService;
  final BookService _bookService;
	final RouteParams _routeParams;

	BookUpdateComponent(this._bookService, this._authorService, this._routeParams);

	Future<Null> ngOnInit() async {
		var _id = _routeParams.get('id');
    this.book = await this._bookService.getBook(_id);
  }

	Future<Null> onSubmit() async {
		print("onSubmit");

	}

}
