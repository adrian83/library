// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_radio_group.dart';
export 'material_radio_group.dart';
import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_components/focus/focus.dart';
import 'package:angular_components/material_radio/material_radio.dart';
import 'package:angular_components/model/selection/selection_model.dart';
import 'package:angular_components/utils/angular/managed_zone/angular_2.dart';
import 'package:angular_components/utils/disposer/disposer.dart';
import 'package:angular_forms/angular_forms.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/focus/focus.template.dart' as _ref1;
import 'package:angular_components/material_radio/material_radio.template.dart' as _ref2;
import 'package:angular_components/model/selection/selection_model.template.dart' as _ref3;
import 'package:angular_components/utils/angular/managed_zone/angular_2.template.dart' as _ref4;
import 'package:angular_components/utils/disposer/disposer.template.dart' as _ref5;
import 'package:angular_forms/angular_forms.template.dart' as _ref6;

import 'package:angular_components/material_radio/material_radio_group.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/debug/debug_app_view.dart';
import 'material_radio_group.dart' as import3;
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import6;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'dart:html' as import8;
import 'package:angular/src/core/linker/app_view_utils.dart' as import9;
import 'package:angular/angular.dart';
import 'package:angular/src/core/linker/query_list.dart' as import11;
import '../src/utils/angular/managed_zone/managed_zone.dart' as import12;

const List<dynamic> styles$MaterialRadioGroupComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialRadioGroupComponent0 = [];

class ViewMaterialRadioGroupComponent0 extends DebugAppView<import3.MaterialRadioGroupComponent> {
  static RenderComponentType _renderType;
  ViewMaterialRadioGroupComponent0(AppView<dynamic> parentView, num parentIndex) : super(import6.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckOnce, nodeDebugInfos_MaterialRadioGroupComponent0) {
    rootEl = import8.document.createElement('material-radio-group');
    createAttr(rootEl, 'role', 'radiogroup');
    this.rootEl.tabIndex = -1;
    _renderType ??= import9.appViewUtils.createRenderType('asset:angular_components/lib/material_radio/material_radio_group.dart class MaterialRadioGroupComponent - inline template', ViewEncapsulation.Emulated, styles$MaterialRadioGroupComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import8.HtmlElement parentRenderNode = initViewRoot(rootEl);
    dbg(null, 0, 0);
    project(parentRenderNode, 0);
    init(const [], const [], []);
    return null;
  }
}

AppView<import3.MaterialRadioGroupComponent> viewFactory_MaterialRadioGroupComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialRadioGroupComponent0(parentView, parentIndex);
}

const List<dynamic> styles$MaterialRadioGroupComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialRadioGroupComponentHost0 = [
  new StaticNodeDebugInfo([import3.MaterialRadioGroupComponent], import3.MaterialRadioGroupComponent, <String, dynamic>{})
];

class _ViewMaterialRadioGroupComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialRadioGroupComponent0 _compView_0;
  import3.MaterialRadioGroupComponent _MaterialRadioGroupComponent_0_4;
  import11.QueryList _query_MaterialRadioComponent_0_0;
  static RenderComponentType _renderType;
  _ViewMaterialRadioGroupComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import6.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialRadioGroupComponentHost0) {
    _renderType ??= import9.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialRadioGroupComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialRadioGroupComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _MaterialRadioGroupComponent_0_4 = new import3.MaterialRadioGroupComponent(this.injectorGet(import12.ManagedZone, viewData.parentIndex), null);
    _query_MaterialRadioComponent_0_0 = new import11.QueryList();
    _compView_0.create(_MaterialRadioGroupComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialRadioGroupComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import3.MaterialRadioGroupComponent) && (0 == nodeIndex))) {
      return _MaterialRadioGroupComponent_0_4;
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
    if (!import9.AppViewUtils.throwOnChanges) {
      if (_query_MaterialRadioComponent_0_0.dirty) {
        _query_MaterialRadioComponent_0_0.reset([]);
        _MaterialRadioGroupComponent_0_4.list = _query_MaterialRadioComponent_0_0;
        _query_MaterialRadioComponent_0_0.notifyOnChanges();
      }
    }
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
    dbg(0, 0, 0);
    _MaterialRadioGroupComponent_0_4.ngOnDestroy();
  }
}

AppView viewFactory_MaterialRadioGroupComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialRadioGroupComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialRadioGroupComponentNgFactory = const ComponentFactory('material-radio-group', viewFactory_MaterialRadioGroupComponentHost0, import3.MaterialRadioGroupComponent, _MaterialRadioGroupComponentMetadata);
final ComponentFactory MaterialRadioGroupComponentNgFactory = _MaterialRadioGroupComponentNgFactory;
const _MaterialRadioGroupComponentMetadata = const [];
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
  _ref5.initReflector();
  _ref6.initReflector();
  _ngRef.registerComponent(
    MaterialRadioGroupComponent,
    MaterialRadioGroupComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialRadioGroupComponent,
    (ManagedZone p0, NgControl p1) => new MaterialRadioGroupComponent(p0, p1),
  );
  _ngRef.registerDependencies(
    MaterialRadioGroupComponent,
    const [
      const [
        ManagedZone,
      ],
      const [
        NgControl,
        const _ngRef.Optional(),
        const _ngRef.Self(),
      ],
    ],
  );
}
