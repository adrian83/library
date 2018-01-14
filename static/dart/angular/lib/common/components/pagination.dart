import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_forms/angular_forms.dart';


@Component(
		selector: 'pagination',
    templateUrl: 'pagination.template.html',
		directives: const[formDirectives, CORE_DIRECTIVES]
    )
class Pagination implements OnInit {
  String text = "this is test";

   Future<Null> ngOnInit() async {
     print("Pagination initialized");
   }
}
