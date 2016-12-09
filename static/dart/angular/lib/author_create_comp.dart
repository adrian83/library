import 'package:angular2/core.dart';

import 'model.dart';
import 'author_service.dart';

@Component(
		selector: 'b-comp',
    templateUrl: 'author_create_comp.template.html'
    )
class AuthorCreateComponent {
	Author author = new Author(null, "Henryk", "Sienkiewicz");
	final AuthorService _authorService;

	AuthorCreateComponent(this._authorService);


	onSubmit() {
		print("onSubmit");

		//_authorService.saveAuthor(author);
	}
}
