// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.core.compiler.query_list.template.dart;

import 'query_list.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:collection';
import 'package:angular2/src/facade/async.dart';
import 'package:angular2/src/facade/collection.dart';
import 'package:angular2/src/facade/async.template.dart' as i0;
import 'package:angular2/src/facade/collection.template.dart' as i1;
export 'query_list.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
}
