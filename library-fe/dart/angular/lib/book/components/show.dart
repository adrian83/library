import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import '../service.dart';
import '../model.dart';

@Component(
		selector: 'b-comp',
    templateUrl: 'show.template.html',
    directives: const [CORE_DIRECTIVES])
class BookShowComponent implements OnInit {
	Book book = new Book();

	final BookService _bookService;
	final RouteParams _routeParams;

	BookShowComponent(this._bookService, this._routeParams);

	Future<Null> ngOnInit() async {
		var _id = _routeParams.get('id');
    this.book = await this._bookService.get(_id);
  }
}
