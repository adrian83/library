import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_forms/angular_forms.dart';

import '../service.dart';
import '../model.dart';

@Component(
		selector: 'update-author-component',
    templateUrl: 'update.template.html',
		directives: const[formDirectives]
    )
class UpdateAuthorComponent implements OnInit {

	final AuthorService _authorService;
	final RouteParams _routeParams;

	Author _author = new Author();

	UpdateAuthorComponent(this._authorService, this._routeParams);

	Future<Null> ngOnInit() async {
		var _id = _routeParams.get('id');
    this._author = await this._authorService.get(_id);
  }

	Author get author => this._author;

	Future<Null> onSubmit() async {
		print("onSubmit");

		this._author = await this._authorService.update(this.author);
	}

}
