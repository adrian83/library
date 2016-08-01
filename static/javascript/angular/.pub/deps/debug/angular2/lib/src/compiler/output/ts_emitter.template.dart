// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.compiler.output.ts_emitter.template.dart;

import 'ts_emitter.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'package:angular2/src/facade/lang.dart' show isPresent, isArray;
import '../compile_metadata.dart' show CompileIdentifierMetadata;
import 'abstract_emitter.dart' show OutputEmitter, EmitterVisitorContext, AbstractEmitterVisitor, CATCH_ERROR_VAR, CATCH_STACK_VAR;
import 'output_ast.dart' as o;
import 'path_util.dart' show getImportModulePath, ImportEnv;
import 'package:angular2/src/facade/exceptions.template.dart' as i0;
import 'package:angular2/src/facade/lang.template.dart' as i1;
import '../compile_metadata.template.dart' as i2;
import 'abstract_emitter.template.dart' as i3;
import 'output_ast.template.dart' as i4;
import 'path_util.template.dart' as i5;
export 'ts_emitter.dart';

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
