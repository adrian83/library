// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.compiler.output.output_interpreter.template.dart;

import 'output_interpreter.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/reflection/reflection.dart' show reflector;
import 'package:angular2/src/facade/async.dart' show ObservableWrapper;
import 'package:angular2/src/facade/collection.dart' show ListWrapper;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'package:angular2/src/facade/lang.dart' show isPresent, IS_DART, FunctionWrapper;
import 'dart_emitter.dart' show debugOutputAstAsDart;
import 'output_ast.dart' as o;
import 'ts_emitter.dart' show debugOutputAstAsTypeScript;
import 'package:angular2/src/core/reflection/reflection.template.dart' as i0;
import 'package:angular2/src/facade/async.template.dart' as i1;
import 'package:angular2/src/facade/collection.template.dart' as i2;
import 'package:angular2/src/facade/exceptions.template.dart' as i3;
import 'package:angular2/src/facade/lang.template.dart' as i4;
import 'dart_emitter.template.dart' as i5;
import 'output_ast.template.dart' as i6;
import 'ts_emitter.template.dart' as i7;
export 'output_interpreter.dart';

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
}
