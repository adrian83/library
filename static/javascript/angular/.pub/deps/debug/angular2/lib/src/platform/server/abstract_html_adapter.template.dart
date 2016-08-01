// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.dom.abstractHtmlAdapter.template.dart;

import 'abstract_html_adapter.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/platform/common_dom.dart';
import 'package:angular2/src/compiler/xhr.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart' as parser;
import 'package:angular2/platform/common_dom.template.dart' as i0;
import 'package:angular2/src/compiler/xhr.template.dart' as i1;
export 'abstract_html_adapter.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
}
