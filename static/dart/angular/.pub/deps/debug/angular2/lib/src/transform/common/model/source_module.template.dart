// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.transform.common.model.source_module.template.dart;

import 'source_module.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/transform/common/url_resolver.dart';
import 'package:path/path.dart' as path;
import 'import_export_model.pb.dart';
import 'package:angular2/src/transform/common/url_resolver.template.dart' as i0;
import 'import_export_model.pb.template.dart' as i1;
export 'source_module.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
}
