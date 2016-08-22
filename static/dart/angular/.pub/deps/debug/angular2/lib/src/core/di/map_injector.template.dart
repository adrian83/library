// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.core.di.map_injector.template.dart;

import 'map_injector.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/facade/lang.dart' show isBlank;
import 'injector.dart' show Injector, InjectorFactory, THROW_IF_NOT_FOUND;
import 'package:angular2/src/facade/lang.template.dart' as i0;
import 'injector.template.dart' as i1;
export 'map_injector.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
}
