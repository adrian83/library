import 'dart:async';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'author_service.dart';
import 'model.dart';

@Component(
    selector: 'authors_list-comp',
    templateUrl: 'authors_list_comp.template.html')
class AuthorsListComponent implements OnInit {
  final AuthorService _authorService;
  final Router _router;

  List<Author> authors = new List<Author>();

  AuthorsListComponent(this._authorService, this._router);

  Future<Null> ngOnInit() async {
    this.authors = await this._authorService.listAuthors();
  }

  List<Author> get getAuthors => this.authors;

  Future<Null> showDetails(Author author) async {
    _router.navigate([
      'AuthorShowC',
      {'id': author.id}
    ]);
  }

  Future<Null> deleteAuthor(Author author) async {
    await this._authorService.deleteAuthor(author.id);
  }
}
