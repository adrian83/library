// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'deferred_content.dart';
export 'deferred_content.dart';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/utils/disposer/disposer.dart';
import 'deferred_content_aware.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'deferred_content_aware.template.dart' as _ref0;
import 'package:angular/angular.template.dart' as _ref1;
import 'package:angular_components/utils/disposer/disposer.template.dart' as _ref2;

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
    DeferredContentDirective,
    (ViewContainerRef p0, TemplateRef p1, DeferredContentAware p2) => new DeferredContentDirective(p0, p1, p2),
  );
  _ngRef.registerDependencies(
    DeferredContentDirective,
    const [
      const [
        ViewContainerRef,
      ],
      const [
        TemplateRef,
      ],
      const [
        DeferredContentAware,
      ],
    ],
  );

  _ngRef.registerFactory(
    CachingDeferredContentDirective,
    (ViewContainerRef p0, TemplateRef p1, DeferredContentAware p2) => new CachingDeferredContentDirective(p0, p1, p2),
  );
  _ngRef.registerDependencies(
    CachingDeferredContentDirective,
    const [
      const [
        ViewContainerRef,
      ],
      const [
        TemplateRef,
      ],
      const [
        DeferredContentAware,
      ],
    ],
  );
}
