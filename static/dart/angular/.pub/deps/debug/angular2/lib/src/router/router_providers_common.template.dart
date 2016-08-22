// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.router.router_providers_common.template.dart;

import 'router_providers_common.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/core.dart' show ApplicationRef, Provider;
import 'package:angular2/platform/common.dart' show LocationStrategy, PathLocationStrategy, Location;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'package:angular2/src/router/route_registry.dart' show RouteRegistry, ROUTER_PRIMARY_COMPONENT;
import 'package:angular2/src/router/router.dart' show Router, RootRouter;
import 'package:angular2/core.template.dart' as i0;
import 'package:angular2/platform/common.template.dart' as i1;
import 'package:angular2/src/facade/exceptions.template.dart' as i2;
import 'package:angular2/src/router/route_registry.template.dart' as i3;
import 'package:angular2/src/router/router.template.dart' as i4;
export 'router_providers_common.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
}
