// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.compiler.offline_compiler.template.dart;

import 'offline_compiler.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import 'package:angular2/src/core/linker/component_factory.dart' show ComponentFactory;
import 'package:angular2/src/facade/collection.dart' show ListWrapper;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'compile_metadata.dart' show CompileDirectiveMetadata, CompileIdentifierMetadata, CompilePipeMetadata, createHostComponentMeta, CompileInjectorModuleMetadata, CompileTypeMetadata;
import 'directive_normalizer.dart' show DirectiveNormalizer;
import 'output/abstract_emitter.dart' show OutputEmitter;
import 'output/output_ast.dart' as o;
import 'style_compiler.dart' show StyleCompiler, StylesCompileResult;
import 'template_parser.dart' show TemplateParser;
import 'util.dart' show MODULE_SUFFIX;
import 'view_compiler/injector_compiler.dart' show InjectorCompiler;
import 'view_compiler/view_compiler.dart' show ViewCompiler, ViewCompileResult;
import 'package:angular2/src/core/linker/component_factory.template.dart' as i0;
import 'package:angular2/src/facade/collection.template.dart' as i1;
import 'package:angular2/src/facade/exceptions.template.dart' as i2;
import 'compile_metadata.template.dart' as i3;
import 'directive_normalizer.template.dart' as i4;
import 'output/abstract_emitter.template.dart' as i5;
import 'output/output_ast.template.dart' as i6;
import 'style_compiler.template.dart' as i7;
import 'template_parser.template.dart' as i8;
import 'util.template.dart' as i9;
import 'view_compiler/injector_compiler.template.dart' as i10;
import 'view_compiler/view_compiler.template.dart' as i11;
export 'offline_compiler.dart';

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
i11.initReflector();
}
