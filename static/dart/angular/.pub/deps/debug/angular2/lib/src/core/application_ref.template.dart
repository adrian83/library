// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.core.application_ref.template.dart;

import 'application_ref.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import 'package:angular2/src/core/change_detection/change_detector_ref.dart' show ChangeDetectorRef;
import 'package:angular2/src/core/console.dart' show Console;
import 'package:angular2/src/core/di.dart' show Provider, Injector, Injectable;
import 'package:angular2/src/core/linker/component_factory.dart' show ComponentRef;
import 'package:angular2/src/core/linker/component_factory.dart' show ComponentFactory;
import 'package:angular2/src/core/linker/component_resolver.dart' show ComponentResolver;
import 'package:angular2/src/core/testability/testability.dart' show TestabilityRegistry, Testability;
import 'package:angular2/src/core/zone/ng_zone.dart' show NgZone, NgZoneError;
import 'package:angular2/src/facade/async.dart' show PromiseWrapper, ObservableWrapper;
import 'package:angular2/src/facade/collection.dart' show ListWrapper;
import 'package:angular2/src/facade/exceptions.dart' show BaseException, ExceptionHandler;
import 'package:angular2/src/facade/lang.dart' show Type, isBlank, isPresent, assertionsEnabled, isPromise;
import 'application_tokens.dart' show PLATFORM_INITIALIZER, APP_INITIALIZER;
import 'profile/profile.dart' show wtfLeave, wtfCreateScope, WtfScopeFn;
import 'package:angular2/src/core/change_detection/change_detector_ref.template.dart' as i0;
import 'package:angular2/src/core/console.template.dart' as i1;
import 'package:angular2/src/core/di.template.dart' as i2;
import 'package:angular2/src/core/linker/component_factory.template.dart' as i3;
import 'package:angular2/src/core/linker/component_resolver.template.dart' as i4;
import 'package:angular2/src/core/testability/testability.template.dart' as i5;
import 'package:angular2/src/core/zone/ng_zone.template.dart' as i6;
import 'package:angular2/src/facade/async.template.dart' as i7;
import 'package:angular2/src/facade/collection.template.dart' as i8;
import 'package:angular2/src/facade/exceptions.template.dart' as i9;
import 'package:angular2/src/facade/lang.template.dart' as i10;
import 'application_tokens.template.dart' as i11;
import 'profile/profile.template.dart' as i12;
export 'application_ref.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(PlatformRef_, new _ngRef.ReflectionInfo(
const [const Injectable()],
const [],
() => new PlatformRef_())
)
..registerType(ApplicationRef_, new _ngRef.ReflectionInfo(
const [const Injectable()],
const [const [PlatformRef_], const [NgZone], const [Injector]],
(PlatformRef_ _platform, NgZone _zone, Injector _injector) => new ApplicationRef_(_platform, _zone, _injector))
)
;
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
i10.initReflector();
i11.initReflector();
i12.initReflector();
}
