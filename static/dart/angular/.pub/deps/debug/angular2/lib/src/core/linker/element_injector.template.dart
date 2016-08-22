// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.core.linker.element_injector.template.dart;

import 'element_injector.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/di/injector.dart' show Injector, THROW_IF_NOT_FOUND;
import 'view.dart' show AppView;
import 'package:angular2/src/core/di/injector.template.dart' as i0;
import 'view.template.dart' as i1;
export 'element_injector.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
}
