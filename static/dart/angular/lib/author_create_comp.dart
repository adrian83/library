import 'dart:async';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'author_service.dart';
import 'model.dart';

@Component(
		selector: 'b-comp',
    templateUrl: 'author_create_comp.template.html'
    )
class AuthorCreateComponent {
	Author author = new Author(null, "Henryk", "Sienkiewicz");

	final AuthorService _authorService;
	final Router _router;

	AuthorCreateComponent(this._authorService, this._router);


	Future<Null> onSubmit() async {
		print("onSubmit");

		this.author = await this._authorService.createAuthor(this.author);
		_router.navigate([
		        'AuthorUpdateC',
		        {'id': author.id}
		      ]);
	}
}
