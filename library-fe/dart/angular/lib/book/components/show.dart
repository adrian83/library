import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'package:logging/logging.dart';

import '../../common/components/validation.dart';
import '../../common/errorhandler.dart';

import '../service.dart';
import '../model.dart';

@Component(
    selector: 'show-book-component',
    templateUrl: 'show.template.html',
    directives: const [CORE_DIRECTIVES, ValidationErrorsComponent])
class ShowBookComponent extends ErrorHandler implements OnInit {
  static final Logger LOGGER = new Logger('ShowBookComponent');

  Book _book = new Book();

  final BookService _bookService;
  final RouteParams _routeParams;

  ShowBookComponent(this._bookService, this._routeParams);

  Book get book => _book;

  @override
  Future<Null> ngOnInit() async {
    LOGGER.info("ShowBookComponent initialized");
    var _id = _routeParams.get('id');
    _bookService.get(_id).then((b) => _book = b, onError: handleError);
  }
}
