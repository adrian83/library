// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.compiler.template_ast.template.dart;

import 'template_ast.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'expression_parser/ast.dart' show AST;
import 'compile_metadata.dart' show CompileDirectiveMetadata, CompileTokenMetadata, CompileProviderMetadata;
import 'parse_util.dart' show ParseSourceSpan;
import '../core/security.dart';
import 'expression_parser/ast.template.dart' as i0;
import 'compile_metadata.template.dart' as i1;
import 'parse_util.template.dart' as i2;
import '../core/security.template.dart' as i3;
export 'template_ast.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
