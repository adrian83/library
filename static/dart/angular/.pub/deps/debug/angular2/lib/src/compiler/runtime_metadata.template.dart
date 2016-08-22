// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.compiler.runtime_metadata.template.dart;

import 'runtime_metadata.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/compiler/url_resolver.dart' show getUrlScheme;
import 'package:angular2/src/core/di.dart' show resolveForwardRef;
import 'package:angular2/src/core/di.dart' show Injectable, Inject, Optional;
import 'package:angular2/src/core/di/metadata.dart' show SelfMetadata, HostMetadata, SkipSelfMetadata;
import 'package:angular2/src/core/di/provider.dart' show Provider;
import 'package:angular2/src/core/di/reflective_provider.dart' show constructDependencies, ReflectiveDependency, getInjectorModuleProviders;
import 'package:angular2/src/core/metadata/di.dart' as dimd;
import 'package:angular2/src/core/metadata/di.dart' show AttributeMetadata;
import 'package:angular2/src/core/metadata/directives.dart' as md;
import 'package:angular2/src/core/metadata/lifecycle_hooks.dart' show LIFECYCLE_HOOKS_VALUES;
import 'package:angular2/src/core/metadata/view.dart' show ViewMetadata;
import 'package:angular2/src/core/platform_directives_and_pipes.dart' show PLATFORM_DIRECTIVES, PLATFORM_PIPES;
import 'package:angular2/src/core/reflection/reflection.dart' show reflector;
import 'package:angular2/src/facade/collection.dart' show StringMapWrapper;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'package:angular2/src/facade/lang.dart' show Type, isBlank, isPresent, isArray, stringify, isString;
import 'assertions.dart' show assertArrayOfStrings;
import 'compile_metadata.dart' as cpl;
import 'directive_lifecycle_reflector.dart' show hasLifecycleHook;
import 'directive_resolver.dart' show DirectiveResolver;
import 'pipe_resolver.dart' show PipeResolver;
import 'util.dart' show MODULE_SUFFIX, sanitizeIdentifier;
import 'view_resolver.dart' show ViewResolver;
import 'package:angular2/src/compiler/url_resolver.template.dart' as i0;
import 'package:angular2/src/core/di.template.dart' as i1;
import 'package:angular2/src/core/di/metadata.template.dart' as i2;
import 'package:angular2/src/core/di/provider.template.dart' as i3;
import 'package:angular2/src/core/di/reflective_provider.template.dart' as i4;
import 'package:angular2/src/core/metadata/di.template.dart' as i5;
import 'package:angular2/src/core/metadata/directives.template.dart' as i6;
import 'package:angular2/src/core/metadata/lifecycle_hooks.template.dart' as i7;
import 'package:angular2/src/core/metadata/view.template.dart' as i8;
import 'package:angular2/src/core/platform_directives_and_pipes.template.dart' as i9;
import 'package:angular2/src/core/reflection/reflection.template.dart' as i10;
import 'package:angular2/src/facade/collection.template.dart' as i11;
import 'package:angular2/src/facade/exceptions.template.dart' as i12;
import 'package:angular2/src/facade/lang.template.dart' as i13;
import 'assertions.template.dart' as i14;
import 'compile_metadata.template.dart' as i15;
import 'directive_lifecycle_reflector.template.dart' as i16;
import 'directive_resolver.template.dart' as i17;
import 'pipe_resolver.template.dart' as i18;
import 'util.template.dart' as i19;
import 'view_resolver.template.dart' as i20;
export 'runtime_metadata.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(RuntimeMetadataResolver, new _ngRef.ReflectionInfo(
const [const Injectable()],
const [const [DirectiveResolver], const [PipeResolver], const [ViewResolver], const [List, const Optional(), const Inject(PLATFORM_DIRECTIVES)], const [List, const Optional(), const Inject(PLATFORM_PIPES)]],
(DirectiveResolver _directiveResolver, PipeResolver _pipeResolver, ViewResolver _viewResolver, List<Type> _platformDirectives, List<Type> _platformPipes) => new RuntimeMetadataResolver(_directiveResolver, _pipeResolver, _viewResolver, _platformDirectives, _platformPipes))
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
i13.initReflector();
i14.initReflector();
i15.initReflector();
i16.initReflector();
i17.initReflector();
i18.initReflector();
i19.initReflector();
i20.initReflector();
}
