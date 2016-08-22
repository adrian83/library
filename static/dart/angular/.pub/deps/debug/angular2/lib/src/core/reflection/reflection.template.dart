// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library reflection.reflection.template.dart;

import 'reflection.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/facade/lang.dart';
import 'platform_reflection_capabilities.dart';
import 'reflector.dart';
import 'types.dart';
import 'package:angular2/src/facade/lang.template.dart' as i0;
import 'platform_reflection_capabilities.template.dart' as i1;
import 'reflector.template.dart' as i2;
import 'types.template.dart' as i3;
export 'reflection.dart';
export 'reflector.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
