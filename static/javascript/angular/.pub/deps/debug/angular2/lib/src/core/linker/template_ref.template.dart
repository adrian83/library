// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.core.linker.template_ref.template.dart;

import 'template_ref.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'element.dart' show AppElement;
import 'element_ref.dart' show ElementRef;
import 'view.dart' show AppView;
import 'view_ref.dart' show EmbeddedViewRef;
import 'element.template.dart' as i0;
import 'element_ref.template.dart' as i1;
import 'view.template.dart' as i2;
import 'view_ref.template.dart' as i3;
export 'template_ref.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
