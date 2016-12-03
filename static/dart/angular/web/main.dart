import 'package:angular2/platform/browser.dart';
import '../lib/app_component.dart';
import '../lib/add_author_component.dart';
import '../lib/list_authors_component.dart';


void main() {
	//bootstrap(AppComponent);
	bootstrap(AddAuthorComponent);
	bootstrap(ListAuthorsComponent);
}
