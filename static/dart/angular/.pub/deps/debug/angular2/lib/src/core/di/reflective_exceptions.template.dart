// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.core.di.reflective_exceptions.template.dart;

import 'reflective_exceptions.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/facade/collection.dart' show ListWrapper;
import 'package:angular2/src/facade/exceptions.dart' show BaseException, WrappedException;
import 'package:angular2/src/facade/lang.dart' show stringify, isBlank;
import 'reflective_injector.dart' show ReflectiveInjector;
import 'reflective_key.dart' show ReflectiveKey;
import 'provider.dart';
import 'package:angular2/src/facade/collection.template.dart' as i0;
import 'package:angular2/src/facade/exceptions.template.dart' as i1;
import 'package:angular2/src/facade/lang.template.dart' as i2;
import 'reflective_injector.template.dart' as i3;
import 'reflective_key.template.dart' as i4;
import 'provider.template.dart' as i5;
export 'reflective_exceptions.dart';

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
