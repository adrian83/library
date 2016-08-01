// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.platform.worker_render.template.dart;

import 'worker_render.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import 'dart:isolate';
import 'package:angular2/core.dart';
import 'package:angular2/src/core/di.dart';
import 'package:angular2/src/platform/worker_render_common.dart' show WORKER_RENDER_APPLICATION_COMMON, initializeGenericWorkerRenderer;
import 'package:angular2/src/web_workers/shared/isolate_message_bus.dart';
import 'package:angular2/src/web_workers/shared/message_bus.dart';
import 'package:angular2/core.template.dart' as i0;
import 'package:angular2/src/core/di.template.dart' as i1;
import 'package:angular2/src/platform/worker_render_common.template.dart' as i2;
import 'package:angular2/src/web_workers/shared/isolate_message_bus.template.dart' as i3;
import 'package:angular2/src/web_workers/shared/message_bus.template.dart' as i4;
export 'worker_render.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
}
