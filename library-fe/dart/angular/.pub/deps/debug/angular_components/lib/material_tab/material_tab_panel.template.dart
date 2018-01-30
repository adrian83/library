// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_tab_panel.dart';
export 'material_tab_panel.dart';
import 'dart:async';
import 'package:angular/angular.dart';
import 'fixed_material_tab_strip.dart';
import 'material_tab.dart';
import 'tab_change_event.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'fixed_material_tab_strip.template.dart' as _ref0;
import 'material_tab.template.dart' as _ref1;
import 'package:angular/angular.template.dart' as _ref2;
import 'tab_change_event.template.dart' as _ref3;

import 'package:angular_components/material_tab/material_tab_panel.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'fixed_material_tab_strip.dart' as import2;
import 'package:angular/src/debug/debug_app_view.dart';
import 'material_tab_panel.dart' as import4;
import 'dart:html' as import5;
import 'fixed_material_tab_strip.template.dart' as import6;
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import9;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import11;
import 'package:angular/angular.dart';
import 'package:angular/src/core/linker/query_list.dart' as import13;

const List<dynamic> styles$MaterialTabPanelComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTabPanelComponent0 = [
  new StaticNodeDebugInfo([import2.FixedMaterialTabStripComponent], import2.FixedMaterialTabStripComponent, <String, dynamic>{})
];

class ViewMaterialTabPanelComponent0 extends DebugAppView<import4.MaterialTabPanelComponent> {
  import5.Element _el_0;
  import6.ViewFixedMaterialTabStripComponent0 _compView_0;
  import2.FixedMaterialTabStripComponent _FixedMaterialTabStripComponent_0_4;
  var _expr_0;
  int _expr_1;
  var _expr_2;
  static RenderComponentType _renderType;
  ViewMaterialTabPanelComponent0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckOnce, nodeDebugInfos_MaterialTabPanelComponent0) {
    rootEl = import5.document.createElement('material-tab-panel');
    this.rootEl.className = 'themeable';
    _renderType ??= import11.appViewUtils.createRenderType('package:angular_components/material_tab/material_tab_panel.html', ViewEncapsulation.Emulated, styles$MaterialTabPanelComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import5.HtmlElement parentRenderNode = initViewRoot(rootEl);
    _compView_0 = new import6.ViewFixedMaterialTabStripComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    parentRenderNode.append(_el_0);
    dbgElm(this, _el_0, 0, 5, 0);
    addShimC(_el_0);
    _FixedMaterialTabStripComponent_0_4 = new import2.FixedMaterialTabStripComponent(_compView_0.ref, parentView.injectorGet(const OpaqueToken('isRtl'), viewData.parentIndex, null));
    _compView_0.create(_FixedMaterialTabStripComponent_0_4, []);
    dbg(null, 11, 0);
    project(parentRenderNode, 0);
    final subscription_0 = _FixedMaterialTabStripComponent_0_4.beforeTabChange.listen(eventHandler1(ctx.onBeforeTabChange));
    final subscription_1 = _FixedMaterialTabStripComponent_0_4.tabChange.listen(eventHandler1(ctx.onTabChange));
    init(const [], [subscription_0, subscription_1], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import2.FixedMaterialTabStripComponent) && (0 == nodeIndex))) {
      return _FixedMaterialTabStripComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import4.MaterialTabPanelComponent _ctx = ctx;
    bool changed = true;
    changed = false;
    dbg(0, 9, 20);
    final currVal_0 = _ctx.tabIds;
    if (import11.checkBinding(_expr_0, currVal_0)) {
      _FixedMaterialTabStripComponent_0_4.tabIds = currVal_0;
      changed = true;
      _expr_0 = currVal_0;
    }
    dbg(0, 5, 20);
    final currVal_1 = _ctx.activeTabIndex;
    if (import11.checkBinding(_expr_1, currVal_1)) {
      _FixedMaterialTabStripComponent_0_4.activeTabIndex = currVal_1;
      changed = true;
      _expr_1 = currVal_1;
    }
    dbg(0, 8, 20);
    final currVal_2 = _ctx.tabLabels;
    if (import11.checkBinding(_expr_2, currVal_2)) {
      _FixedMaterialTabStripComponent_0_4.tabLabels = currVal_2;
      changed = true;
      _expr_2 = currVal_2;
    }
    if (changed) {
      _compView_0.markAsCheckOnce();
    }
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
  }
}

AppView<import4.MaterialTabPanelComponent> viewFactory_MaterialTabPanelComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialTabPanelComponent0(parentView, parentIndex);
}

const List<dynamic> styles$MaterialTabPanelComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTabPanelComponentHost0 = [
  new StaticNodeDebugInfo([import4.MaterialTabPanelComponent], import4.MaterialTabPanelComponent, <String, dynamic>{})
];

class _ViewMaterialTabPanelComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialTabPanelComponent0 _compView_0;
  import4.MaterialTabPanelComponent _MaterialTabPanelComponent_0_4;
  import13.QueryList _query_Tab_0_0;
  static RenderComponentType _renderType;
  _ViewMaterialTabPanelComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTabPanelComponentHost0) {
    _renderType ??= import11.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialTabPanelComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialTabPanelComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _MaterialTabPanelComponent_0_4 = new import4.MaterialTabPanelComponent(_compView_0.ref);
    _query_Tab_0_0 = new import13.QueryList();
    _compView_0.create(_MaterialTabPanelComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialTabPanelComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import4.MaterialTabPanelComponent) && (0 == nodeIndex))) {
      return _MaterialTabPanelComponent_0_4;
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
    if (!import11.AppViewUtils.throwOnChanges) {
      if (_query_Tab_0_0.dirty) {
        _query_Tab_0_0.reset([]);
        _MaterialTabPanelComponent_0_4.tabs = _query_Tab_0_0;
        _query_Tab_0_0.notifyOnChanges();
      }
    }
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
  }
}

AppView viewFactory_MaterialTabPanelComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTabPanelComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialTabPanelComponentNgFactory = const ComponentFactory('material-tab-panel', viewFactory_MaterialTabPanelComponentHost0, import4.MaterialTabPanelComponent, _MaterialTabPanelComponentMetadata);
final ComponentFactory MaterialTabPanelComponentNgFactory = _MaterialTabPanelComponentNgFactory;
const _MaterialTabPanelComponentMetadata = const [];
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
    MaterialTabPanelComponent,
    MaterialTabPanelComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialTabPanelComponent,
    (ChangeDetectorRef p0) => new MaterialTabPanelComponent(p0),
  );
  _ngRef.registerDependencies(
    MaterialTabPanelComponent,
    const [
      const [
        ChangeDetectorRef,
      ],
    ],
  );
}
