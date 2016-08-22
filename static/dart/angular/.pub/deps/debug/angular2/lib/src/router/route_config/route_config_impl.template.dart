// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.router.route_config.route_config_impl.template.dart;

import 'route_config_impl.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import '../route_definition.dart' show RouteDefinition;
import '../rules/route_paths/regex_route_path.dart' show RegexSerializer;
import '../route_definition.template.dart' as i0;
import '../rules/route_paths/regex_route_path.template.dart' as i1;
export 'route_config_impl.dart';
export '../route_definition.dart' show RouteDefinition;

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
}
