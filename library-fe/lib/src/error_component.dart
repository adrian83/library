import 'package:angular/angular.dart';

@Component(
  selector: 'error',
  templateUrl: 'error_component.html',
  directives: [coreDirectives]
)
class ErrorComponent  {

  @Input()
  String message;

  @Input()
  Function hide;

  void close() => hide();
}
