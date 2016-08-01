// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.transform.common.code.source_module.template.dart;

import 'source_module.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:analyzer/src/generated/scanner.dart' show Keyword;
import 'package:angular2/src/compiler/offline_compiler.dart';
import 'package:angular2/src/transform/common/model/ng_deps_model.pb.dart';
import 'ng_deps_code.dart';
import 'package:angular2/src/compiler/offline_compiler.template.dart' as i0;
import 'package:angular2/src/transform/common/model/ng_deps_model.pb.template.dart' as i1;
import 'ng_deps_code.template.dart' as i2;
export 'source_module.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
