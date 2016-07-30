// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
import 'style_sanitizer.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'url_sanitizer.dart';
import 'package:angular2/src/platform/dom/dom_adapter.dart' show DOM;
import 'url_sanitizer.template.dart' as i0;
import 'package:angular2/src/platform/dom/dom_adapter.template.dart' as i1;
export 'style_sanitizer.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
}
