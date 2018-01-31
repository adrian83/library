import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'author/service.dart';
import 'book/service.dart';

import 'author/components/list.dart';
import 'author/components/create.dart';
import 'author/components/update.dart';
import 'author/components/show.dart';

import 'info/info_comp.dart';

import 'book/components/list.dart';
import 'book/components/create.dart';
import 'book/components/update.dart';
import 'book/components/show.dart';

import 'package:logging/logging.dart';


@Component(
    selector: 'app',
    template: '''
      <h1>{{title}}</h1>
      <a [routerLink]="['ListAuthorsComponent']">Authors list</a>
      <br/>
      <a [routerLink]="['CreateAuthorComponent']">Create author</a>
      <br/>
      <a [routerLink]="['ListBooksComponent']">Books list</a>
      <br/>
      <a [routerLink]="['CreateBookComponent']">Create books</a>
      <br/>
      <a [routerLink]="['InfoC']">Info</a>
      <router-outlet></router-outlet>''',
    directives: const [CORE_DIRECTIVES, ROUTER_DIRECTIVES],
    providers: const [AuthorService, BookService, ROUTER_PROVIDERS])


@RouteConfig(const [
  const Route(path: '/authors/list', name: 'ListAuthorsComponent', component: ListAuthorsComponent),
  const Route(path: '/authors/new', name: 'CreateAuthorComponent', component: CreateAuthorComponent),
  const Route(path: '/authors/show/:id', name: 'ShowAuthorComponent', component: ShowAuthorComponent),
  const Route(path: '/authors/update/:id', name: 'UpdateAuthorComponent', component: UpdateAuthorComponent),

  const Route(path: '/books/list', name: 'ListBooksComponent', component: ListBooksComponent),
  const Route(path: '/books/new', name: 'CreateBookComponent', component: CreateBookComponent),
  const Route(path: '/books/show/:id', name: 'ShowBookComponent', component: ShowBookComponent),
  const Route(path: '/books/update/:id', name: 'UpdateBookComponent', component: UpdateBookComponent),

  const Route(path: '/info', name: 'InfoC', component: InfoComponent)
])

class AppComponent {

  String title = 'Library';


  AppComponent(){
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((LogRecord rec) {
      print('${rec.loggerName}: ${rec.level.name}: ${rec.time}: ${rec.message}');
    });
  }

}
