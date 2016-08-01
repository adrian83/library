// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.common.forms.form_builder.template.dart;

import 'form_builder.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/core.dart' show Injectable;
import 'directives/validators.dart';
import 'model.dart' as modelModule;
import 'package:angular2/core.template.dart' as i0;
import 'directives/validators.template.dart' as i1;
import 'model.template.dart' as i2;
export 'form_builder.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(FormBuilder, new _ngRef.ReflectionInfo(
const [const Injectable()],
const [],
() => new FormBuilder())
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
