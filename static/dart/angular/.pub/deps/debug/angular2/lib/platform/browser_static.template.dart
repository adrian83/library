// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.platform.browser_static.template.dart;

import 'browser_static.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import 'package:angular2/core.dart' show ComponentRef, coreLoadAndBootstrap, ReflectiveInjector, PlatformRef, getPlatform, createPlatform, assertPlatform, PLATFORM_INITIALIZER, MapInjector;
import 'package:angular2/src/core/application_ref.dart' show PlatformRef_;
import 'package:angular2/src/core/console.dart' show Console;
import 'package:angular2/src/core/reflection/reflection.dart' show Reflector, reflector;
import 'package:angular2/src/core/reflection/reflector_reader.dart' show ReflectorReader;
import 'package:angular2/src/core/testability/testability.dart' show TestabilityRegistry;
import 'package:angular2/src/facade/lang.dart' show Type, isPresent, isBlank;
import 'package:angular2/src/platform/browser_common.dart' show BROWSER_APP_COMMON_PROVIDERS, BROWSER_PLATFORM_MARKER, createInitDomAdapter;
import 'package:angular2/core.template.dart' as i0;
import 'package:angular2/src/core/application_ref.template.dart' as i1;
import 'package:angular2/src/core/console.template.dart' as i2;
import 'package:angular2/src/core/reflection/reflection.template.dart' as i3;
import 'package:angular2/src/core/reflection/reflector_reader.template.dart' as i4;
import 'package:angular2/src/core/testability/testability.template.dart' as i5;
import 'package:angular2/src/facade/lang.template.dart' as i6;
import 'package:angular2/src/platform/browser_common.template.dart' as i7;
import 'package:angular2/src/core/angular_entrypoint.template.dart' as i8;
export 'browser_static.dart';
export 'package:angular2/src/core/angular_entrypoint.dart';
export 'package:angular2/src/platform/browser_common.dart' show BROWSER_PROVIDERS, ELEMENT_PROBE_PROVIDERS, ELEMENT_PROBE_PROVIDERS_PROD_MODE, inspectNativeElement, BrowserDomAdapter, By, Title, enableDebugTools, disableDebugTools;

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
}
