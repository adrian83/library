import 'package:angular/angular.dart';

import 'store.dart';
import 'event_bus.dart';

@Component(
  selector: 'logout',
  templateUrl: 'logout_component.html',
  directives: [coreDirectives],
    providers: [ClassProvider(Store), ClassProvider(EventBus)],
  pipes: [commonPipes],
)
class LogoutComponent implements OnInit {

  Store _store;
  EventBus _eventBus;

  LogoutComponent(this._store, this._eventBus);

  void ngOnInit(){
    _store.storeAuthToken(null);
    _eventBus.onEvent(false);
  }

}
