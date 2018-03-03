import 'dart:async';

import '../../common/components/pagination.dart';
import '../../common/errorhandler.dart';
import '../../common/page.dart';

import '../../author/service.dart';
import '../../author/model.dart';

import '../service.dart';
import '../model.dart';

class AuthorsPageable extends PageSwitcher with ErrorHandler {
  final AuthorService _authorService;

  SelectableAuthorsPage _authorsPage =
      new SelectableAuthorsPage(0, 0, 0, new List<SelectableAuthor>());
  String _authorsFilter = "";

  List<Author> _usedAuthors = new List<Author>();

  AuthorsPageable(this._authorService);

  List<Author> get usedAuthors => _usedAuthors;
  void set usedAuthors(List<Author> authors) {
    _usedAuthors = authors == null ? new List<Author>() : authors;
  }

  SelectableAuthorsPage get authorsPage => _authorsPage;

  PageSwitcher get switcher => this;

  String get authorsFilter => _authorsFilter;
  void set authorsFilter(String f) {
    _authorsFilter = f;
  }

  bool authorUsed(Author author) {
    return _usedAuthors.any((a) => a.id == author.id);
  }

  SelectableAuthorsPage toSelectableAuthorsPage(AuthorsPage authorsPage) {
    var authors =
        authorsPage.elements.map((a) => new SelectableAuthor(a, authorUsed(a)));
    return new SelectableAuthorsPage(
        authorsPage.current, authorsPage.total, authorsPage.size, authors);
  }

  Future<Null> fetchAuthors(int pageNumber) async {
    _authorService.list(new PageRequest(pageNumber, _authorsFilter)).then(
        (p) => _authorsPage = toSelectableAuthorsPage(p),
        onError: handleError);
  }

  @override
  void change(int pageNumber) {
    print("Fetch $pageNumber authors page");
    fetchAuthors(pageNumber);
  }
}
