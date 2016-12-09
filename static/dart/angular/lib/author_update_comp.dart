import 'package:angular2/core.dart';
import 'dart:async';

import 'model.dart';
import 'author_service.dart';

@Component(
		selector: 'b-comp',
    templateUrl: 'author_update_comp.template.html'
    )
class AuthorUpdateComponent {
	@Input()
	Author author = new Author(null, "Henryk", "Sienkiewicz");

	final AuthorService _authorService;

	AuthorUpdateComponent(this._authorService);



}
