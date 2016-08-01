// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.common.directives.ng_template_outlet.template.dart;

import 'ng_template_outlet.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/core.dart' show Directive, Input, ViewContainerRef, ViewRef, TemplateRef;
import 'package:angular2/src/facade/lang.dart' show isPresent;
import 'package:angular2/core.template.dart' as i0;
import 'package:angular2/src/facade/lang.template.dart' as i1;
export 'ng_template_outlet.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(NgTemplateOutlet, new _ngRef.ReflectionInfo(
const [],
const [const [ViewContainerRef]],
(ViewContainerRef _viewContainerRef) => new NgTemplateOutlet(_viewContainerRef))
)
;
i0.initReflector();
i1.initReflector();
}
