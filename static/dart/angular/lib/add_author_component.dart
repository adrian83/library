import 'package:angular2/core.dart';
import 'dart:html';

import '../lib/model.dart';
import '../lib/author_service.dart';



@Component(
    selector: 'add-author-form',
    template: '''
    	<h1>Create author</h1>
    	<div>{{author.firstName}} {{author.lastName}}</div>
	    <div>
	    	<input [(ngModel)]="author.firstName"/>
	    	<br/>
	    	<input [(ngModel)]="author.lastName"/>
	    	<br/>
	    	<input type="submit" (click)="onSubmit()" />
	    </div>
    ''',
    providers: const [AuthorService]
    )
class AddAuthorComponent {
	Author author = new Author("Henryk", "Sienkiewicz");
	AuthorService _authorService;
	
	AddAuthorComponent(this._authorService){}
	
	
	onSubmit() {
		_authorService.saveAuthor(author);
	}
}


