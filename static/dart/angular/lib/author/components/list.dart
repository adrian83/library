import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_forms/angular_forms.dart';

import 'package:logging/logging.dart';

import '../service.dart';
import '../model.dart';

import '../../common/components/validation.dart';
import '../../common/components/pagination.dart';
import '../../common/errorhandler.dart';
import '../../common/page.dart';

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

  AuthorsPage page = new AuthorsPage(0, 0, 0, new List<Author>());
  String searchedPhrase = "";
  int pageNumber = 0;

  ListAuthorsComponent(this._authorService, this._router);

  Future<Null> ngOnInit() async {
    fetchAuthors(pageNumber);
  }

  void change(int pageNumber) {
    print("change to $pageNumber in list authors");
    fetchAuthors(pageNumber);
  }

  Future<Null> fetchAuthors(int pageNo) async {
    this.pageNumber = pageNo;
    PageRequest req = new PageRequest(pageNumber, searchedPhrase);
    _authorService.list(req).then((p) => this.page = p, onError: handleError);
  }

  List<Author> get authors => page == null ? new List() : page.elements;
  PageSwitcher get switcher => this;

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
    await this._authorService.delete(author.id);
    PageRequest req = new PageRequest(this.pageNumber, this.searchedPhrase);
    this.page = await this._authorService.list(req);
  }
}
