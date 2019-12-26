import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'route_paths.dart';
import 'routes.dart';
import 'store.dart';
import 'event_bus.dart';

@Component(
  selector: 'menu',
  templateUrl: 'menu_component.html',
  directives: [coreDirectives, routerDirectives],
  providers: [ClassProvider(Store), ClassProvider(EventBus)],
  exports: [RoutePaths, Routes],
  pipes: [commonPipes],
)
class MenuComponent implements OnInit {

  EventBus _eventBus;

  MenuComponent(this._eventBus);

  void ngOnInit(){}

}
