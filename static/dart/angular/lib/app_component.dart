import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'author/service.dart';
import 'book/service.dart';

import 'author/list.dart';
import 'author/create.dart';
import 'author/update.dart';
import 'author/show.dart';

import 'info/info_comp.dart';

import 'book/list.dart';
import 'book/create.dart';
import 'book/update.dart';
import 'book/show.dart';

import 'package:logging/logging.dart';


@Component(
    selector: 'app',
    template: '''
      <h1>{{title}}</h1>
      <a [routerLink]="['AuthorsListC']">Authors list</a>
      <br/>
      <a [routerLink]="['AuthorCreateC']">Create author</a>
      <br/>
      <a [routerLink]="['BooksListC']">Books list</a>
      <br/>
      <a [routerLink]="['BookCreateC']">Create books</a>
      <br/>
      <a [routerLink]="['InfoC']">Info</a>
      <router-outlet></router-outlet>''',
    directives: const [CORE_DIRECTIVES, ROUTER_DIRECTIVES],
    providers: const [AuthorService, BookService, ROUTER_PROVIDERS])


@RouteConfig(const [
  const Route(path: '/authors/list', name: 'AuthorsListC', component: AuthorsListComponent),
  const Route(path: '/authors/new', name: 'AuthorCreateC', component: AuthorCreateComponent),
  const Route(path: '/authors/show/:id', name: 'AuthorShowC', component: AuthorShowComponent),
  const Route(path: '/authors/update/:id', name: 'AuthorUpdateC', component: AuthorUpdateComponent),

  const Route(path: '/books/list', name: 'BooksListC', component: BooksListComponent),
  const Route(path: '/books/new', name: 'BookCreateC', component: BookCreateComponent),
  const Route(path: '/books/show/:id', name: 'BookShowC', component: BookShowComponent),
  const Route(path: '/books/update/:id', name: 'BookUpdateC', component: BookUpdateComponent),

  const Route(path: '/info', name: 'InfoC', component: InfoComponent)
])

class AppComponent {

  String title = 'Library';


  AppComponent(){
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((LogRecord rec) {
      print('${rec.level.name}: ${rec.time}: ${rec.message}');
    });
  }

}
