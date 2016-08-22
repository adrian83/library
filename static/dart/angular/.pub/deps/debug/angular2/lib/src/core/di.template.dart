// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.core.di.template.dart;

import 'di.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'di/metadata.template.dart' as i0;
import 'di/decorators.template.dart' as i1;
import 'di/forward_ref.template.dart' as i2;
import 'di/injector.template.dart' as i3;
import 'di/reflective_injector.template.dart' as i4;
import 'di/provider.template.dart' as i5;
import 'di/reflective_provider.template.dart' as i6;
import 'di/reflective_key.template.dart' as i7;
import 'di/reflective_exceptions.template.dart' as i8;
import 'di/opaque_token.template.dart' as i9;
import 'di/map_injector.template.dart' as i10;
export 'di.dart';
export 'di/metadata.dart' show InjectMetadata, OptionalMetadata, InjectableMetadata, SelfMetadata, HostMetadata, SkipSelfMetadata, DependencyMetadata;
export 'di/decorators.dart';
export 'di/forward_ref.dart' show forwardRef, resolveForwardRef, ForwardRefFn;
export 'di/injector.dart' show Injector, InjectorFactory;
export 'di/reflective_injector.dart' show ReflectiveInjector;
export 'di/provider.dart' show Binding, ProviderBuilder, bind, Provider, provide, noValueProvided;
export 'di/reflective_provider.dart' show ResolvedReflectiveBinding, ResolvedReflectiveFactory, ReflectiveDependency, ResolvedReflectiveProvider;
export 'di/reflective_key.dart' show ReflectiveKey;
export 'di/reflective_exceptions.dart' show NoProviderError, AbstractProviderError, CyclicDependencyError, InstantiationError, InvalidProviderError, NoAnnotationError, OutOfBoundsError;
export 'di/opaque_token.dart' show OpaqueToken;
export 'di/map_injector.dart' show MapInjector, MapInjectorFactory;

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
i10.initReflector();
}
