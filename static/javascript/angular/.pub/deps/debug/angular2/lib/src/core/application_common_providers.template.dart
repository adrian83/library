// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.core.application_common_providers.template.dart;

import 'application_common_providers.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/di.dart' show Provider;
import 'package:angular2/src/facade/lang.dart' show Type;
import 'application_ref.dart' show APPLICATION_CORE_PROVIDERS;
import 'application_tokens.dart' show APP_ID_RANDOM_PROVIDER;
import 'change_detection/change_detection.dart' show IterableDiffers, defaultIterableDiffers, KeyValueDiffers, defaultKeyValueDiffers;
import 'linker/component_resolver.dart' show ComponentResolver;
import 'linker/component_resolver.dart' show ReflectorComponentResolver;
import 'linker/dynamic_component_loader.dart' show DynamicComponentLoader;
import 'linker/dynamic_component_loader.dart' show DynamicComponentLoader_;
import 'linker/view_utils.dart' show ViewUtils;
import 'package:angular2/src/core/di.template.dart' as i0;
import 'package:angular2/src/facade/lang.template.dart' as i1;
import 'application_ref.template.dart' as i2;
import 'application_tokens.template.dart' as i3;
import 'change_detection/change_detection.template.dart' as i4;
import 'linker/component_resolver.template.dart' as i5;
import 'linker/dynamic_component_loader.template.dart' as i6;
import 'linker/view_utils.template.dart' as i7;
export 'application_common_providers.dart';

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
