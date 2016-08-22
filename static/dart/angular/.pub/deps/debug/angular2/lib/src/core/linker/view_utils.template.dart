// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.core.linker.view_utils.template.dart;

import 'view_utils.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/application_tokens.dart' show APP_ID;
import 'package:angular2/src/core/change_detection/change_detection.dart' show devModeEqual, uninitialized;
import 'package:angular2/src/core/di.dart' show Inject, Injectable;
import 'package:angular2/src/core/security.dart' show SafeValue;
import 'package:angular2/src/core/metadata/view.dart' show ViewEncapsulation;
import 'package:angular2/src/core/render/api.dart' show RootRenderer, RenderComponentType, Renderer;
import 'package:angular2/src/core/security.dart';
import 'package:angular2/src/facade/collection.dart' show ListWrapper, StringMapWrapper;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'package:angular2/src/facade/lang.dart' show isPresent, looseIdentical;
import 'element.dart' show AppElement;
import 'exceptions.dart' show ExpressionChangedAfterItHasBeenCheckedException;
import 'package:angular2/src/core/application_tokens.template.dart' as i0;
import 'package:angular2/src/core/change_detection/change_detection.template.dart' as i1;
import 'package:angular2/src/core/di.template.dart' as i2;
import 'package:angular2/src/core/security.template.dart' as i3;
import 'package:angular2/src/core/metadata/view.template.dart' as i4;
import 'package:angular2/src/core/render/api.template.dart' as i5;
import 'package:angular2/src/facade/collection.template.dart' as i6;
import 'package:angular2/src/facade/exceptions.template.dart' as i7;
import 'package:angular2/src/facade/lang.template.dart' as i8;
import 'element.template.dart' as i9;
import 'exceptions.template.dart' as i10;
export 'view_utils.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(ViewUtils, new _ngRef.ReflectionInfo(
const [const Injectable()],
const [const [RootRenderer], const [String, const Inject(APP_ID)], const [SanitizationService]],
(RootRenderer _renderer, String _appId, SanitizationService sanitizer) => new ViewUtils(_renderer, _appId, sanitizer))
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
i5.initReflector();
i6.initReflector();
i7.initReflector();
i8.initReflector();
i9.initReflector();
i10.initReflector();
}
