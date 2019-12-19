import 'package:angular/angular.dart';

@Component(
  selector: 'info',
  templateUrl: 'info_component.html',
  directives: [coreDirectives]
)
class InfoComponent  {

  @Input()
  String message;

  @Input()
  Function hide;

  void close() => hide();
}
