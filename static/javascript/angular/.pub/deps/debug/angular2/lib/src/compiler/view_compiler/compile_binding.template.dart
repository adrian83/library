// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.compiler.view_compiler.compile_binding.template.dart;

import 'compile_binding.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import '../template_ast.dart' show TemplateAst;
import 'compile_element.dart' show CompileNode;
import '../template_ast.template.dart' as i0;
import 'compile_element.template.dart' as i1;
export 'compile_binding.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
}
