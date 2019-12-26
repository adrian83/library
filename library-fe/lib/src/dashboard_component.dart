import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'route_paths.dart';
import 'routes.dart';
import 'store.dart';


@Component(
  selector: 'dashboard',
  templateUrl: 'dashboard_component.html',
  directives: [coreDirectives, routerDirectives],
  exports: [RoutePaths, Routes]
)
class DashboardComponent implements OnInit {

  Store _store;
  Router _router;

  DashboardComponent(this._store, this._router);

  void ngOnInit(){

  }

}
