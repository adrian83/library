// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_expansionpanel_auto_dismiss.dart';
export 'material_expansionpanel_auto_dismiss.dart';
import 'dart:async';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/laminate/overlay/module.dart' show overlayContainerToken;
import 'package:angular_components/material_expansionpanel/material_expansionpanel.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/laminate/overlay/module.template.dart' as _ref1;
import 'package:angular_components/material_expansionpanel/material_expansionpanel.template.dart' as _ref2;

var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ngRef.registerFactory(
    MaterialExpansionPanelAutoDismiss,
    (MaterialExpansionPanel p0, Element p1, HtmlElement p2) => new MaterialExpansionPanelAutoDismiss(p0, p1, p2),
  );
  _ngRef.registerDependencies(
    MaterialExpansionPanelAutoDismiss,
    const [
      const [
        MaterialExpansionPanel,
      ],
      const [
        const _ngRef.Inject(const _ngRef.OpaqueToken(r'overlayContainer')),
        const _ngRef.Optional(),
      ],
      const [
        HtmlElement,
      ],
    ],
  );
}
