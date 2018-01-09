import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'service.dart';
import 'model.dart';

@Component(
		selector: 'b-comp',
    templateUrl: 'show.template.html'
    )
class AuthorShowComponent implements OnInit {
	Author author = new Author();

	final AuthorService _authorService;
	final RouteParams _routeParams;

	AuthorShowComponent(this._authorService, this._routeParams);

	Future<Null> ngOnInit() async {
		var _id = _routeParams.get('id');
    this.author = await this._authorService.getAuthor(_id);
  }
}
