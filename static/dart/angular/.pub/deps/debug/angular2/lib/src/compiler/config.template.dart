// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.compiler.config.template.dart;

import 'config.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/facade/lang.dart' show isBlank;
import 'compile_metadata.dart' show CompileIdentifierMetadata;
import 'identifiers.dart' show Identifiers;
import 'package:angular2/src/facade/lang.template.dart' as i0;
import 'compile_metadata.template.dart' as i1;
import 'identifiers.template.dart' as i2;
export 'config.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
