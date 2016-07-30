// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.compiler.output.output_ast.template.dart;

import 'output_ast.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/facade/lang.dart' show isString, isPresent, isBlank;
import '../compile_metadata.dart' show CompileIdentifierMetadata;
import 'package:angular2/src/facade/lang.template.dart' as i0;
import '../compile_metadata.template.dart' as i1;
export 'output_ast.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
}
