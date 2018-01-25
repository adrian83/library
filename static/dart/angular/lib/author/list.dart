import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_forms/angular_forms.dart';

import 'service.dart';
import 'model.dart';

import '../common/components/pagination.dart';
import '../common/page.dart';

@Component(
    selector: 'authors_list-comp',
    templateUrl: 'list.template.html',
    directives: const [CORE_DIRECTIVES, Pagination, formDirectives])
class AuthorsListComponent extends PageSwitcher implements OnInit {
  final AuthorService _authorService;
  final Router _router;

  String searchedPhrase = "";
  int pageNumber = 0;

  AuthorsPage page = new AuthorsPage(0, 0, 0, new List<Author>());

  AuthorsListComponent(this._authorService, this._router);

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
    this.page = await this._authorService.authors(req);
  }

  List<Author> get authors =>
      this.page == null ? new List() : this.page.elements;
  PageSwitcher get switcher => this;

  Future<Null> show(Author author) async {
    _router.navigate([
      'AuthorShowC',
      {'id': author.id}
    ]);
  }

  Future<Null> edit(Author author) async {
    _router.navigate([
      'AuthorUpdateC',
      {'id': author.id}
    ]);
  }

  Future<Null> delete(Author author) async {
    await this._authorService.deleteAuthor(author.id);
    PageRequest req = new PageRequest(this.pageNumber, this.searchedPhrase);
    this.page = await this._authorService.authors(req);
  }
}
