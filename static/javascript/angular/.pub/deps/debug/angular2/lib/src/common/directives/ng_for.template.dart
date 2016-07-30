// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.common.directives.ng_for.template.dart;

import 'ng_for.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/core.dart' show DoCheck, Directive, ChangeDetectorRef, IterableDiffer, IterableDiffers, ViewContainerRef, TemplateRef, EmbeddedViewRef, TrackByFn;
import 'package:angular2/src/facade/lang.dart' show isPresent, isBlank;
import '../../core/change_detection/differs/default_iterable_differ.dart' show DefaultIterableDiffer, CollectionChangeRecord;
import '../../facade/exceptions.dart' show BaseException;
import 'package:angular2/core.template.dart' as i0;
import 'package:angular2/src/facade/lang.template.dart' as i1;
import '../../core/change_detection/differs/default_iterable_differ.template.dart' as i2;
import '../../facade/exceptions.template.dart' as i3;
export 'ng_for.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(NgFor, new _ngRef.ReflectionInfo(
const [],
const [const [ViewContainerRef], const [TemplateRef], const [IterableDiffers], const [ChangeDetectorRef]],
(ViewContainerRef _viewContainer, TemplateRef _templateRef, IterableDiffers _iterableDiffers, ChangeDetectorRef _cdr) => new NgFor(_viewContainer, _templateRef, _iterableDiffers, _cdr),
const [DoCheck])
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
