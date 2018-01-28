import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import '../../common/errorhandler.dart';

import '../service.dart';
import '../model.dart';

@Component(selector: 'show-author-component', templateUrl: 'show.template.html')
class ShowAuthorComponent extends ErrorHandler implements OnInit {
  Author _author = new Author();

  final AuthorService _authorService;
  final RouteParams _routeParams;

  ShowAuthorComponent(this._authorService, this._routeParams);

  Future<Null> ngOnInit() async {
    var _id = _routeParams.get('id');
    _authorService.get(_id).then((a) => this._author = a, onError: handleError);
    ;
  }

  Author get author => _author;
}
