// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.core.change_detection.template.dart;

import 'change_detection.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'change_detection/change_detection.template.dart' as i0;
export 'change_detection.dart';
export 'change_detection/change_detection.dart' show ChangeDetectionStrategy, ChangeDetectorRef, WrappedValue, SimpleChange, PipeTransform, IterableDiffers, IterableDiffer, IterableDifferFactory, KeyValueChangeRecord, KeyValueDiffers, KeyValueDiffer, KeyValueDifferFactory, CollectionChangeRecord, TrackByFn;

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
}
