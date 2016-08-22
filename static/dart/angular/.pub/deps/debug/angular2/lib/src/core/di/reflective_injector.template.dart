// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.core.di.reflective_injector.template.dart;

import 'reflective_injector.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/facade/collection.dart' show ListWrapper;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'package:angular2/src/facade/lang.dart' show Type;
import 'injector.dart' show Injector, THROW_IF_NOT_FOUND;
import 'metadata.dart' show SelfMetadata, SkipSelfMetadata;
import 'provider.dart' show Provider;
import 'reflective_exceptions.dart' show AbstractProviderError, NoProviderError, CyclicDependencyError, InstantiationError, OutOfBoundsError;
import 'reflective_key.dart' show ReflectiveKey;
import 'reflective_provider.dart' show ResolvedReflectiveProvider, ReflectiveDependency, ResolvedReflectiveFactory, resolveReflectiveProviders;
import 'package:angular2/src/facade/collection.template.dart' as i0;
import 'package:angular2/src/facade/exceptions.template.dart' as i1;
import 'package:angular2/src/facade/lang.template.dart' as i2;
import 'injector.template.dart' as i3;
import 'metadata.template.dart' as i4;
import 'provider.template.dart' as i5;
import 'reflective_exceptions.template.dart' as i6;
import 'reflective_key.template.dart' as i7;
import 'reflective_provider.template.dart' as i8;
export 'reflective_injector.dart';

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
