// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.core.metadata.template.dart;

import 'metadata.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/change_detection/change_detection.dart';
import 'package:angular2/src/facade/collection.dart' show List;
import './metadata/di.dart';
import './metadata/directives.dart';
import './metadata/view.dart';
import 'package:angular2/src/core/change_detection/change_detection.template.dart' as i0;
import 'package:angular2/src/facade/collection.template.dart' as i1;
import './metadata/di.template.dart' as i2;
import './metadata/directives.template.dart' as i3;
import './metadata/view.template.dart' as i4;
import './metadata/lifecycle_hooks.template.dart' as i5;
export 'metadata.dart';
export './metadata/di.dart';
export './metadata/directives.dart';
export './metadata/lifecycle_hooks.dart' show AfterContentInit, AfterContentChecked, AfterViewInit, AfterViewChecked, OnChanges, OnDestroy, OnInit, DoCheck;
export './metadata/view.dart' hide VIEW_ENCAPSULATION_VALUES;

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
i5.initReflector();
}
