// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.common.pipes.async_pipe.template.dart;

import 'async_pipe.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import 'package:angular2/core.dart' show Pipe, Injectable, ChangeDetectorRef, OnDestroy, WrappedValue;
import 'package:angular2/src/facade/async.dart' show ObservableWrapper;
import 'package:angular2/src/facade/lang.dart' show isBlank, isPresent, isPromise;
import 'invalid_pipe_argument_exception.dart' show InvalidPipeArgumentException;
import 'package:angular2/core.template.dart' as i0;
import 'package:angular2/src/facade/async.template.dart' as i1;
import 'package:angular2/src/facade/lang.template.dart' as i2;
import 'invalid_pipe_argument_exception.template.dart' as i3;
export 'async_pipe.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(AsyncPipe, new _ngRef.ReflectionInfo(
const [const Pipe(name: "async", pure: false), const Injectable()],
const [const [ChangeDetectorRef]],
(ChangeDetectorRef _ref) => new AsyncPipe(_ref),
const [OnDestroy])
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
