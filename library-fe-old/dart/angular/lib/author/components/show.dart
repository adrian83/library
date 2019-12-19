import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'package:logging/logging.dart';

import '../../common/components/validation.dart';
import '../../common/components/errors.dart';
import '../../common/components/info.dart';
import '../../common/errorhandler.dart';

import '../service.dart';
import '../model.dart';

@Component(
    selector: 'show-author-component',
    templateUrl: 'show.template.html',
    directives: const [
      CORE_DIRECTIVES,
      ValidationErrorsComponent,
      ServerErrorsComponent,
      InfoComponent
    ])
class ShowAuthorComponent extends ErrorHandler
    with ErrorHandler
    implements OnInit {
  static final Logger LOGGER = new Logger('ShowAuthorComponent');

  final AuthorService _authorService;
  final RouteParams _routeParams;

  Author _author = new Author();

  ShowAuthorComponent(this._authorService, this._routeParams);

  @override
  Future<Null> ngOnInit() async {
    LOGGER.info("ShowAuthorComponent initialized");
    var id = _routeParams.get('id');
    _authorService.get(id).then((a) => this._author = a, onError: handleError);
  }

  Author get author => _author;
}
