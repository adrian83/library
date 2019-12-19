import 'package:http/http.dart';
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';


import 'user.dart';
import 'auth_service.dart';
import 'event_bus.dart';
import 'route_paths.dart';
import 'error_component.dart';
import 'validation_component.dart';
import 'info_component.dart';
import 'form_component.dart';
import 'store.dart';

@Component(
  selector: 'login',
  templateUrl: 'login_component.html',
  directives: [coreDirectives, ErrorComponent, ValidationComponent, InfoComponent],
  providers: [ClassProvider(AuthService), ClassProvider(EventBus)],
  pipes: [commonPipes],
)
class LoginComponent extends FormComponent {

  Router _router;
  AuthService _authService;
  EventBus _eventBus;
  Store _store;

  LoginComponent(this._authService, this._router, this._eventBus, this._store): super(_router);

  void onSuccessfullLogin(Response response) {

    var headers = response.headers;
    var authToken = headers['authorization'];

    _store.storeAuthToken(authToken);
    _eventBus.onEvent(authToken != null);
    _router.navigate(RoutePaths.dashboard.toUrl());
  }

  void login(String email, String password) async {
    print("Email: $email, password: $password");
    var login = Login(email, password);
    handleErrors(_authService.login(login), onSuccessfullLogin);
  }

}
