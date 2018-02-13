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

const LIST_AUTHORS_PATH = '/authors/list';
const CREATE_AUTHOR_PATH = '/authors/new';
const LIST_BOOKS_PATH = '/books/list';
const CREATE_BOOK_PATH = '/books/new';
const INFO_PATH = '/info';

@Component(
    selector: 'app',
    templateUrl: 'app_component.template.html',
    directives: const [CORE_DIRECTIVES, ROUTER_DIRECTIVES],
    providers: const [AuthorService, BookService, ROUTER_PROVIDERS])
@RouteConfig(const [
  const Route(path: '/', name: 'StartComponent', component: StartComponent),
  const Route(
      path: LIST_AUTHORS_PATH,
      name: 'ListAuthorsComponent',
      component: ListAuthorsComponent),
  const Route(
      path: CREATE_AUTHOR_PATH,
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
      path: LIST_BOOKS_PATH,
      name: 'ListBooksComponent',
      component: ListBooksComponent),
  const Route(
      path: CREATE_BOOK_PATH,
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
  const Route(path: INFO_PATH, name: 'InfoC', component: InfoComponent)
])
class AppComponent {

  static final Logger LOGGER = new Logger('AppComponent');

  String title = 'Library';

  List<MenuElement> _menuElements;
  MenuElement _active;
  MenuSubElements _activeSubElement;

  final Location location;

  AppComponent(this.location) {



    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((LogRecord rec) {
      print(
          '${rec.loggerName}: ${rec.level.name}: ${rec.time}: ${rec.message}');
    });

    var p = location.path();
    LOGGER.info("Location $p");

    var listAuthors = new MenuSubElements("Authors list", const ['ListAuthorsComponent'], LIST_AUTHORS_PATH);
    var createAuthor =
        new MenuSubElements("Create author", const ['CreateAuthorComponent'], CREATE_AUTHOR_PATH);
    var listBooks =
        new MenuSubElements("Books list", const ['ListBooksComponent'], LIST_BOOKS_PATH);
    var cleateBook =
        new MenuSubElements("Create books", const ['CreateBookComponent'], CREATE_BOOK_PATH);
    var showInfo = new MenuSubElements("Info", const ['InfoC'], INFO_PATH);

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

    _selectMenuElements();
  }

  List<MenuElement> get menuElements => _menuElements;
  List<MenuSubElements> get menuSubElements => _active.subElements;
  String get activeMenuElem => _active == null ? "" : _active.label;
  String get activeMenuSubElem =>
      _activeSubElement == null ? "" : _activeSubElement.label;

  void cleanMenu() {
    _activeSubElement = null;
  }

  void makeActiveMenuElem(MenuElement menuElem) {
    _active = menuElem;
  }

  void makeActiveMenuSubElem(MenuSubElements menuSubElem) {
    _activeSubElement = menuSubElem;
  }

  void _selectMenuElements(){
    var path = location.path();
    for (var menuElem in _menuElements) {
      for (var menuSubElem in menuElem.subElements) {
        if(menuSubElem.path == path) {
          _activeSubElement = menuSubElem;
          _active = menuElem;
          return;
        }
      }
    }
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
  String _path;

  MenuSubElements(this._label, this._component, this._path);

  String get label => _label;
  List<String> get component => _component;
  String get path => _path;
}
