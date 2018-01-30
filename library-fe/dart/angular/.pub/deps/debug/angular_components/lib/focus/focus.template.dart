// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'focus.dart';
export 'focus.dart';
import 'dart:async';
import 'dart:html' show KeyCode, KeyboardEvent, Element, HtmlElement;
import 'package:angular/angular.dart';
import 'package:angular_components/laminate/components/modal/modal.dart';
import 'package:angular_components/laminate/popup/popup.dart';
import 'package:angular_components/utils/browser/dom_service/dom_service.dart';
import 'package:angular_components/utils/disposer/disposer.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/laminate/components/modal/modal.template.dart' as _ref1;
import 'package:angular_components/laminate/popup/popup.template.dart' as _ref2;
import 'package:angular_components/utils/browser/dom_service/dom_service.template.dart' as _ref3;
import 'package:angular_components/utils/disposer/disposer.template.dart' as _ref4;

var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
  _ngRef.registerFactory(
    AutoFocusDirective,
    (HtmlElement p0, DomService p1, Focusable p2, ModalComponent p3, PopupRef p4) => new AutoFocusDirective(p0, p1, p2, p3, p4),
  );
  _ngRef.registerDependencies(
    AutoFocusDirective,
    const [
      const [
        HtmlElement,
      ],
      const [
        DomService,
      ],
      const [
        Focusable,
        const _ngRef.Optional(),
      ],
      const [
        ModalComponent,
        const _ngRef.Optional(),
      ],
      const [
        PopupRef,
        const _ngRef.Optional(),
      ],
    ],
  );

  _ngRef.registerFactory(
    FocusableDirective,
    (HtmlElement p0) => new FocusableDirective(p0),
  );
  _ngRef.registerDependencies(
    FocusableDirective,
    const [
      const [
        HtmlElement,
      ],
    ],
  );
}
