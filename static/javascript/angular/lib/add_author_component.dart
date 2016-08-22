import 'package:angular2/core.dart';
import 'dart:html';

class Author {
	String firstName = "Henryk";
	String lastName = "Sienkiewicz";
}




@Component(
    selector: 'add-author-form',
    template: '''
    	<h1>My First Angular 2 App</h1><div>{{author.firstName}} {{author.lastName}}</div>
	    <div>
	    	<input [(ngModel)]="author.firstName"/>
	    	<br/>
	    	<input [(ngModel)]="author.lastName"/>
	    	<br/>
	    	<input type="submit" (click)="onSubmit()" />
	    </div>
    '''
    )
class AddAuthorComponent {
	Author author = new Author();
	
	onSubmit() {
		window.alert("- " + author.lastName);
	}
}


