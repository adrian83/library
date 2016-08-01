// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.core.di.reflective_provider.template.dart;

import 'reflective_provider.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/reflection/reflection.dart' show reflector;
import 'package:angular2/src/facade/collection.dart' show MapWrapper, ListWrapper, StringMapWrapper;
import 'package:angular2/src/facade/lang.dart' show Type, isBlank, isPresent, isArray, isType;
import '../metadata/di.dart' show InjectorModuleMetadata, ProviderPropertyMetadata;
import 'forward_ref.dart' show resolveForwardRef;
import 'metadata.dart' show InjectMetadata, OptionalMetadata, SelfMetadata, HostMetadata, SkipSelfMetadata, DependencyMetadata;
import 'provider.dart' show Provider, ProviderBuilder, provide, noValueProvided;
import 'reflective_exceptions.dart' show NoAnnotationError, MixingMultiProvidersWithRegularProvidersError, InvalidProviderError;
import 'reflective_key.dart' show ReflectiveKey;
import 'package:angular2/src/core/reflection/reflection.template.dart' as i0;
import 'package:angular2/src/facade/collection.template.dart' as i1;
import 'package:angular2/src/facade/lang.template.dart' as i2;
import '../metadata/di.template.dart' as i3;
import 'forward_ref.template.dart' as i4;
import 'metadata.template.dart' as i5;
import 'provider.template.dart' as i6;
import 'reflective_exceptions.template.dart' as i7;
import 'reflective_key.template.dart' as i8;
export 'reflective_provider.dart';

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
