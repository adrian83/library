import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_forms/angular_forms.dart';

import 'package:logging/logging.dart';

import '../../common/components/validation.dart';
import '../../common/components/errors.dart';
import '../../common/errorhandler.dart';

import '../service.dart';
import '../model.dart';

@Component(
    selector: 'create-author-component',
    templateUrl: 'create.template.html',
    directives: const [
      CORE_DIRECTIVES,
      formDirectives,
      ValidationErrorsComponent, ServerErrorsComponent
    ])
class CreateAuthorComponent extends ErrorHandler implements OnInit {
  static final Logger LOGGER = new Logger('CreateAuthorComponent');

  final AuthorService _authorService;
  final Router _router;

  Author _author = new Author();

  CreateAuthorComponent(this._authorService, this._router);

  Author get author => _author;

  @override
  void ngOnInit() {
    LOGGER.info("CreateAuthorComponent initialized");
  }

  Future<Null> save() async {
    LOGGER.info("Saving $author");

    _authorService
        .create(this._author)
        .then((a) {
          _author = a;
          cleanValidationErrors();
        }, onError: handleError)
        .whenComplete(showEditPage);
  }

  void showEditPage() {
    if (this._author.id != null) {
      _router.navigate([
        'UpdateAuthorComponent',
        {'id': this._author.id}
      ]);
    }
  }
}
