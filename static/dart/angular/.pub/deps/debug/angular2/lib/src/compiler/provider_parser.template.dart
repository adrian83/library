// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.compiler.provider_parser.template.dart;

import 'provider_parser.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/facade/collection.dart' show ListWrapper;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'package:angular2/src/facade/lang.dart' show isPresent, isBlank, isArray;
import 'compile_metadata.dart' show CompileTypeMetadata, CompileTokenMap, CompileQueryMetadata, CompileTokenMetadata, CompileProviderMetadata, CompileDirectiveMetadata, CompileDiDependencyMetadata;
import 'identifiers.dart' show Identifiers, identifierToken;
import 'parse_util.dart' show ParseSourceSpan, ParseError;
import 'template_ast.dart' show ReferenceAst, AttrAst, DirectiveAst, ProviderAst, ProviderAstType;
import 'package:angular2/src/facade/collection.template.dart' as i0;
import 'package:angular2/src/facade/exceptions.template.dart' as i1;
import 'package:angular2/src/facade/lang.template.dart' as i2;
import 'compile_metadata.template.dart' as i3;
import 'identifiers.template.dart' as i4;
import 'parse_util.template.dart' as i5;
import 'template_ast.template.dart' as i6;
export 'provider_parser.dart';

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
