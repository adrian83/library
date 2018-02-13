import 'dart:async';

import 'package:angular/angular.dart';

import 'package:logging/logging.dart';

import 'common/components/validation.dart';
import 'common/components/errors.dart';
import 'common/errorhandler.dart';
import 'common/page.dart';

import 'author/service.dart';
import 'book/service.dart';

@Component(
    selector: 'start-component',
    templateUrl: 'start_component.template.html',
    directives: const [
      CORE_DIRECTIVES,
      ValidationErrorsComponent,
      ServerErrorsComponent
    ])
class StartComponent extends ErrorHandler implements OnInit {
  static final Logger LOGGER = new Logger('StartComponent');

  final BookService _bookService;
  final AuthorService _authorService;

  int _booksCount;
  int _authorsCount;

  StartComponent(this._bookService, this._authorService);

  @override
  Future<Null> ngOnInit() async {
    LOGGER.info("StartComponent initialized");
    var req = new PageRequest(0, null);
    _bookService
        .list(req)
        .then((p) => _booksCount = p.total, onError: handleError);
    _authorService
        .list(req)
        .then((p) => _authorsCount = p.total, onError: handleError);
  }

  int get booksCount => _booksCount;
  int get authorsCount => _authorsCount;
}
