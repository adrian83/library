// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.common.forms.directives.select_control_value_accessor.template.dart;

import 'select_control_value_accessor.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/core.dart' show Directive, Renderer, Provider, ElementRef, Input, Host, OnDestroy, Optional;
import 'package:angular2/src/facade/collection.dart' show MapWrapper;
import 'package:angular2/src/facade/lang.dart' show StringWrapper, isPrimitive, isPresent, isBlank, looseIdentical;
import 'control_value_accessor.dart' show NG_VALUE_ACCESSOR, ControlValueAccessor;
import 'package:angular2/core.template.dart' as i0;
import 'package:angular2/src/facade/collection.template.dart' as i1;
import 'package:angular2/src/facade/lang.template.dart' as i2;
import 'control_value_accessor.template.dart' as i3;
export 'select_control_value_accessor.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(SelectControlValueAccessor, new _ngRef.ReflectionInfo(
const [],
const [const [Renderer], const [ElementRef]],
(Renderer _renderer, ElementRef _elementRef) => new SelectControlValueAccessor(_renderer, _elementRef),
const [ControlValueAccessor])
)
..registerType(NgSelectOption, new _ngRef.ReflectionInfo(
const [],
const [const [ElementRef], const [Renderer], const [SelectControlValueAccessor, const Optional(), const Host()]],
(ElementRef _element, Renderer _renderer, SelectControlValueAccessor _select) => new NgSelectOption(_element, _renderer, _select),
const [OnDestroy])
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
