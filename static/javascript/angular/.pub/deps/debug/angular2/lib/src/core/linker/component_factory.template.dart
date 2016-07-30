// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.core.linker.component_factory.template.dart;

import 'component_factory.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/di.dart' show Injector;
import 'package:angular2/src/core/reflection/reflection.dart' show reflector;
import 'package:angular2/src/facade/lang.dart' show Type, isPresent, isBlank;
import '../change_detection/change_detection.dart' show ChangeDetectorRef;
import 'element.dart' show AppElement;
import 'element_ref.dart' show ElementRef;
import 'view_ref.dart' show ViewRef;
import 'view_utils.dart' show ViewUtils;
import 'package:angular2/src/core/di.template.dart' as i0;
import 'package:angular2/src/core/reflection/reflection.template.dart' as i1;
import 'package:angular2/src/facade/lang.template.dart' as i2;
import '../change_detection/change_detection.template.dart' as i3;
import 'element.template.dart' as i4;
import 'element_ref.template.dart' as i5;
import 'view_ref.template.dart' as i6;
import 'view_utils.template.dart' as i7;
export 'component_factory.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
i5.initReflector();
i6.initReflector();
i7.initReflector();
}
