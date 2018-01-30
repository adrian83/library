// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_ripple.dart';
export 'material_ripple.dart';
import 'dart:html';
import 'dart:math';
import 'package:angular/angular.dart';
import 'package:angular_components/utils/browser/events/events.dart';
import 'package:angular_components/utils/browser/feature_detector/feature_detector.dart' show supportsAnimationApi;
import 'package:angular_components/utils/color/material.dart' show rippleOpacity;
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/utils/browser/events/events.template.dart' as _ref1;
import 'package:angular_components/utils/browser/feature_detector/feature_detector.template.dart' as _ref2;
import 'package:angular_components/utils/color/material.template.dart' as _ref3;

import 'package:angular_components/material_ripple/material_ripple.scss.css.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/debug/debug_app_view.dart';
import 'material_ripple.dart' as import3;
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import6;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'dart:html' as import8;
import 'package:angular/src/core/linker/app_view_utils.dart' as import9;
import 'package:angular/angular.dart';

const List<dynamic> styles$MaterialRippleComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialRippleComponent0 = [];

class ViewMaterialRippleComponent0 extends DebugAppView<import3.MaterialRippleComponent> {
  static RenderComponentType _renderType;
  ViewMaterialRippleComponent0(AppView<dynamic> parentView, num parentIndex) : super(import6.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckOnce, nodeDebugInfos_MaterialRippleComponent0) {
    rootEl = import8.document.createElement('material-ripple');
    _renderType ??= import9.appViewUtils.createRenderType('asset:angular_components/lib/material_ripple/material_ripple.dart class MaterialRippleComponent - inline template', ViewEncapsulation.None, styles$MaterialRippleComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import8.HtmlElement parentRenderNode = initViewRoot(rootEl);
    init(const [], const [], []);
    return null;
  }
}

AppView<import3.MaterialRippleComponent> viewFactory_MaterialRippleComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialRippleComponent0(parentView, parentIndex);
}

const List<dynamic> styles$MaterialRippleComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialRippleComponentHost0 = [
  new StaticNodeDebugInfo([import3.MaterialRippleComponent], import3.MaterialRippleComponent, <String, dynamic>{})
];

class _ViewMaterialRippleComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialRippleComponent0 _compView_0;
  import3.MaterialRippleComponent _MaterialRippleComponent_0_4;
  static RenderComponentType _renderType;
  _ViewMaterialRippleComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import6.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialRippleComponentHost0) {
    _renderType ??= import9.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialRippleComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialRippleComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _MaterialRippleComponent_0_4 = new import3.MaterialRippleComponent(rootEl);
    _compView_0.create(_MaterialRippleComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialRippleComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import3.MaterialRippleComponent) && (0 == nodeIndex))) {
      return _MaterialRippleComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool changed = true;
    changed = false;
    if (changed) {
      _compView_0.markAsCheckOnce();
    }
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
    dbg(0, 0, 0);
    _MaterialRippleComponent_0_4.ngOnDestroy();
  }
}

AppView viewFactory_MaterialRippleComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialRippleComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialRippleComponentNgFactory = const ComponentFactory('material-ripple', viewFactory_MaterialRippleComponentHost0, import3.MaterialRippleComponent, _MaterialRippleComponentMetadata);
final ComponentFactory MaterialRippleComponentNgFactory = _MaterialRippleComponentNgFactory;
const _MaterialRippleComponentMetadata = const [];
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
  _ngRef.registerComponent(
    MaterialRippleComponent,
    MaterialRippleComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialRippleComponent,
    (HtmlElement p0) => new MaterialRippleComponent(p0),
  );
  _ngRef.registerDependencies(
    MaterialRippleComponent,
    const [
      const [
        HtmlElement,
      ],
    ],
  );
}
