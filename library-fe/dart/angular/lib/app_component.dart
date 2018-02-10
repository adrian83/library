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

import './start_component.dart';

import 'package:logging/logging.dart';

@Component(
    selector: 'app',
    templateUrl: 'app_component.template.html',
    directives: const [CORE_DIRECTIVES, ROUTER_DIRECTIVES],
    providers: const [AuthorService, BookService, ROUTER_PROVIDERS])
@RouteConfig(const [

  const Route(
      path: '/',
      name: 'StartComponent',
      component: StartComponent),
  const Route(
      path: '/authors/list',
      name: 'ListAuthorsComponent',
      component: ListAuthorsComponent),
  const Route(
      path: '/authors/new',
      name: 'CreateAuthorComponent',
      component: CreateAuthorComponent),
  const Route(
      path: '/authors/show/:id',
      name: 'ShowAuthorComponent',
      component: ShowAuthorComponent),
  const Route(
      path: '/authors/update/:id',
      name: 'UpdateAuthorComponent',
      component: UpdateAuthorComponent),
  const Route(
      path: '/books/list',
      name: 'ListBooksComponent',
      component: ListBooksComponent),
  const Route(
      path: '/books/new',
      name: 'CreateBookComponent',
      component: CreateBookComponent),
  const Route(
      path: '/books/show/:id',
      name: 'ShowBookComponent',
      component: ShowBookComponent),
  const Route(
      path: '/books/update/:id',
      name: 'UpdateBookComponent',
      component: UpdateBookComponent),
  const Route(path: '/info', name: 'InfoC', component: InfoComponent)
])
class AppComponent {
  String title = 'Library';

  List<MenuElement> _menuElements;
  MenuElement _active;
  MenuSubElements _activeSubElement;

  AppComponent() {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((LogRecord rec) {
      print(
          '${rec.loggerName}: ${rec.level.name}: ${rec.time}: ${rec.message}');
    });

    var listAuthors =
        new MenuSubElements("Authors list", const ['ListAuthorsComponent']);
    var createAuthor =
        new MenuSubElements("Create author", const ['CreateAuthorComponent']);
    var listBooks =
        new MenuSubElements("Books list", const ['ListBooksComponent']);
    var cleateBook =
        new MenuSubElements("Create books", const ['CreateBookComponent']);
    var showInfo = new MenuSubElements("Info", const ['InfoC']);

    var authorsLinks = new List<MenuSubElements>();
    authorsLinks.add(listAuthors);
    authorsLinks.add(createAuthor);

    var booksLinks = new List<MenuSubElements>();
    booksLinks.add(listBooks);
    booksLinks.add(cleateBook);

    var infoLinks = new List<MenuSubElements>();
    infoLinks.add(showInfo);

    var authors = new MenuElement("Authors", authorsLinks);
    var books = new MenuElement("Books", booksLinks);
    var info = new MenuElement("Info", infoLinks);

    _menuElements = new List<MenuElement>();
    _menuElements.add(authors);
    _menuElements.add(books);
    _menuElements.add(info);

    _active = _menuElements[0];
  }

  List<MenuElement> get menuElements => _menuElements;
  List<MenuSubElements> get menuSubElements => _active.subElements;
  String get activeMenuElem => _active == null ? "" : _active.label;
  String get activeMenuSubElem => _activeSubElement == null ? "" : _activeSubElement.label;

  void cleanMenu() {
    _activeSubElement = null;
  }

  void makeActiveMenuElem(MenuElement menuElem) {
    _active = menuElem;
  }

  void makeActiveMenuSubElem(MenuSubElements menuSubElem) {
    _activeSubElement = menuSubElem;
  }
}

class MenuElement {
  String _label;
  List<MenuSubElements> _subElements;

  MenuElement(this._label, this._subElements);

  String get label => _label;
  List<MenuSubElements> get subElements => _subElements;
}

class MenuSubElements {
  String _label;
  List<String> _component;

  MenuSubElements(this._label, this._component);

  String get label => _label;
  List<String> get component => _component;
}
