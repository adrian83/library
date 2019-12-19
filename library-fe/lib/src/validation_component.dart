import 'package:angular/angular.dart';

import 'error.dart';

@Component(
  selector: 'validation',
  templateUrl: 'validation_component.html',
  directives: [coreDirectives]
)
class ValidationComponent  {

  @Input()
  List<ConstraintViolation> violations;

  @Input()
  Function hide;

  void close() => hide();
}
