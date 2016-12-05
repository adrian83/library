import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

@Component(
		selector: 'authors-list-comp',
    templateUrl: 'a_comp.template.html',
    directives: const [ROUTER_DIRECTIVES]
    )
class AuthorsListComponent {
	final AuthorService _authorService;

	AuthorsListComponent(this._heroService);
}
