import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'dart:async';

import 'author_service.dart';
import 'model.dart';

@Component(
		selector: 'authors_list-comp',
    templateUrl: 'a_comp.template.html'//,
    //directives: const [ROUTER_DIRECTIVES],
		//providers: const [AuthorService]
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
