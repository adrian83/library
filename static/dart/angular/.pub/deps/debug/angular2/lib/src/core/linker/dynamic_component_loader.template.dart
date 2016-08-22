// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.core.linker.dynamic_component_loader.template.dart;

import 'dynamic_component_loader.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import 'package:angular2/src/core/di.dart' show Injector, Injectable;
import 'component_factory.dart' show ComponentRef;
import 'component_resolver.dart' show ComponentResolver;
import 'view_container_ref.dart' show ViewContainerRef;
import 'package:angular2/src/core/di.template.dart' as i0;
import 'component_factory.template.dart' as i1;
import 'component_resolver.template.dart' as i2;
import 'view_container_ref.template.dart' as i3;
export 'dynamic_component_loader.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(DynamicComponentLoader_, new _ngRef.ReflectionInfo(
const [const Injectable()],
const [const [ComponentResolver]],
(ComponentResolver _compiler) => new DynamicComponentLoader_(_compiler))
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
