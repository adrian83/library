// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.facade.facade.template.dart;

import 'facade.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'async.template.dart' as i0;
import 'exception_handler.template.dart' as i1;
import 'exceptions.template.dart' as i2;
import 'lang.template.dart' as i3;
export 'facade.dart';
export 'async.dart' show Stream, EventEmitter;
export 'exception_handler.dart' show ExceptionHandler;
export 'exceptions.dart' show WrappedException;
export 'lang.dart' show Type;

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
