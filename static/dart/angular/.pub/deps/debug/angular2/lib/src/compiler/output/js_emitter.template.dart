// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.compiler.output.js_emitter.template.dart;

import 'js_emitter.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/facade/lang.dart' show isPresent, isBlank;
import 'abstract_emitter.dart' show OutputEmitter, EmitterVisitorContext;
import 'abstract_js_emitter.dart' show AbstractJsEmitterVisitor;
import 'output_ast.dart' as o;
import 'path_util.dart' show getImportModulePath, ImportEnv;
import 'package:angular2/src/facade/lang.template.dart' as i0;
import 'abstract_emitter.template.dart' as i1;
import 'abstract_js_emitter.template.dart' as i2;
import 'output_ast.template.dart' as i3;
import 'path_util.template.dart' as i4;
export 'js_emitter.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
}
