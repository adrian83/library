// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_tree_impl.dart';
export 'material_tree_impl.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/model/selection/select.dart';
import 'package:angular_components/model/selection/selection_container.dart';
import 'package:angular_components/model/selection/selection_model.dart';
import 'package:angular_components/model/selection/selection_options.dart';
import 'package:angular_components/model/ui/has_renderer.dart';
import 'package:angular_components/src/material_tree/group/material_tree_group.dart';
import 'package:angular_components/src/material_tree/group/material_tree_group_flat.dart';
import 'package:angular_components/src/material_tree/material_tree_root.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/model/selection/select.template.dart' as _ref1;
import 'package:angular_components/model/selection/selection_container.template.dart' as _ref2;
import 'package:angular_components/model/selection/selection_model.template.dart' as _ref3;
import 'package:angular_components/model/selection/selection_options.template.dart' as _ref4;
import 'package:angular_components/model/ui/has_renderer.template.dart' as _ref5;
import 'package:angular_components/src/material_tree/group/material_tree_group.template.dart' as _ref6;
import 'package:angular_components/src/material_tree/group/material_tree_group_flat.template.dart' as _ref7;
import 'package:angular_components/src/material_tree/material_tree_root.template.dart' as _ref8;

import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/common/directives/ng_if.dart';
import 'package:angular/src/debug/debug_app_view.dart';
import 'material_tree_impl.dart' as import4;
import 'package:angular/src/core/linker/query_list.dart' as import5;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import9;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'dart:html' as import11;
import 'package:angular/src/core/linker/app_view_utils.dart' as import12;
import 'package:angular/angular.dart';
import 'package:angular/src/common/directives/ng_for.dart' as import14;
import 'group/material_tree_group.dart' as import15;
import 'group/material_tree_group.template.dart' as import16;
import 'material_tree_root.dart' as import17;
import '../../mixins/material_dropdown_base.dart' as import18;
import 'group/material_tree_group_flat.dart' as import19;
import 'group/material_tree_group_flat.template.dart' as import20;

const List<dynamic> styles$MaterialTreeComponent = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeComponent0 = [
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{})
];

class ViewMaterialTreeComponent0 extends DebugAppView<import4.MaterialTreeComponent> {
  import5.QueryList _viewQuery_MaterialTreeGroupComponent_0;
  ViewContainer _appEl_0;
  NgIf _NgIf_0_7;
  ViewContainer _appEl_1;
  NgIf _NgIf_1_7;
  var _expr_2;
  var _expr_3;
  var _expr_4;
  static RenderComponentType _renderType;
  ViewMaterialTreeComponent0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeComponent0) {
    rootEl = import11.document.createElement('material-tree');
    _renderType ??= import12.appViewUtils.createRenderType('package:angular_components/src/material_tree/material_tree_impl.html', ViewEncapsulation.None, styles$MaterialTreeComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import11.HtmlElement parentRenderNode = initViewRoot(rootEl);
    _viewQuery_MaterialTreeGroupComponent_0 = new import5.QueryList();
    var _anchor_0 = ngAnchor.clone(false);
    parentRenderNode.append(_anchor_0);
    dbgElm(this, _anchor_0, 0, 5, 0);
    _appEl_0 = new ViewContainer(0, null, this, _anchor_0);
    TemplateRef _TemplateRef_0_6 = new TemplateRef(_appEl_0, viewFactory_MaterialTreeComponent1);
    _NgIf_0_7 = new NgIf(_appEl_0, _TemplateRef_0_6);
    var _anchor_1 = ngAnchor.clone(false);
    parentRenderNode.append(_anchor_1);
    dbgElm(this, _anchor_1, 1, 12, 0);
    _appEl_1 = new ViewContainer(1, null, this, _anchor_1);
    TemplateRef _TemplateRef_1_6 = new TemplateRef(_appEl_1, viewFactory_MaterialTreeComponent3);
    _NgIf_1_7 = new NgIf(_appEl_1, _TemplateRef_1_6);
    init(const [], const [], [_anchor_0, _anchor_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import4.MaterialTreeComponent _ctx = ctx;
    dbg(0, 5, 10);
    _NgIf_0_7.ngIf = _ctx.supportsHierarchy;
    dbg(1, 12, 10);
    _NgIf_1_7.ngIf = !_ctx.supportsHierarchy;
    _appEl_0.detectChangesInNestedViews();
    _appEl_1.detectChangesInNestedViews();
    if (!import12.AppViewUtils.throwOnChanges) {
      if (_viewQuery_MaterialTreeGroupComponent_0.dirty) {
        _viewQuery_MaterialTreeGroupComponent_0.reset([
          _appEl_0.mapNestedViews(_ViewMaterialTreeComponent1, (_ViewMaterialTreeComponent1 nestedView) {
            return [
              nestedView._appEl_0.mapNestedViews(_ViewMaterialTreeComponent2, (_ViewMaterialTreeComponent2 nestedView) {
                return [nestedView._MaterialTreeGroupComponent_0_4];
              })
            ];
          })
        ]);
        ctx.treeGroupNodes = _viewQuery_MaterialTreeGroupComponent_0;
        _viewQuery_MaterialTreeGroupComponent_0.notifyOnChanges();
      }
    }
  }

  @override
  void destroyInternal() {
    _appEl_0.destroyNestedViews();
    _appEl_1.destroyNestedViews();
  }

  void detectHostChanges(bool firstCheck) {
    final currVal_2 = ctx.role;
    if (import12.checkBinding(_expr_2, currVal_2)) {
      setAttr(rootEl, 'role', currVal_2?.toString());
      _expr_2 = currVal_2;
    }
    final currVal_3 = (ctx.showFlatCheck ? 'true' : 'false');
    if (import12.checkBinding(_expr_3, currVal_3)) {
      setAttr(rootEl, 'aria-multiselectable', currVal_3?.toString());
      _expr_3 = currVal_3;
    }
    final currVal_4 = (ctx.showFlatList ? 'true' : 'false');
    if (import12.checkBinding(_expr_4, currVal_4)) {
      setAttr(rootEl, 'aria-readonly', currVal_4?.toString());
      _expr_4 = currVal_4;
    }
  }
}

AppView<import4.MaterialTreeComponent> viewFactory_MaterialTreeComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialTreeComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeComponent1 = [
  new StaticNodeDebugInfo([TemplateRef, import14.NgFor], null, <String, dynamic>{})
];

class _ViewMaterialTreeComponent1 extends DebugAppView<import4.MaterialTreeComponent> {
  ViewContainer _appEl_0;
  import14.NgFor _NgFor_0_7;
  var _expr_0;
  _ViewMaterialTreeComponent1(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeComponent1) {
    componentType = ViewMaterialTreeComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var _anchor_0 = ngAnchor.clone(false);
    dbgElm(this, _anchor_0, 0, 6, 2);
    _appEl_0 = new ViewContainer(0, null, this, _anchor_0);
    TemplateRef _TemplateRef_0_6 = new TemplateRef(_appEl_0, viewFactory_MaterialTreeComponent2);
    _NgFor_0_7 = new import14.NgFor(_appEl_0, _TemplateRef_0_6);
    init([_appEl_0], const [], [_anchor_0]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import4.MaterialTreeComponent _ctx = ctx;
    dbg(0, 7, 4);
    final currVal_0 = _ctx.options.optionGroups;
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

AppView<import4.MaterialTreeComponent> viewFactory_MaterialTreeComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeComponent1(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeComponent2 = [
  new StaticNodeDebugInfo([import15.MaterialTreeGroupComponent], import15.MaterialTreeGroupComponent, <String, dynamic>{})
];

class _ViewMaterialTreeComponent2 extends DebugAppView<import4.MaterialTreeComponent> {
  import11.Element _el_0;
  import16.ViewMaterialTreeGroupComponent0 _compView_0;
  import15.MaterialTreeGroupComponent _MaterialTreeGroupComponent_0_4;
  var _expr_0;
  bool _expr_1;
  _ViewMaterialTreeComponent2(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {'\$implicit': null}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeComponent2) {
    componentType = ViewMaterialTreeComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import16.ViewMaterialTreeGroupComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 6, 2);
    _MaterialTreeGroupComponent_0_4 = new import15.MaterialTreeGroupComponent(parentView.injectorGet(import17.MaterialTreeRoot, viewData.parentIndex), _compView_0.ref, parentView.injectorGet(import18.DropdownHandle, viewData.parentIndex, null), parentView.injectorGet(const OpaqueToken('MaterialTreeGroupComponent_materialTreeLeftPaddingToken'), viewData.parentIndex, null));
    _compView_0.create(_MaterialTreeGroupComponent_0_4, []);
    init([_el_0], const [], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import15.MaterialTreeGroupComponent) && (0 == nodeIndex))) {
      return _MaterialTreeGroupComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import4.MaterialTreeComponent _ctx = ctx;
    bool firstCheck = (this.cdState == 0);
    dbg(0, 9, 4);
    final currVal_0 = locals['\$implicit'];
    if (import12.checkBinding(_expr_0, currVal_0)) {
      _MaterialTreeGroupComponent_0_4.group = currVal_0;
      _expr_0 = currVal_0;
    }
    dbg(0, 8, 4);
    final currVal_1 = _ctx.expandAll;
    if (import12.checkBinding(_expr_1, currVal_1)) {
      _MaterialTreeGroupComponent_0_4.expandAll = currVal_1;
      _expr_1 = currVal_1;
    }
    _compView_0.detectHostChanges(firstCheck);
    _compView_0.detectChanges();
  }

  @override
  void dirtyParentQueriesInternal() {
    (parentView.parentView as ViewMaterialTreeComponent0)._viewQuery_MaterialTreeGroupComponent_0.setDirty();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
    dbg(0, 6, 2);
    _MaterialTreeGroupComponent_0_4.ngOnDestroy();
  }
}

AppView<import4.MaterialTreeComponent> viewFactory_MaterialTreeComponent2(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeComponent2(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeComponent3 = [
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{})
];

class _ViewMaterialTreeComponent3 extends DebugAppView<import4.MaterialTreeComponent> {
  ViewContainer _appEl_0;
  NgIf _NgIf_0_7;
  ViewContainer _appEl_1;
  NgIf _NgIf_1_7;
  ViewContainer _appEl_2;
  NgIf _NgIf_2_7;
  _ViewMaterialTreeComponent3(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeComponent3) {
    componentType = ViewMaterialTreeComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var _anchor_0 = ngAnchor.clone(false);
    dbgElm(this, _anchor_0, 0, 14, 2);
    _appEl_0 = new ViewContainer(0, null, this, _anchor_0);
    TemplateRef _TemplateRef_0_6 = new TemplateRef(_appEl_0, viewFactory_MaterialTreeComponent4);
    _NgIf_0_7 = new NgIf(_appEl_0, _TemplateRef_0_6);
    var _anchor_1 = ngAnchor.clone(false);
    dbgElm(this, _anchor_1, 1, 22, 2);
    _appEl_1 = new ViewContainer(1, null, this, _anchor_1);
    TemplateRef _TemplateRef_1_6 = new TemplateRef(_appEl_1, viewFactory_MaterialTreeComponent6);
    _NgIf_1_7 = new NgIf(_appEl_1, _TemplateRef_1_6);
    var _anchor_2 = ngAnchor.clone(false);
    dbgElm(this, _anchor_2, 2, 30, 2);
    _appEl_2 = new ViewContainer(2, null, this, _anchor_2);
    TemplateRef _TemplateRef_2_6 = new TemplateRef(_appEl_2, viewFactory_MaterialTreeComponent8);
    _NgIf_2_7 = new NgIf(_appEl_2, _TemplateRef_2_6);
    init([_appEl_0, _appEl_1, _appEl_2], const [], [_anchor_0, _anchor_1, _anchor_2]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import4.MaterialTreeComponent _ctx = ctx;
    dbg(0, 14, 12);
    _NgIf_0_7.ngIf = _ctx.showFlatList;
    dbg(1, 22, 12);
    _NgIf_1_7.ngIf = _ctx.showFlatRadio;
    dbg(2, 30, 12);
    _NgIf_2_7.ngIf = _ctx.showFlatCheck;
    _appEl_0.detectChangesInNestedViews();
    _appEl_1.detectChangesInNestedViews();
    _appEl_2.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    _appEl_0.destroyNestedViews();
    _appEl_1.destroyNestedViews();
    _appEl_2.destroyNestedViews();
  }
}

AppView<import4.MaterialTreeComponent> viewFactory_MaterialTreeComponent3(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeComponent3(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeComponent4 = [
  new StaticNodeDebugInfo([TemplateRef, import14.NgFor], null, <String, dynamic>{})
];

class _ViewMaterialTreeComponent4 extends DebugAppView<import4.MaterialTreeComponent> {
  ViewContainer _appEl_0;
  import14.NgFor _NgFor_0_7;
  var _expr_0;
  _ViewMaterialTreeComponent4(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeComponent4) {
    componentType = ViewMaterialTreeComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var _anchor_0 = ngAnchor.clone(false);
    dbgElm(this, _anchor_0, 0, 15, 4);
    _appEl_0 = new ViewContainer(0, null, this, _anchor_0);
    TemplateRef _TemplateRef_0_6 = new TemplateRef(_appEl_0, viewFactory_MaterialTreeComponent5);
    _NgFor_0_7 = new import14.NgFor(_appEl_0, _TemplateRef_0_6);
    init([_appEl_0], const [], [_anchor_0]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import4.MaterialTreeComponent _ctx = ctx;
    dbg(0, 16, 6);
    final currVal_0 = _ctx.options.optionGroups;
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

AppView<import4.MaterialTreeComponent> viewFactory_MaterialTreeComponent4(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeComponent4(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeComponent5 = [
  new StaticNodeDebugInfo([import19.MaterialTreeGroupFlatListComponent], import19.MaterialTreeGroupFlatListComponent, <String, dynamic>{})
];

class _ViewMaterialTreeComponent5 extends DebugAppView<import4.MaterialTreeComponent> {
  import11.Element _el_0;
  import20.ViewMaterialTreeGroupFlatListComponent0 _compView_0;
  import19.MaterialTreeGroupFlatListComponent _MaterialTreeGroupFlatListComponent_0_4;
  var _expr_0;
  _ViewMaterialTreeComponent5(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {'\$implicit': null}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeComponent5) {
    componentType = ViewMaterialTreeComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import20.ViewMaterialTreeGroupFlatListComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 15, 4);
    _MaterialTreeGroupFlatListComponent_0_4 = new import19.MaterialTreeGroupFlatListComponent(parentView.injectorGet(import17.MaterialTreeRoot, viewData.parentIndex), _compView_0.ref);
    _compView_0.create(_MaterialTreeGroupFlatListComponent_0_4, []);
    init([_el_0], const [], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import19.MaterialTreeGroupFlatListComponent) && (0 == nodeIndex))) {
      return _MaterialTreeGroupFlatListComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = (this.cdState == 0);
    dbg(0, 17, 6);
    final currVal_0 = locals['\$implicit'];
    if (import12.checkBinding(_expr_0, currVal_0)) {
      _MaterialTreeGroupFlatListComponent_0_4.group = currVal_0;
      _expr_0 = currVal_0;
    }
    _compView_0.detectHostChanges(firstCheck);
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
  }
}

AppView<import4.MaterialTreeComponent> viewFactory_MaterialTreeComponent5(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeComponent5(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeComponent6 = [
  new StaticNodeDebugInfo([TemplateRef, import14.NgFor], null, <String, dynamic>{})
];

class _ViewMaterialTreeComponent6 extends DebugAppView<import4.MaterialTreeComponent> {
  ViewContainer _appEl_0;
  import14.NgFor _NgFor_0_7;
  var _expr_0;
  _ViewMaterialTreeComponent6(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeComponent6) {
    componentType = ViewMaterialTreeComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var _anchor_0 = ngAnchor.clone(false);
    dbgElm(this, _anchor_0, 0, 23, 4);
    _appEl_0 = new ViewContainer(0, null, this, _anchor_0);
    TemplateRef _TemplateRef_0_6 = new TemplateRef(_appEl_0, viewFactory_MaterialTreeComponent7);
    _NgFor_0_7 = new import14.NgFor(_appEl_0, _TemplateRef_0_6);
    init([_appEl_0], const [], [_anchor_0]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import4.MaterialTreeComponent _ctx = ctx;
    dbg(0, 24, 6);
    final currVal_0 = _ctx.options.optionGroups;
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

AppView<import4.MaterialTreeComponent> viewFactory_MaterialTreeComponent6(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeComponent6(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeComponent7 = [
  new StaticNodeDebugInfo([import19.MaterialTreeGroupFlatRadioComponent], import19.MaterialTreeGroupFlatRadioComponent, <String, dynamic>{})
];

class _ViewMaterialTreeComponent7 extends DebugAppView<import4.MaterialTreeComponent> {
  import11.Element _el_0;
  import20.ViewMaterialTreeGroupFlatRadioComponent0 _compView_0;
  import19.MaterialTreeGroupFlatRadioComponent _MaterialTreeGroupFlatRadioComponent_0_4;
  var _expr_0;
  _ViewMaterialTreeComponent7(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {'\$implicit': null}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeComponent7) {
    componentType = ViewMaterialTreeComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import20.ViewMaterialTreeGroupFlatRadioComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 23, 4);
    _MaterialTreeGroupFlatRadioComponent_0_4 = new import19.MaterialTreeGroupFlatRadioComponent(parentView.injectorGet(import17.MaterialTreeRoot, viewData.parentIndex), _compView_0.ref, parentView.injectorGet(import18.DropdownHandle, viewData.parentIndex, null));
    _compView_0.create(_MaterialTreeGroupFlatRadioComponent_0_4, []);
    init([_el_0], const [], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import19.MaterialTreeGroupFlatRadioComponent) && (0 == nodeIndex))) {
      return _MaterialTreeGroupFlatRadioComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = (this.cdState == 0);
    dbg(0, 25, 6);
    final currVal_0 = locals['\$implicit'];
    if (import12.checkBinding(_expr_0, currVal_0)) {
      _MaterialTreeGroupFlatRadioComponent_0_4.group = currVal_0;
      _expr_0 = currVal_0;
    }
    _compView_0.detectHostChanges(firstCheck);
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
  }
}

AppView<import4.MaterialTreeComponent> viewFactory_MaterialTreeComponent7(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeComponent7(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeComponent8 = [
  new StaticNodeDebugInfo([TemplateRef, import14.NgFor], null, <String, dynamic>{})
];

class _ViewMaterialTreeComponent8 extends DebugAppView<import4.MaterialTreeComponent> {
  ViewContainer _appEl_0;
  import14.NgFor _NgFor_0_7;
  var _expr_0;
  _ViewMaterialTreeComponent8(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeComponent8) {
    componentType = ViewMaterialTreeComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var _anchor_0 = ngAnchor.clone(false);
    dbgElm(this, _anchor_0, 0, 31, 4);
    _appEl_0 = new ViewContainer(0, null, this, _anchor_0);
    TemplateRef _TemplateRef_0_6 = new TemplateRef(_appEl_0, viewFactory_MaterialTreeComponent9);
    _NgFor_0_7 = new import14.NgFor(_appEl_0, _TemplateRef_0_6);
    init([_appEl_0], const [], [_anchor_0]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import4.MaterialTreeComponent _ctx = ctx;
    dbg(0, 32, 6);
    final currVal_0 = _ctx.options.optionGroups;
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

AppView<import4.MaterialTreeComponent> viewFactory_MaterialTreeComponent8(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeComponent8(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeComponent9 = [
  new StaticNodeDebugInfo([import19.MaterialTreeGroupFlatCheckComponent], import19.MaterialTreeGroupFlatCheckComponent, <String, dynamic>{})
];

class _ViewMaterialTreeComponent9 extends DebugAppView<import4.MaterialTreeComponent> {
  import11.Element _el_0;
  import20.ViewMaterialTreeGroupFlatCheckComponent0 _compView_0;
  import19.MaterialTreeGroupFlatCheckComponent _MaterialTreeGroupFlatCheckComponent_0_4;
  var _expr_0;
  _ViewMaterialTreeComponent9(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {'\$implicit': null}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeComponent9) {
    componentType = ViewMaterialTreeComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import20.ViewMaterialTreeGroupFlatCheckComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 31, 4);
    _MaterialTreeGroupFlatCheckComponent_0_4 = new import19.MaterialTreeGroupFlatCheckComponent(parentView.injectorGet(import17.MaterialTreeRoot, viewData.parentIndex), _compView_0.ref, parentView.injectorGet(import18.DropdownHandle, viewData.parentIndex, null));
    _compView_0.create(_MaterialTreeGroupFlatCheckComponent_0_4, []);
    init([_el_0], const [], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import19.MaterialTreeGroupFlatCheckComponent) && (0 == nodeIndex))) {
      return _MaterialTreeGroupFlatCheckComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = (this.cdState == 0);
    dbg(0, 33, 6);
    final currVal_0 = locals['\$implicit'];
    if (import12.checkBinding(_expr_0, currVal_0)) {
      _MaterialTreeGroupFlatCheckComponent_0_4.group = currVal_0;
      _expr_0 = currVal_0;
    }
    _compView_0.detectHostChanges(firstCheck);
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
  }
}

AppView<import4.MaterialTreeComponent> viewFactory_MaterialTreeComponent9(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeComponent9(parentView, parentIndex);
}

const List<dynamic> styles$MaterialTreeComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeComponentHost0 = [
  new StaticNodeDebugInfo([import4.MaterialTreeComponent, import17.MaterialTreeRoot], import4.MaterialTreeComponent, <String, dynamic>{})
];

class _ViewMaterialTreeComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialTreeComponent0 _compView_0;
  import4.MaterialTreeComponent _MaterialTreeComponent_0_4;
  static RenderComponentType _renderType;
  _ViewMaterialTreeComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeComponentHost0) {
    _renderType ??= import12.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialTreeComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialTreeComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _MaterialTreeComponent_0_4 = new import4.MaterialTreeComponent(this.injectorGet(import17.MaterialTreeRoot, viewData.parentIndex, null));
    _compView_0.create(_MaterialTreeComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialTreeComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((identical(token, import4.MaterialTreeComponent) || identical(token, import17.MaterialTreeRoot)) && (0 == nodeIndex))) {
      return _MaterialTreeComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = (this.cdState == 0);
    _compView_0.detectHostChanges(firstCheck);
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
  }
}

AppView viewFactory_MaterialTreeComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialTreeComponentNgFactory = const ComponentFactory('material-tree', viewFactory_MaterialTreeComponentHost0, import4.MaterialTreeComponent, _MaterialTreeComponentMetadata);
final ComponentFactory MaterialTreeComponentNgFactory = _MaterialTreeComponentNgFactory;
const _MaterialTreeComponentMetadata = const [];
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
  _ref7.initReflector();
  _ref8.initReflector();
  _ngRef.registerComponent(
    MaterialTreeComponent,
    MaterialTreeComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialTreeComponent,
    (MaterialTreeRoot p0) => new MaterialTreeComponent(p0),
  );
  _ngRef.registerDependencies(
    MaterialTreeComponent,
    const [
      const [
        MaterialTreeRoot,
        const _ngRef.SkipSelf(),
        const _ngRef.Optional(),
      ],
    ],
  );
}
