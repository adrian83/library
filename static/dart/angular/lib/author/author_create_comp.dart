import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_forms/angular_forms.dart';

import 'author_service.dart';
import 'model.dart';

@Component(
		selector: 'b-comp',
    templateUrl: 'author_create_comp.template.html',
		directives: const[formDirectives, CORE_DIRECTIVES]
    )
class AuthorCreateComponent {
	Author author = new Author(null, "Henryk", "Sienkiewicz");

	final AuthorService _authorService;
	final Router _router;
	String error = null;

	AuthorCreateComponent(this._authorService, this._router);


	Future<Null> onSubmit() async {
		print("onSubmit");

		this.author = await this._authorService.createAuthor(this.author);
		error = "errorrrr";
	/*	_router.navigate([
		        'AuthorUpdateC',
		        {'id': author.id}
		      ]);*/
	}
}
