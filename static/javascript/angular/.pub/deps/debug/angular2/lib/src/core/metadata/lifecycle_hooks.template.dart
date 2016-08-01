// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.core.metadata.lifecycle_hooks.template.dart;

import 'lifecycle_hooks.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/change_detection/change_detection_util.dart' show SimpleChange;
import 'package:angular2/src/core/change_detection/change_detection_util.template.dart' as i0;
export 'lifecycle_hooks.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
}
