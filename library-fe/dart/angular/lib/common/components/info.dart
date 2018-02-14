import 'dart:async';

import 'package:angular/angular.dart';

import 'package:logging/logging.dart';


@Component(
    selector: 'info-messages',
    templateUrl: 'info.template.html',
    directives: const [CORE_DIRECTIVES])
class InfoComponent implements OnInit {
  static final Logger LOGGER = new Logger('InfoComponent');

  @Input()
  List<String> info;

  Future<Null> ngOnInit() async {
    LOGGER.info("InfoComponent initialized. Info: $info");
  }

  void removeInfo(String msg) {
    new Future.delayed(new Duration(seconds: 1), (){
      info.removeWhere((i) => i == msg);
      LOGGER.info("Rem info: $msg");
    });

  }
}
