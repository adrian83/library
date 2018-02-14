import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_forms/angular_forms.dart';

import 'package:logging/logging.dart';

import '../../common/components/validation.dart';
import '../../common/components/errors.dart';
import '../../common/components/info.dart';
import '../../common/errorhandler.dart';

import '../service.dart';
import '../model.dart';

@Component(
    selector: 'update-author-component',
    templateUrl: 'update.template.html',
    directives: const [
      CORE_DIRECTIVES,
      formDirectives,
      ValidationErrorsComponent,
      ServerErrorsComponent,
      InfoComponent
    ])
class UpdateAuthorComponent extends ErrorHandler implements OnInit {
  static final Logger LOGGER = new Logger('UpdateAuthorComponent');

  final AuthorService _authorService;
  final RouteParams _routeParams;

  Author _author = new Author();

  UpdateAuthorComponent(this._authorService, this._routeParams);

  @override
  Future<Null> ngOnInit() async {
    LOGGER.info("UpdateAuthorComponent initialized");
    var _id = _routeParams.get('id');
    _authorService.get(_id).then((a) => _author = a, onError: handleError);
  }

  Author get author => this._author;

  Future<Null> update() async {
    print("Update $_author");
    _authorService.update(this._author).then((a) {
      _author = a;
      cleanValidationErrors();
    }, onError: handleError).whenComplete(() => showInfo("Author updated"));
  }
}
