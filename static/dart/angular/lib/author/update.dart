import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_forms/angular_forms.dart';

import 'service.dart';
import 'model.dart';

@Component(
		selector: 'b-comp',
    templateUrl: 'update.template.html',
		directives: const[formDirectives]
    )
class AuthorUpdateComponent implements OnInit {

	Author author = new Author();

	final AuthorService _authorService;
	final RouteParams _routeParams;

	AuthorUpdateComponent(this._authorService, this._routeParams);

	Future<Null> ngOnInit() async {
		var _id = _routeParams.get('id');
    this.author = await this._authorService.getAuthor(_id);
  }

	Future<Null> onSubmit() async {
		print("onSubmit");

		this.author = await this._authorService.updateAuthor(this.author);
	}

}
