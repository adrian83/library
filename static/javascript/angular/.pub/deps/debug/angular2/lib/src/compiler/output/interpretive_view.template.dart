// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.compiler.output.interpretive_view.template.dart;

import 'interpretive_view.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/linker/debug_context.dart' show StaticNodeDebugInfo;
import 'package:angular2/src/core/linker/element.dart' show AppElement;
import 'package:angular2/src/core/linker/view.dart' show AppView, DebugAppView;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'package:angular2/src/facade/lang.dart' show isPresent;
import 'output_interpreter.dart' show InstanceFactory, DynamicInstance;
import 'package:angular2/src/core/linker/debug_context.template.dart' as i0;
import 'package:angular2/src/core/linker/element.template.dart' as i1;
import 'package:angular2/src/core/linker/view.template.dart' as i2;
import 'package:angular2/src/facade/exceptions.template.dart' as i3;
import 'package:angular2/src/facade/lang.template.dart' as i4;
import 'output_interpreter.template.dart' as i5;
export 'interpretive_view.dart';

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
