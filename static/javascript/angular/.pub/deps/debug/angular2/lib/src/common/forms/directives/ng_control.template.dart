// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.common.forms.directives.ng_control.template.dart;

import 'ng_control.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'abstract_control_directive.dart' show AbstractControlDirective;
import 'control_value_accessor.dart' show ControlValueAccessor;
import 'validators.dart' show AsyncValidatorFn, ValidatorFn;
import 'abstract_control_directive.template.dart' as i0;
import 'control_value_accessor.template.dart' as i1;
import 'validators.template.dart' as i2;
export 'ng_control.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
