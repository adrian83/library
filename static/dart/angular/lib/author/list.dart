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
		directives: const[CORE_DIRECTIVES, Pagination, formDirectives]
  )
class AuthorsListComponent implements OnInit {
  final AuthorService _authorService;
  final Router _router;

  String searchedPhrase = "";

  AuthorsPage page = new AuthorsPage(0, 0, 0, new List<Author>());
  PageSwitcher switcher;

  AuthorsListComponent(this._authorService, this._router){
    switcher = new AuthorsPageSwitcher(this);
  }

  Future<Null> ngOnInit() async {
    fetchAuthors(0);
  }

  Future<Null> fetchAuthors(int pageNo) async {
    PageRequest req = new PageRequest(pageNo, searchedPhrase);
    this.page = await this._authorService.authors(req);
  }

  List<Author> get authors => this.page == null ? new List() : this.page.elements;

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
    this.page = await this._authorService.authors();
  }
}

class AuthorsPageSwitcher extends PageSwitcher {

  final AuthorsListComponent _authorsListComponent;

  AuthorsPageSwitcher(this._authorsListComponent);

  void change(int pageNumber) {
    print("change to $pageNumber in list authors");
    _authorsListComponent.fetchAuthors(pageNumber);
  }
}
