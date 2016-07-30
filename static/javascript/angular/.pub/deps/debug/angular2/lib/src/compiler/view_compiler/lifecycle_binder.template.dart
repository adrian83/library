// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.compiler.view_compiler.lifecycle_binder.template.dart;

import 'lifecycle_binder.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/metadata/lifecycle_hooks.dart' show LifecycleHooks;
import '../compile_metadata.dart' show CompileDirectiveMetadata, CompilePipeMetadata;
import '../output/output_ast.dart' as o;
import '../template_ast.dart' show DirectiveAst;
import 'compile_element.dart' show CompileElement;
import 'compile_view.dart' show CompileView;
import 'constants.dart' show DetectChangesVars, ChangeDetectorStateEnum;
import 'package:angular2/src/core/metadata/lifecycle_hooks.template.dart' as i0;
import '../compile_metadata.template.dart' as i1;
import '../output/output_ast.template.dart' as i2;
import '../template_ast.template.dart' as i3;
import 'compile_element.template.dart' as i4;
import 'compile_view.template.dart' as i5;
import 'constants.template.dart' as i6;
export 'lifecycle_binder.dart';

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
}
