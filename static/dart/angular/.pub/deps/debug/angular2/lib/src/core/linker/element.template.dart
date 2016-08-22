// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.core.linker.element.template.dart;

import 'element.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/di.dart' show Injector;
import 'package:angular2/src/facade/collection.dart' show ListWrapper;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'package:angular2/src/facade/lang.dart' show isPresent;
import 'element_ref.dart' show ElementRef;
import 'query_list.dart' show QueryList;
import 'view.dart' show AppView;
import 'view_container_ref.dart' show ViewContainerRef_;
import 'view_type.dart' show ViewType;
import 'package:angular2/src/core/di.template.dart' as i0;
import 'package:angular2/src/facade/collection.template.dart' as i1;
import 'package:angular2/src/facade/exceptions.template.dart' as i2;
import 'package:angular2/src/facade/lang.template.dart' as i3;
import 'element_ref.template.dart' as i4;
import 'query_list.template.dart' as i5;
import 'view.template.dart' as i6;
import 'view_container_ref.template.dart' as i7;
import 'view_type.template.dart' as i8;
export 'element.dart';

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
i8.initReflector();
}
