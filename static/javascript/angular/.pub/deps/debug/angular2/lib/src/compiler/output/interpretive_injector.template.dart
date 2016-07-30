// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.compiler.output.interpretive_injector.template.dart;

import 'interpretive_injector.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/linker/injector_factory.dart' show CodegenInjector;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'output_interpreter.dart' show InstanceFactory, DynamicInstance;
import 'package:angular2/src/core/linker/injector_factory.template.dart' as i0;
import 'package:angular2/src/facade/exceptions.template.dart' as i1;
import 'output_interpreter.template.dart' as i2;
export 'interpretive_injector.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
