// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.compiler.view_compiler.compile_element.template.dart;

import 'compile_element.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/facade/collection.dart' show ListWrapper, StringMapWrapper;
import 'package:angular2/src/facade/lang.dart' show isPresent, isBlank;
import '../compile_metadata.dart' show CompileTokenMap, CompileDirectiveMetadata, CompileTokenMetadata, CompileQueryMetadata, CompileProviderMetadata, CompileDiDependencyMetadata;
import '../identifiers.dart' show Identifiers, identifierToken;
import '../output/output_ast.dart' as o;
import '../template_ast.dart' show TemplateAst, ProviderAst, ProviderAstType, ReferenceAst;
import 'compile_method.dart' show CompileMethod;
import 'compile_query.dart' show CompileQuery, createQueryList, addQueryToTokenMap;
import 'compile_view.dart' show CompileView;
import 'constants.dart' show InjectMethodVars;
import 'util.dart' show getPropertyInView, createDiTokenExpression, injectFromViewParentInjector, convertValueToOutputAst;
import 'package:angular2/src/facade/collection.template.dart' as i0;
import 'package:angular2/src/facade/lang.template.dart' as i1;
import '../compile_metadata.template.dart' as i2;
import '../identifiers.template.dart' as i3;
import '../output/output_ast.template.dart' as i4;
import '../template_ast.template.dart' as i5;
import 'compile_method.template.dart' as i6;
import 'compile_query.template.dart' as i7;
import 'compile_view.template.dart' as i8;
import 'constants.template.dart' as i9;
import 'util.template.dart' as i10;
export 'compile_element.dart';

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
i8.initReflector();
i9.initReflector();
i10.initReflector();
}
