import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'author_service.dart';
import 'book_service.dart';

import 'authors_list_comp.dart';
import 'author_create_comp.dart';
import 'author_update_comp.dart';
import 'author_show_comp.dart';
import 'books_list_comp.dart';
import 'book_create_comp.dart';

import 'package:logging/logging.dart';



@Component(
    selector: 'my-app',
    template: '''
      <h1>{{title}}</h1>
      <a [routerLink]="['AuthorsListC']">Authors list</a>
      <br/>
      <a [routerLink]="['AuthorCreateC']">Create author</a>
      <br/>
      <a [routerLink]="['BooksListC']">Books list</a>
      <br/>
      <a [routerLink]="['BookCreateC']">Create books</a>
      <router-outlet></router-outlet>''',
    directives: const [ROUTER_DIRECTIVES], // components
    providers: const [AuthorService,BookService,ROUTER_PROVIDERS]) // services
@RouteConfig(const [
  const Route(path: '/authors/list', name: 'AuthorsListC', component: AuthorsListComponent),
  const Route(path: '/authors/new', name: 'AuthorCreateC', component: AuthorCreateComponent),
  const Route(path: '/authors/show/:id', name: 'AuthorShowC', component: AuthorShowComponent),
  const Route(path: '/authors/update/:id', name: 'AuthorUpdateC', component: AuthorUpdateComponent),
  const Route(path: '/books/list', name: 'BooksListC', component: BooksListComponent),
  const Route(path: '/books/new', name: 'BookCreateC', component: BookCreateComponent)//,
  //const Route(path: '/books/show/:id', name: 'BookShowC', component: BookShowComponent),
  //const Route(path: '/books/update/:id', name: 'BookUpdateC', component: BookUpdateComponent)
])
class AppComponent {

  String title = 'Library';
  AuthorService _authorService;
  BookService _bookService;

  AppComponent(this._authorService, this._bookService){
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((LogRecord rec) {
      print('${rec.level.name}: ${rec.time}: ${rec.message}');
    });
  }

}
