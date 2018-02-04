import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_forms/angular_forms.dart';

import 'package:logging/logging.dart';

import '../../common/components/validation.dart';
import '../../common/components/pagination.dart';
import '../../common/errorhandler.dart';
import '../../common/page.dart';

import '../service.dart';
import '../model.dart';

@Component(
    selector: 'authors_list-comp',
    templateUrl: 'list.template.html',
    directives: const [
      CORE_DIRECTIVES,
      Pagination,
      formDirectives,
      ValidationErrorsComponent
    ])
class ListAuthorsComponent extends PageSwitcher
    with ErrorHandler
    implements OnInit {
  static final Logger LOGGER = new Logger('ListAuthorsComponent');

  final AuthorService _authorService;
  final Router _router;

  AuthorsPage _page = new AuthorsPage(0, 0, 0, new List<Author>());
  String _filter = "";
  int _currentPage = 0;

  ListAuthorsComponent(this._authorService, this._router);

  @override
  Future<Null> ngOnInit() async {
    LOGGER.info("ListAuthorsComponent initialized");
    fetchAuthors(_currentPage);
  }

  PageSwitcher get switcher => this;
  AuthorsPage get page => this._page;
  String get filter => this._filter;

  void change(int pageNumber) {
    LOGGER.info("Fetch $pageNumber authors page");
    fetchAuthors(pageNumber);
  }

  Future<Null> fetchAuthors(int pageNo) async {
    this._currentPage = pageNo;
    _authorService
        .list(new PageRequest(_currentPage, _filter))
        .then((p) => this._page = p, onError: handleError)
        .whenComplete(ifEmptyShowPrev);
  }

  Future<Null> show(Author author) async {
    _router.navigate([
      'ShowAuthorComponent',
      {'id': author.id}
    ]);
  }

  Future<Null> edit(Author author) async {
    _router.navigate([
      'UpdateAuthorComponent',
      {'id': author.id}
    ]);
  }

  Future<Null> delete(Author author) async {
    _authorService.delete(author.id).then((n) {
      fetchAuthors(_page.current);
    }, onError: handleError);
  }

  void ifEmptyShowPrev(){
    if (_page.hasPrev && _page.isEmpty) {
      fetchAuthors(_page.current - 1);
    }
  }
}
