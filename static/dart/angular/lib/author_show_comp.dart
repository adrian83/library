import 'dart:async';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'author_service.dart';
import 'model.dart';

@Component(
		selector: 'b-comp',
    templateUrl: 'author_show_comp.template.html'
    )
class AuthorShowComponent {
	Author author = new Author(null, "Henryk", "Sienkiewicz");

	final AuthorService _authorService;
	final RouteParams _routeParams;

	AuthorShowComponent(this._authorService, this._routeParams);

	Future<Null> ngOnInit() async {
		var _id = _routeParams.get('id');
    this.author = await this._authorService.getAuthor(_id);
  }
}
