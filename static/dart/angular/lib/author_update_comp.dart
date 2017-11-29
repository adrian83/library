import 'dart:async';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'author_service.dart';
import 'model.dart';

@Component(
		selector: 'b-comp',
    templateUrl: 'author_update_comp.template.html'
    )
class AuthorUpdateComponent implements OnInit {

	Author author = new Author(null, "Henryk", "Sienkiewicz");

	final AuthorService _authorService;
	final RouteParams _routeParams;

	AuthorUpdateComponent(this._authorService, this._routeParams);

	Future<Null> ngOnInit() async {
		var _id = _routeParams.get('id');
    this.author = await this._authorService.getAuthor(_id);
  }

	Future<Null> onSubmit() async {
		print("onSubmit");
	}

}
