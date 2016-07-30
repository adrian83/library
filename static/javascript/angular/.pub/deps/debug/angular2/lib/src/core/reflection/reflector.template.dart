// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.core.reflection.reflector.template.dart;

import 'reflector.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/facade/collection.dart' show Map, MapWrapper, Set, SetWrapper, StringMapWrapper;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'package:angular2/src/facade/lang.dart' show Type, isPresent;
import 'platform_reflection_capabilities.dart' show PlatformReflectionCapabilities;
import 'reflector_reader.dart' show ReflectorReader;
import 'types.dart' show SetterFn, GetterFn, MethodFn;
import 'package:angular2/src/facade/collection.template.dart' as i0;
import 'package:angular2/src/facade/exceptions.template.dart' as i1;
import 'package:angular2/src/facade/lang.template.dart' as i2;
import 'platform_reflection_capabilities.template.dart' as i3;
import 'reflector_reader.template.dart' as i4;
import 'types.template.dart' as i5;
export 'reflector.dart';
export 'platform_reflection_capabilities.dart' show PlatformReflectionCapabilities;
export 'types.dart' show SetterFn, GetterFn, MethodFn;

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
