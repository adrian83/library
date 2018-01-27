import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_forms/angular_forms.dart';

import 'package:logging/logging.dart';

import '../common/errors.dart';
import '../common/components/validation.dart';

import 'service.dart';
import 'model.dart';

@Component(
    selector: 'create-author-component',
    templateUrl: 'create.template.html',
    directives: const [
      CORE_DIRECTIVES,
      formDirectives,
      ValidationErrorsComponent
    ])
class CreateAuthorComponent {
  static final Logger LOGGER = new Logger('CreateAuthorComponent');

  final AuthorService _authorService;
  final Router _router;

  Author _author = new Author();
  List<ValidationError> _validationErrors;

  CreateAuthorComponent(this._authorService, this._router);

  List<ValidationError> get validationErrors => this._validationErrors == null
      ? new List<ValidationError>()
      : this._validationErrors;

  Author get author => _author;
  void set author(Author author) {
    this._author = author;
  }

  Future<Null> onSubmit() async {
    LOGGER.info("Creating $author");

    this._authorService.createAuthor(this._author).then((a) => this._author = a,
        onError: (e) {
      if (e is ValidationErrors) {
        LOGGER.info("Invalid author: ${e.validationErrors}");
        this._validationErrors = e.validationErrors;
      } else {
        LOGGER.info("Error while author creation: $e");
      }
    }).whenComplete(() {
      if (this._author.id != null) {
        showEditPage();
      }
    });
  }

  void showEditPage() {
    _router.navigate([
      'AuthorUpdateC',
      {'id': this._author.id}
    ]);
  }
}
