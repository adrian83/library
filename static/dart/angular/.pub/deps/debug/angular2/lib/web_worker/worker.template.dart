// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.web_worker.worker.template.dart;

import 'worker.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/platform/worker_app.template.dart' as i0;
import '../common.template.dart' as i1;
import '../compiler.template.dart' as i2;
import '../core.template.dart' as i3;
import '../instrumentation.template.dart' as i4;
import '../platform/worker_app.template.dart' as i5;
export 'worker.dart';
export 'package:angular2/src/platform/worker_app.dart';
export '../common.dart';
export '../compiler.dart' show UrlResolver;
export '../core.dart';
export '../instrumentation.dart';
export '../platform/worker_app.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
i5.initReflector();
}
