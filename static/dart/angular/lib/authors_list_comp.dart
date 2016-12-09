import 'package:angular2/core.dart';
import 'dart:async';

import 'author_service.dart';
import 'model.dart';

@Component(
		selector: 'authors_list-comp',
    templateUrl: 'authors_list_comp.template.html'
    )
class AuthorsListComponent implements OnInit {
	final AuthorService _authorService;
	List<Author> authors = new List<Author>();

	AuthorsListComponent(this._authorService);

	Future<Null> ngOnInit() async {
    this.authors = await this._authorService.listAuthors();
  }

	List<Author> get getAuthors => this.authors;

}
