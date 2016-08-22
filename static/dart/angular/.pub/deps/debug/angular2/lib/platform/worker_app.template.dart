// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.platform.worker_app.template.dart;

import 'worker_app.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import 'dart:isolate';
import 'package:angular2/core.dart';
import 'package:angular2/src/facade/lang.dart';
import 'package:angular2/src/platform/worker_app.dart';
import 'package:angular2/src/platform/worker_app_common.dart';
import 'package:angular2/core.template.dart' as i0;
import 'package:angular2/src/facade/lang.template.dart' as i1;
import 'package:angular2/src/platform/worker_app.template.dart' as i2;
import 'package:angular2/src/platform/worker_app_common.template.dart' as i3;
import 'package:angular2/src/core/angular_entrypoint.template.dart' as i4;
import 'package:angular2/src/web_workers/shared/client_message_broker.template.dart' as i5;
import 'package:angular2/src/web_workers/shared/message_bus.template.dart' as i6;
import 'package:angular2/src/web_workers/shared/serializer.template.dart' as i7;
import 'package:angular2/src/web_workers/shared/service_message_broker.template.dart' as i8;
import 'package:angular2/src/web_workers/worker/router_providers.template.dart' as i9;
export 'worker_app.dart';
export 'package:angular2/src/core/angular_entrypoint.dart' show AngularEntrypoint;
export 'package:angular2/src/platform/worker_app.dart' show WORKER_APP_APPLICATION, RENDER_SEND_PORT;
export 'package:angular2/src/platform/worker_app_common.dart' show WORKER_APP_PLATFORM, WORKER_APP_APPLICATION_COMMON;
export 'package:angular2/src/web_workers/shared/client_message_broker.dart' show ClientMessageBroker, ClientMessageBrokerFactory, FnArg, UiArguments;
export 'package:angular2/src/web_workers/shared/message_bus.dart';
export 'package:angular2/src/web_workers/shared/serializer.dart' show PRIMITIVE;
export 'package:angular2/src/web_workers/shared/service_message_broker.dart' show ReceivedMessage, ServiceMessageBroker, ServiceMessageBrokerFactory;
export 'package:angular2/src/web_workers/worker/router_providers.dart' show WORKER_APP_ROUTER;

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
i5.initReflector();
i6.initReflector();
i7.initReflector();
i8.initReflector();
i9.initReflector();
}
