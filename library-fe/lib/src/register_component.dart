import 'package:http/http.dart';
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'auth_service.dart';
import 'user.dart';
import 'error_component.dart';
import 'validation_component.dart';
import 'info_component.dart';
import 'form_component.dart';

@Component(
  selector: 'register',
  templateUrl: 'register_component.html',
  directives: [coreDirectives, ErrorComponent, ValidationComponent, InfoComponent],
  providers: [ClassProvider(AuthService)],
  pipes: [commonPipes],
)
class RegisterComponent extends FormComponent {

  AuthService _authService;

  RegisterComponent(this._authService, Router router): super(router);

  void onSuccessfullRegister(Response response) {
    infoMsg = "Successfully registered";
  }

  void register(String email, String password, String repeatedPassword) async {
    print("Email: $email, password: $password, password2: $repeatedPassword");
    var register = Register(email, password, repeatedPassword);
    handleErrors(_authService.register(register), onSuccessfullRegister);
  }

}
