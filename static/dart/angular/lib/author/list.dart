import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'service.dart';
import 'model.dart';

@Component(
    selector: 'authors_list-comp',
    templateUrl: 'list.template.html',
		directives: const[CORE_DIRECTIVES]
  )
class AuthorsListComponent implements OnInit {
  final AuthorService _authorService;
  final Router _router;

  List<Author> authors = new List<Author>();

  AuthorsListComponent(this._authorService, this._router);

  Future<Null> ngOnInit() async {
    this.authors = await this._authorService.listAuthors();
  }

  List<Author> get getAuthors => this.authors;

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
    this.authors = await this._authorService.listAuthors();
  }
}
