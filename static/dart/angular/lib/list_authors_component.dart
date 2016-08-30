import 'package:angular2/core.dart';
import 'dart:html';

import '../lib/model.dart';
import '../lib/author_service.dart';

@Component(
	selector: 'list-authors',
    template: '''
    	<h1>Authors' list</h1>
    	<div>
    	<ul>
    	<li *ngFor="let author of authors">
  			{{author.firstName}} {{author.lastName}}
		</li>
		</ul>	
    	</div>
    ''',
    providers: const [AuthorService]
    )
class ListAuthorsComponent {
	List<Author> authors = new List<Author>();
	AuthorService _authorService;
	
	ListAuthorsComponent(this._authorService){
		_authorService.listAuthors(setAuthors);
	}
	
	void setAuthors(List<Author> auts){
		this.authors = auts;
	}
}
