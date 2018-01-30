// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_chips.dart';
export 'material_chips.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/material_chips/material_chip.dart';
import 'package:angular_components/model/selection/selection_model.dart';
import 'package:angular_components/model/ui/has_renderer.dart';
import 'package:angular_components/utils/disposer/disposer.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/material_chips/material_chip.template.dart' as _ref1;
import 'package:angular_components/model/selection/selection_model.template.dart' as _ref2;
import 'package:angular_components/model/ui/has_renderer.template.dart' as _ref3;
import 'package:angular_components/utils/disposer/disposer.template.dart' as _ref4;

import 'package:angular_components/material_chips/material_chips.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/common/directives/ng_for.dart' as import3;
import 'package:angular/src/debug/debug_app_view.dart';
import 'material_chips.dart' as import5;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import9;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'dart:html' as import11;
import 'package:angular/src/core/linker/app_view_utils.dart' as import12;
import 'package:angular/angular.dart';
import 'material_chip.dart' as import14;
import '../model/ui/has_renderer.dart' as import15;
import 'material_chip.template.dart' as import16;

const List<dynamic> styles$MaterialChipsComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialChipsComponent0 = [
  new StaticNodeDebugInfo([TemplateRef, import3.NgFor], null, <String, dynamic>{})
];

class ViewMaterialChipsComponent0 extends DebugAppView<import5.MaterialChipsComponent> {
  ViewContainer _appEl_0;
  import3.NgFor _NgFor_0_7;
  var _expr_0;
  static RenderComponentType _renderType;
  ViewMaterialChipsComponent0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckOnce, nodeDebugInfos_MaterialChipsComponent0) {
    rootEl = import11.document.createElement('material-chips');
    _renderType ??= import12.appViewUtils.createRenderType('package:angular_components/material_chips/material_chips.html', ViewEncapsulation.Emulated, styles$MaterialChipsComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import11.HtmlElement parentRenderNode = initViewRoot(rootEl);
    var _anchor_0 = ngAnchor.clone(false);
    parentRenderNode.append(_anchor_0);
    dbgElm(this, _anchor_0, 0, 5, 0);
    _appEl_0 = new ViewContainer(0, null, this, _anchor_0);
    TemplateRef _TemplateRef_0_6 = new TemplateRef(_appEl_0, viewFactory_MaterialChipsComponent1);
    _NgFor_0_7 = new import3.NgFor(_appEl_0, _TemplateRef_0_6);
    dbg(null, 10, 0);
    project(parentRenderNode, 0);
    init(const [], const [], [_anchor_0]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialChipsComponent _ctx = ctx;
    dbg(0, 5, 15);
    final currVal_0 = _ctx.selectedItems;
    if (import12.checkBinding(_expr_0, currVal_0)) {
      _NgFor_0_7.ngForOf = currVal_0;
      _expr_0 = currVal_0;
    }
    if (!import12.AppViewUtils.throwOnChanges) {
      _NgFor_0_7.ngDoCheck();
    }
    _appEl_0.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    _appEl_0.destroyNestedViews();
  }
}

AppView<import5.MaterialChipsComponent> viewFactory_MaterialChipsComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialChipsComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialChipsComponent1 = [
  new StaticNodeDebugInfo([import14.MaterialChipComponent, import15.HasRenderer], import14.MaterialChipComponent, <String, dynamic>{})
];

class _ViewMaterialChipsComponent1 extends DebugAppView<import5.MaterialChipsComponent> {
  import11.Element _el_0;
  import16.ViewMaterialChipComponent0 _compView_0;
  import14.MaterialChipComponent _MaterialChipComponent_0_4;
  var _expr_0;
  bool _expr_1;
  var _expr_2;
  var _expr_3;
  _ViewMaterialChipsComponent1(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {'\$implicit': null}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialChipsComponent1) {
    componentType = ViewMaterialChipsComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import16.ViewMaterialChipComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 5, 0);
    addShimC(_el_0);
    _MaterialChipComponent_0_4 = new import14.MaterialChipComponent(_el_0);
    _compView_0.create(_MaterialChipComponent_0_4, [const [], const []]);
    init([_el_0], const [], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((identical(token, import14.MaterialChipComponent) || identical(token, import15.HasRenderer)) && (0 == nodeIndex))) {
      return _MaterialChipComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialChipsComponent _ctx = ctx;
    bool changed = true;
    changed = false;
    dbg(0, 7, 15);
    final currVal_0 = _ctx.selectionModel;
    if (import12.checkBinding(_expr_0, currVal_0)) {
      _MaterialChipComponent_0_4.selectionModel = currVal_0;
      changed = true;
      _expr_0 = currVal_0;
    }
    dbg(0, 9, 15);
    final currVal_1 = _ctx.removable;
    if (import12.checkBinding(_expr_1, currVal_1)) {
      _MaterialChipComponent_0_4.removable = currVal_1;
      changed = true;
      _expr_1 = currVal_1;
    }
    dbg(0, 8, 15);
    final currVal_2 = _ctx.itemRenderer;
    if (import12.checkBinding(_expr_2, currVal_2)) {
      _MaterialChipComponent_0_4.itemRenderer = currVal_2;
      changed = true;
      _expr_2 = currVal_2;
    }
    dbg(0, 6, 15);
    final currVal_3 = locals['\$implicit'];
    if (import12.checkBinding(_expr_3, currVal_3)) {
      _MaterialChipComponent_0_4.value = currVal_3;
      changed = true;
      _expr_3 = currVal_3;
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

AppView<import5.MaterialChipsComponent> viewFactory_MaterialChipsComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialChipsComponent1(parentView, parentIndex);
}

const List<dynamic> styles$MaterialChipsComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialChipsComponentHost0 = [
  new StaticNodeDebugInfo([import5.MaterialChipsComponent, import15.HasRenderer], import5.MaterialChipsComponent, <String, dynamic>{})
];

class _ViewMaterialChipsComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialChipsComponent0 _compView_0;
  import5.MaterialChipsComponent _MaterialChipsComponent_0_4;
  static RenderComponentType _renderType;
  _ViewMaterialChipsComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialChipsComponentHost0) {
    _renderType ??= import12.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialChipsComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialChipsComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _MaterialChipsComponent_0_4 = new import5.MaterialChipsComponent(_compView_0.ref);
    _compView_0.create(_MaterialChipsComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialChipsComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((identical(token, import5.MaterialChipsComponent) || identical(token, import15.HasRenderer)) && (0 == nodeIndex))) {
      return _MaterialChipsComponent_0_4;
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
    _MaterialChipsComponent_0_4.ngOnDestroy();
  }
}

AppView viewFactory_MaterialChipsComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialChipsComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialChipsComponentNgFactory = const ComponentFactory('material-chips', viewFactory_MaterialChipsComponentHost0, import5.MaterialChipsComponent, _MaterialChipsComponentMetadata);
final ComponentFactory MaterialChipsComponentNgFactory = _MaterialChipsComponentNgFactory;
const _MaterialChipsComponentMetadata = const [];
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
  _ngRef.registerComponent(
    MaterialChipsComponent,
    MaterialChipsComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialChipsComponent,
    (ChangeDetectorRef p0) => new MaterialChipsComponent(p0),
  );
  _ngRef.registerDependencies(
    MaterialChipsComponent,
    const [
      const [
        ChangeDetectorRef,
      ],
    ],
  );
}
