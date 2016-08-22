// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.compiler.view_compiler.util.template.dart;

import 'util.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'package:angular2/src/facade/lang.dart' show isPresent, isBlank;
import '../compile_metadata.dart' show CompileTokenMetadata, CompileDirectiveMetadata, CompileIdentifierMetadata;
import '../identifiers.dart' show Identifiers;
import '../output/output_ast.dart' as o;
import 'compile_view.dart' show CompileView;
import 'package:angular2/src/facade/exceptions.template.dart' as i0;
import 'package:angular2/src/facade/lang.template.dart' as i1;
import '../compile_metadata.template.dart' as i2;
import '../identifiers.template.dart' as i3;
import '../output/output_ast.template.dart' as i4;
import 'compile_view.template.dart' as i5;
export 'util.dart';

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
