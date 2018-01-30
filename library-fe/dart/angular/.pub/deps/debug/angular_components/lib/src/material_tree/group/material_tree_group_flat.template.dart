// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_tree_group_flat.dart';
export 'material_tree_group_flat.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/button_decorator/button_decorator.dart';
import 'package:angular_components/dynamic_component/dynamic_component.dart';
import 'package:angular_components/material_checkbox/material_checkbox.dart';
import 'package:angular_components/material_radio/material_radio.dart';
import 'package:angular_components/material_radio/material_radio_group.dart';
import 'package:angular_components/mixins/material_dropdown_base.dart';
import 'package:angular_components/model/selection/selection_model.dart';
import 'package:angular_components/src/material_tree/material_tree_node.dart';
import 'package:angular_components/src/material_tree/material_tree_root.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/button_decorator/button_decorator.template.dart' as _ref1;
import 'package:angular_components/dynamic_component/dynamic_component.template.dart' as _ref2;
import 'package:angular_components/material_checkbox/material_checkbox.template.dart' as _ref3;
import 'package:angular_components/material_radio/material_radio.template.dart' as _ref4;
import 'package:angular_components/material_radio/material_radio_group.template.dart' as _ref5;
import 'package:angular_components/mixins/material_dropdown_base.template.dart' as _ref6;
import 'package:angular_components/model/selection/selection_model.template.dart' as _ref7;
import 'package:angular_components/src/material_tree/material_tree_node.template.dart' as _ref8;
import 'package:angular_components/src/material_tree/material_tree_root.template.dart' as _ref9;

import 'package:angular_components/src/material_tree/group/material_tree_group_flat_list.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/common/directives/ng_for.dart' as import3;
import 'package:angular/src/debug/debug_app_view.dart';
import 'material_tree_group_flat.dart' as import5;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import9;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'dart:html' as import11;
import 'package:angular/src/core/linker/app_view_utils.dart' as import12;
import 'package:angular/angular.dart';
import 'package:angular/src/common/directives/ng_if.dart';
import '../../../dynamic_component/dynamic_component.dart' as import15;
import '../../../dynamic_component/dynamic_component.template.dart' as import16;
import 'package:angular/src/core/linker/dynamic_component_loader.dart' as import17;
import '../material_tree_root.dart' as import18;
import 'package:angular_components/src/material_tree/group/material_tree_group_flat_radio.scss.css.shim.dart' as import19;
import '../../../material_radio/material_radio_group.dart' as import20;
import '../../../material_radio/material_radio_group.template.dart' as import21;
import 'package:angular/src/core/linker/query_list.dart' as import22;
import '../../utils/angular/managed_zone/managed_zone.dart' as import23;
import '../../../material_radio/material_radio.dart' as import24;
import '../../../material_radio/material_radio.template.dart' as import25;
import '../../../mixins/material_dropdown_base.dart' as import26;
import 'package:angular_components/src/material_tree/group/material_tree_group_flat_check.scss.css.shim.dart' as import27;
import '../../../material_checkbox/material_checkbox.dart' as import28;
import '../../../material_checkbox/material_checkbox.template.dart' as import29;

const List<dynamic> styles$MaterialTreeGroupFlatListComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeGroupFlatListComponent0 = [
  new StaticNodeDebugInfo([TemplateRef, import3.NgFor], null, <String, dynamic>{})
];

class ViewMaterialTreeGroupFlatListComponent0 extends DebugAppView<import5.MaterialTreeGroupFlatListComponent> {
  ViewContainer _appEl_0;
  import3.NgFor _NgFor_0_7;
  var _expr_0;
  static RenderComponentType _renderType;
  ViewMaterialTreeGroupFlatListComponent0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeGroupFlatListComponent0) {
    rootEl = import11.document.createElement('material-tree-group-flat-list');
    _renderType ??= import12.appViewUtils.createRenderType('package:angular_components/src/material_tree/group/material_tree_group_flat_list.html', ViewEncapsulation.Emulated, styles$MaterialTreeGroupFlatListComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import11.HtmlElement parentRenderNode = initViewRoot(rootEl);
    var _anchor_0 = ngAnchor.clone(false);
    parentRenderNode.append(_anchor_0);
    dbgElm(this, _anchor_0, 0, 5, 0);
    _appEl_0 = new ViewContainer(0, null, this, _anchor_0);
    TemplateRef _TemplateRef_0_6 = new TemplateRef(_appEl_0, viewFactory_MaterialTreeGroupFlatListComponent1);
    _NgFor_0_7 = new import3.NgFor(_appEl_0, _TemplateRef_0_6);
    init(const [], const [], [_anchor_0]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialTreeGroupFlatListComponent _ctx = ctx;
    dbg(0, 5, 5);
    final currVal_0 = _ctx.group;
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

  void detectHostChanges(bool firstCheck) {
    if (firstCheck) {
      if (!identical(ctx.isMaterialTreeGroup, null)) {
        updateElemClass(rootEl, 'material-tree-group', ctx.isMaterialTreeGroup);
      }
    }
  }
}

AppView<import5.MaterialTreeGroupFlatListComponent> viewFactory_MaterialTreeGroupFlatListComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialTreeGroupFlatListComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeGroupFlatListComponent1 = [
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{})
];

class _ViewMaterialTreeGroupFlatListComponent1 extends DebugAppView<import5.MaterialTreeGroupFlatListComponent> {
  import11.DivElement _el_0;
  ViewContainer _appEl_1;
  NgIf _NgIf_1_7;
  ViewContainer _appEl_2;
  NgIf _NgIf_2_7;
  _ViewMaterialTreeGroupFlatListComponent1(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {'\$implicit': null}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeGroupFlatListComponent1) {
    componentType = ViewMaterialTreeGroupFlatListComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import11.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 5, 0);
    _el_0.className = 'material-tree-option';
    addShimC(_el_0);
    var _anchor_1 = ngAnchor.clone(false);
    _el_0.append(_anchor_1);
    dbgElm(this, _anchor_1, 1, 6, 2);
    _appEl_1 = new ViewContainer(1, 0, this, _anchor_1);
    TemplateRef _TemplateRef_1_6 = new TemplateRef(_appEl_1, viewFactory_MaterialTreeGroupFlatListComponent2);
    _NgIf_1_7 = new NgIf(_appEl_1, _TemplateRef_1_6);
    var _anchor_2 = ngAnchor.clone(false);
    _el_0.append(_anchor_2);
    dbgElm(this, _anchor_2, 2, 12, 2);
    _appEl_2 = new ViewContainer(2, 0, this, _anchor_2);
    TemplateRef _TemplateRef_2_6 = new TemplateRef(_appEl_2, viewFactory_MaterialTreeGroupFlatListComponent3);
    _NgIf_2_7 = new NgIf(_appEl_2, _TemplateRef_2_6);
    init([_el_0], const [], [_el_0, _anchor_1, _anchor_2]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialTreeGroupFlatListComponent _ctx = ctx;
    dbg(1, 7, 4);
    _NgIf_1_7.ngIf = _ctx.useComponentRenderer;
    dbg(2, 13, 4);
    _NgIf_2_7.ngIf = !_ctx.useComponentRenderer;
    _appEl_1.detectChangesInNestedViews();
    _appEl_2.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    _appEl_1.destroyNestedViews();
    _appEl_2.destroyNestedViews();
  }
}

AppView<import5.MaterialTreeGroupFlatListComponent> viewFactory_MaterialTreeGroupFlatListComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeGroupFlatListComponent1(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeGroupFlatListComponent2 = [
  new StaticNodeDebugInfo([import15.DynamicComponent], import15.DynamicComponent, <String, dynamic>{})
];

class _ViewMaterialTreeGroupFlatListComponent2 extends DebugAppView<import5.MaterialTreeGroupFlatListComponent> {
  import11.Element _el_0;
  import16.ViewDynamicComponent0 _compView_0;
  ViewContainer _appEl_0;
  import15.DynamicComponent _DynamicComponent_0_6;
  var _expr_0;
  var _expr_1;
  _ViewMaterialTreeGroupFlatListComponent2(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeGroupFlatListComponent2) {
    componentType = ViewMaterialTreeGroupFlatListComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import16.ViewDynamicComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 6, 2);
    _el_0.className = 'item component';
    addShimC(_el_0);
    _appEl_0 = new ViewContainer(0, null, this, _el_0);
    _DynamicComponent_0_6 = new import15.DynamicComponent(parentView.parentView.injectorGet(import17.SlowComponentLoader, parentView.viewData.parentIndex), _compView_0.ref, _appEl_0);
    _compView_0.create(_DynamicComponent_0_6, []);
    init([_appEl_0], const [], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import15.DynamicComponent) && (0 == nodeIndex))) {
      return _DynamicComponent_0_6;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialTreeGroupFlatListComponent _ctx = ctx;
    dbg(0, 9, 4);
    final currVal_0 = _ctx.getComponentType(parentView.locals['\$implicit']);
    if (import12.checkBinding(_expr_0, currVal_0)) {
      _DynamicComponent_0_6.componentType = currVal_0;
      _expr_0 = currVal_0;
    }
    dbg(0, 10, 4);
    final currVal_1 = parentView.locals['\$implicit'];
    if (import12.checkBinding(_expr_1, currVal_1)) {
      _DynamicComponent_0_6.value = currVal_1;
      _expr_1 = currVal_1;
    }
    _appEl_0.detectChangesInNestedViews();
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _appEl_0.destroyNestedViews();
    _compView_0.destroy();
    dbg(0, 6, 2);
    _DynamicComponent_0_6.ngOnDestroy();
  }
}

AppView<import5.MaterialTreeGroupFlatListComponent> viewFactory_MaterialTreeGroupFlatListComponent2(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeGroupFlatListComponent2(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeGroupFlatListComponent3 = [null, null];

class _ViewMaterialTreeGroupFlatListComponent3 extends DebugAppView<import5.MaterialTreeGroupFlatListComponent> {
  import11.Element _el_0;
  import11.Text _text_1;
  var _expr_0;
  _ViewMaterialTreeGroupFlatListComponent3(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeGroupFlatListComponent3) {
    componentType = ViewMaterialTreeGroupFlatListComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import11.document;
    _el_0 = doc.createElement('span');
    dbgElm(this, _el_0, 0, 12, 2);
    _el_0.className = 'item text';
    addShimE(_el_0);
    _text_1 = new import11.Text('');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 14, 22);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialTreeGroupFlatListComponent _ctx = ctx;
    dbg(1, 14, 22);
    final currVal_0 = import12.interpolate0(_ctx.getOptionAsText(parentView.locals['\$implicit']));
    if (import12.checkBinding(_expr_0, currVal_0)) {
      _text_1.text = currVal_0;
      _expr_0 = currVal_0;
    }
  }
}

AppView<import5.MaterialTreeGroupFlatListComponent> viewFactory_MaterialTreeGroupFlatListComponent3(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeGroupFlatListComponent3(parentView, parentIndex);
}

const List<dynamic> styles$MaterialTreeGroupFlatListComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeGroupFlatListComponentHost0 = [
  new StaticNodeDebugInfo([import5.MaterialTreeGroupFlatListComponent], import5.MaterialTreeGroupFlatListComponent, <String, dynamic>{})
];

class _ViewMaterialTreeGroupFlatListComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialTreeGroupFlatListComponent0 _compView_0;
  import5.MaterialTreeGroupFlatListComponent _MaterialTreeGroupFlatListComponent_0_4;
  static RenderComponentType _renderType;
  _ViewMaterialTreeGroupFlatListComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeGroupFlatListComponentHost0) {
    _renderType ??= import12.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialTreeGroupFlatListComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialTreeGroupFlatListComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _MaterialTreeGroupFlatListComponent_0_4 = new import5.MaterialTreeGroupFlatListComponent(this.injectorGet(import18.MaterialTreeRoot, viewData.parentIndex), _compView_0.ref);
    _compView_0.create(_MaterialTreeGroupFlatListComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialTreeGroupFlatListComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import5.MaterialTreeGroupFlatListComponent) && (0 == nodeIndex))) {
      return _MaterialTreeGroupFlatListComponent_0_4;
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

AppView viewFactory_MaterialTreeGroupFlatListComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeGroupFlatListComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialTreeGroupFlatListComponentNgFactory = const ComponentFactory('material-tree-group-flat-list', viewFactory_MaterialTreeGroupFlatListComponentHost0, import5.MaterialTreeGroupFlatListComponent, _MaterialTreeGroupFlatListComponentMetadata);
final ComponentFactory MaterialTreeGroupFlatListComponentNgFactory = _MaterialTreeGroupFlatListComponentNgFactory;
const List<dynamic> styles$MaterialTreeGroupFlatRadioComponent = const [import19.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeGroupFlatRadioComponent0 = [
  new StaticNodeDebugInfo([import20.MaterialRadioGroupComponent], import20.MaterialRadioGroupComponent, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, import3.NgFor], null, <String, dynamic>{})
];

class ViewMaterialTreeGroupFlatRadioComponent0 extends DebugAppView<import5.MaterialTreeGroupFlatRadioComponent> {
  import11.Element _el_0;
  import21.ViewMaterialRadioGroupComponent0 _compView_0;
  import20.MaterialRadioGroupComponent _MaterialRadioGroupComponent_0_4;
  import22.QueryList _query_MaterialRadioComponent_0_0;
  ViewContainer _appEl_1;
  import3.NgFor _NgFor_1_7;
  var _expr_1;
  static RenderComponentType _renderType;
  ViewMaterialTreeGroupFlatRadioComponent0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeGroupFlatRadioComponent0) {
    rootEl = import11.document.createElement('material-tree-group-flat-radio');
    _renderType ??= import12.appViewUtils.createRenderType('package:angular_components/src/material_tree/group/material_tree_group_flat_radio.html', ViewEncapsulation.Emulated, styles$MaterialTreeGroupFlatRadioComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import11.HtmlElement parentRenderNode = initViewRoot(rootEl);
    _compView_0 = new import21.ViewMaterialRadioGroupComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    parentRenderNode.append(_el_0);
    dbgElm(this, _el_0, 0, 5, 0);
    addShimC(_el_0);
    _MaterialRadioGroupComponent_0_4 = new import20.MaterialRadioGroupComponent(parentView.injectorGet(import23.ManagedZone, viewData.parentIndex), null);
    _query_MaterialRadioComponent_0_0 = new import22.QueryList();
    var _anchor_1 = ngAnchor.clone(false);
    dbgElm(this, _anchor_1, 1, 7, 2);
    _appEl_1 = new ViewContainer(1, 0, this, _anchor_1);
    TemplateRef _TemplateRef_1_6 = new TemplateRef(_appEl_1, viewFactory_MaterialTreeGroupFlatRadioComponent1);
    _NgFor_1_7 = new import3.NgFor(_appEl_1, _TemplateRef_1_6);
    _compView_0.create(_MaterialRadioGroupComponent_0_4, [
      [_appEl_1]
    ]);
    init(const [], const [], [_el_0, _anchor_1]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import20.MaterialRadioGroupComponent) && ((0 <= nodeIndex) && (nodeIndex <= 1)))) {
      return _MaterialRadioGroupComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialTreeGroupFlatRadioComponent _ctx = ctx;
    bool changed = true;
    bool firstCheck = (this.cdState == 0);
    changed = false;
    if (firstCheck) {
      if (!identical(_ctx.selectionModel, null)) {
        _MaterialRadioGroupComponent_0_4.valueSelection = _ctx.selectionModel;
        changed = true;
      }
    }
    if (changed) {
      _compView_0.markAsCheckOnce();
    }
    dbg(1, 8, 4);
    final currVal_1 = _ctx.group;
    if (import12.checkBinding(_expr_1, currVal_1)) {
      _NgFor_1_7.ngForOf = currVal_1;
      _expr_1 = currVal_1;
    }
    if (!import12.AppViewUtils.throwOnChanges) {
      _NgFor_1_7.ngDoCheck();
    }
    _appEl_1.detectChangesInNestedViews();
    if (!import12.AppViewUtils.throwOnChanges) {
      if (_query_MaterialRadioComponent_0_0.dirty) {
        _query_MaterialRadioComponent_0_0.reset([
          _appEl_1.mapNestedViews(_ViewMaterialTreeGroupFlatRadioComponent1, (_ViewMaterialTreeGroupFlatRadioComponent1 nestedView) {
            return [nestedView._MaterialRadioComponent_0_4];
          })
        ]);
        _MaterialRadioGroupComponent_0_4.list = _query_MaterialRadioComponent_0_0;
        _query_MaterialRadioComponent_0_0.notifyOnChanges();
      }
    }
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _appEl_1.destroyNestedViews();
    _compView_0.destroy();
    dbg(0, 5, 0);
    _MaterialRadioGroupComponent_0_4.ngOnDestroy();
  }

  void detectHostChanges(bool firstCheck) {
    if (firstCheck) {
      if (!identical(ctx.isMaterialTreeGroup, null)) {
        updateElemClass(rootEl, 'material-tree-group', ctx.isMaterialTreeGroup);
      }
    }
  }
}

AppView<import5.MaterialTreeGroupFlatRadioComponent> viewFactory_MaterialTreeGroupFlatRadioComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialTreeGroupFlatRadioComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeGroupFlatRadioComponent1 = [
  new StaticNodeDebugInfo([import24.MaterialRadioComponent], import24.MaterialRadioComponent, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{})
];

class _ViewMaterialTreeGroupFlatRadioComponent1 extends DebugAppView<import5.MaterialTreeGroupFlatRadioComponent> {
  import11.Element _el_0;
  import25.ViewMaterialRadioComponent0 _compView_0;
  import24.MaterialRadioComponent _MaterialRadioComponent_0_4;
  ViewContainer _appEl_1;
  NgIf _NgIf_1_7;
  ViewContainer _appEl_2;
  NgIf _NgIf_2_7;
  bool _expr_0;
  bool _expr_1;
  var _expr_2;
  bool _expr_3;
  _ViewMaterialTreeGroupFlatRadioComponent1(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {'\$implicit': null}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeGroupFlatRadioComponent1) {
    componentType = ViewMaterialTreeGroupFlatRadioComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import25.ViewMaterialRadioComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 7, 2);
    _el_0.className = 'material-tree-option tree-selection-state themeable';
    createAttr(_el_0, 'role', 'option');
    addShimC(_el_0);
    _MaterialRadioComponent_0_4 = new import24.MaterialRadioComponent(_el_0, _compView_0.ref, (parentView as ViewMaterialTreeGroupFlatRadioComponent0)._MaterialRadioGroupComponent_0_4, null, 'option');
    var _anchor_1 = ngAnchor.clone(false);
    dbgElm(this, _anchor_1, 1, 15, 6);
    _appEl_1 = new ViewContainer(1, 0, this, _anchor_1);
    TemplateRef _TemplateRef_1_6 = new TemplateRef(_appEl_1, viewFactory_MaterialTreeGroupFlatRadioComponent2);
    _NgIf_1_7 = new NgIf(_appEl_1, _TemplateRef_1_6);
    var _anchor_2 = ngAnchor.clone(false);
    dbgElm(this, _anchor_2, 2, 21, 4);
    _appEl_2 = new ViewContainer(2, 0, this, _anchor_2);
    TemplateRef _TemplateRef_2_6 = new TemplateRef(_appEl_2, viewFactory_MaterialTreeGroupFlatRadioComponent3);
    _NgIf_2_7 = new NgIf(_appEl_2, _TemplateRef_2_6);
    _compView_0.create(_MaterialRadioComponent_0_4, [
      [_appEl_1, _appEl_2]
    ]);
    init([_el_0], const [], [_el_0, _anchor_1, _anchor_2]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import24.MaterialRadioComponent) && ((0 <= nodeIndex) && (nodeIndex <= 2)))) {
      return _MaterialRadioComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialTreeGroupFlatRadioComponent _ctx = ctx;
    bool changed = true;
    bool firstCheck = (this.cdState == 0);
    changed = false;
    dbg(0, 13, 4);
    final currVal_2 = locals['\$implicit'];
    if (import12.checkBinding(_expr_2, currVal_2)) {
      _MaterialRadioComponent_0_4.value = currVal_2;
      changed = true;
      _expr_2 = currVal_2;
    }
    dbg(0, 12, 4);
    final currVal_3 = _ctx.isReadOnly;
    if (import12.checkBinding(_expr_3, currVal_3)) {
      _MaterialRadioComponent_0_4.disabled = currVal_3;
      changed = true;
      _expr_3 = currVal_3;
    }
    if (changed) {
      _compView_0.markAsCheckOnce();
    }
    dbg(1, 16, 8);
    _NgIf_1_7.ngIf = _ctx.useComponentRenderer;
    dbg(2, 22, 6);
    _NgIf_2_7.ngIf = !_ctx.useComponentRenderer;
    _appEl_1.detectChangesInNestedViews();
    _appEl_2.detectChangesInNestedViews();
    final currVal_0 = _ctx.isSelected(locals['\$implicit']);
    if (import12.checkBinding(_expr_0, currVal_0)) {
      updateElemClass(_el_0, 'selected', currVal_0);
      _expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.isSelectable(locals['\$implicit']);
    if (import12.checkBinding(_expr_1, currVal_1)) {
      updateElemClass(_el_0, 'selectable', currVal_1);
      _expr_1 = currVal_1;
    }
    _compView_0.detectHostChanges(firstCheck);
    _compView_0.detectChanges();
  }

  @override
  void dirtyParentQueriesInternal() {
    (parentView as ViewMaterialTreeGroupFlatRadioComponent0)._query_MaterialRadioComponent_0_0.setDirty();
  }

  @override
  void destroyInternal() {
    _appEl_1.destroyNestedViews();
    _appEl_2.destroyNestedViews();
    _compView_0.destroy();
    dbg(0, 7, 2);
    _MaterialRadioComponent_0_4.ngOnDestroy();
  }
}

AppView<import5.MaterialTreeGroupFlatRadioComponent> viewFactory_MaterialTreeGroupFlatRadioComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeGroupFlatRadioComponent1(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeGroupFlatRadioComponent2 = [
  new StaticNodeDebugInfo([import15.DynamicComponent], import15.DynamicComponent, <String, dynamic>{})
];

class _ViewMaterialTreeGroupFlatRadioComponent2 extends DebugAppView<import5.MaterialTreeGroupFlatRadioComponent> {
  import11.Element _el_0;
  import16.ViewDynamicComponent0 _compView_0;
  ViewContainer _appEl_0;
  import15.DynamicComponent _DynamicComponent_0_6;
  var _expr_0;
  var _expr_1;
  _ViewMaterialTreeGroupFlatRadioComponent2(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeGroupFlatRadioComponent2) {
    componentType = ViewMaterialTreeGroupFlatRadioComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import16.ViewDynamicComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 15, 6);
    _el_0.className = 'item component';
    addShimC(_el_0);
    _appEl_0 = new ViewContainer(0, null, this, _el_0);
    _DynamicComponent_0_6 = new import15.DynamicComponent(parentView.parentView.parentView.injectorGet(import17.SlowComponentLoader, parentView.parentView.viewData.parentIndex), _compView_0.ref, _appEl_0);
    _compView_0.create(_DynamicComponent_0_6, []);
    init([_appEl_0], const [], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import15.DynamicComponent) && (0 == nodeIndex))) {
      return _DynamicComponent_0_6;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialTreeGroupFlatRadioComponent _ctx = ctx;
    dbg(0, 18, 8);
    final currVal_0 = _ctx.getComponentType(parentView.locals['\$implicit']);
    if (import12.checkBinding(_expr_0, currVal_0)) {
      _DynamicComponent_0_6.componentType = currVal_0;
      _expr_0 = currVal_0;
    }
    dbg(0, 19, 8);
    final currVal_1 = parentView.locals['\$implicit'];
    if (import12.checkBinding(_expr_1, currVal_1)) {
      _DynamicComponent_0_6.value = currVal_1;
      _expr_1 = currVal_1;
    }
    _appEl_0.detectChangesInNestedViews();
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _appEl_0.destroyNestedViews();
    _compView_0.destroy();
    dbg(0, 15, 6);
    _DynamicComponent_0_6.ngOnDestroy();
  }
}

AppView<import5.MaterialTreeGroupFlatRadioComponent> viewFactory_MaterialTreeGroupFlatRadioComponent2(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeGroupFlatRadioComponent2(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeGroupFlatRadioComponent3 = [null, null];

class _ViewMaterialTreeGroupFlatRadioComponent3 extends DebugAppView<import5.MaterialTreeGroupFlatRadioComponent> {
  import11.Element _el_0;
  import11.Text _text_1;
  var _expr_0;
  _ViewMaterialTreeGroupFlatRadioComponent3(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeGroupFlatRadioComponent3) {
    componentType = ViewMaterialTreeGroupFlatRadioComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import11.document;
    _el_0 = doc.createElement('span');
    dbgElm(this, _el_0, 0, 21, 4);
    _el_0.className = 'item text';
    addShimE(_el_0);
    _text_1 = new import11.Text('');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 23, 24);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialTreeGroupFlatRadioComponent _ctx = ctx;
    dbg(1, 23, 24);
    final currVal_0 = import12.interpolate0(_ctx.getOptionAsText(parentView.locals['\$implicit']));
    if (import12.checkBinding(_expr_0, currVal_0)) {
      _text_1.text = currVal_0;
      _expr_0 = currVal_0;
    }
  }
}

AppView<import5.MaterialTreeGroupFlatRadioComponent> viewFactory_MaterialTreeGroupFlatRadioComponent3(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeGroupFlatRadioComponent3(parentView, parentIndex);
}

const List<dynamic> styles$MaterialTreeGroupFlatRadioComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeGroupFlatRadioComponentHost0 = [
  new StaticNodeDebugInfo([import5.MaterialTreeGroupFlatRadioComponent], import5.MaterialTreeGroupFlatRadioComponent, <String, dynamic>{})
];

class _ViewMaterialTreeGroupFlatRadioComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialTreeGroupFlatRadioComponent0 _compView_0;
  import5.MaterialTreeGroupFlatRadioComponent _MaterialTreeGroupFlatRadioComponent_0_4;
  static RenderComponentType _renderType;
  _ViewMaterialTreeGroupFlatRadioComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeGroupFlatRadioComponentHost0) {
    _renderType ??= import12.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialTreeGroupFlatRadioComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialTreeGroupFlatRadioComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _MaterialTreeGroupFlatRadioComponent_0_4 = new import5.MaterialTreeGroupFlatRadioComponent(this.injectorGet(import18.MaterialTreeRoot, viewData.parentIndex), _compView_0.ref, this.injectorGet(import26.DropdownHandle, viewData.parentIndex, null));
    _compView_0.create(_MaterialTreeGroupFlatRadioComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialTreeGroupFlatRadioComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import5.MaterialTreeGroupFlatRadioComponent) && (0 == nodeIndex))) {
      return _MaterialTreeGroupFlatRadioComponent_0_4;
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

AppView viewFactory_MaterialTreeGroupFlatRadioComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeGroupFlatRadioComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialTreeGroupFlatRadioComponentNgFactory = const ComponentFactory('material-tree-group-flat-radio', viewFactory_MaterialTreeGroupFlatRadioComponentHost0, import5.MaterialTreeGroupFlatRadioComponent, _MaterialTreeGroupFlatRadioComponentMetadata);
final ComponentFactory MaterialTreeGroupFlatRadioComponentNgFactory = _MaterialTreeGroupFlatRadioComponentNgFactory;
const List<dynamic> styles$MaterialTreeGroupFlatCheckComponent = const [import27.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeGroupFlatCheckComponent0 = [
  new StaticNodeDebugInfo([TemplateRef, import3.NgFor], null, <String, dynamic>{})
];

class ViewMaterialTreeGroupFlatCheckComponent0 extends DebugAppView<import5.MaterialTreeGroupFlatCheckComponent> {
  ViewContainer _appEl_0;
  import3.NgFor _NgFor_0_7;
  var _expr_0;
  static RenderComponentType _renderType;
  ViewMaterialTreeGroupFlatCheckComponent0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeGroupFlatCheckComponent0) {
    rootEl = import11.document.createElement('material-tree-group-flat-check');
    _renderType ??= import12.appViewUtils.createRenderType('package:angular_components/src/material_tree/group/material_tree_group_flat_check.html', ViewEncapsulation.Emulated, styles$MaterialTreeGroupFlatCheckComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import11.HtmlElement parentRenderNode = initViewRoot(rootEl);
    var _anchor_0 = ngAnchor.clone(false);
    parentRenderNode.append(_anchor_0);
    dbgElm(this, _anchor_0, 0, 5, 0);
    _appEl_0 = new ViewContainer(0, null, this, _anchor_0);
    TemplateRef _TemplateRef_0_6 = new TemplateRef(_appEl_0, viewFactory_MaterialTreeGroupFlatCheckComponent1);
    _NgFor_0_7 = new import3.NgFor(_appEl_0, _TemplateRef_0_6);
    init(const [], const [], [_anchor_0]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialTreeGroupFlatCheckComponent _ctx = ctx;
    dbg(0, 6, 2);
    final currVal_0 = _ctx.group;
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

  void detectHostChanges(bool firstCheck) {
    if (firstCheck) {
      if (!identical(ctx.isMaterialTreeGroup, null)) {
        updateElemClass(rootEl, 'material-tree-group', ctx.isMaterialTreeGroup);
      }
    }
  }
}

AppView<import5.MaterialTreeGroupFlatCheckComponent> viewFactory_MaterialTreeGroupFlatCheckComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialTreeGroupFlatCheckComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeGroupFlatCheckComponent1 = [
  new StaticNodeDebugInfo([import28.MaterialCheckboxComponent], import28.MaterialCheckboxComponent, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{})
];

class _ViewMaterialTreeGroupFlatCheckComponent1 extends DebugAppView<import5.MaterialTreeGroupFlatCheckComponent> {
  import11.Element _el_0;
  import29.ViewMaterialCheckboxComponent0 _compView_0;
  import28.MaterialCheckboxComponent _MaterialCheckboxComponent_0_4;
  ViewContainer _appEl_1;
  NgIf _NgIf_1_7;
  ViewContainer _appEl_2;
  NgIf _NgIf_2_7;
  bool _expr_0;
  bool _expr_1;
  bool _expr_2;
  bool _expr_3;
  _ViewMaterialTreeGroupFlatCheckComponent1(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {'\$implicit': null}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeGroupFlatCheckComponent1) {
    componentType = ViewMaterialTreeGroupFlatCheckComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import29.ViewMaterialCheckboxComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 5, 0);
    _el_0.className = 'material-tree-option tree-selection-state themeable';
    createAttr(_el_0, 'role', 'option');
    addShimC(_el_0);
    _MaterialCheckboxComponent_0_4 = new import28.MaterialCheckboxComponent(_el_0, _compView_0.ref, null, null, 'option');
    var _anchor_1 = ngAnchor.clone(false);
    dbgElm(this, _anchor_1, 1, 14, 4);
    _appEl_1 = new ViewContainer(1, 0, this, _anchor_1);
    TemplateRef _TemplateRef_1_6 = new TemplateRef(_appEl_1, viewFactory_MaterialTreeGroupFlatCheckComponent2);
    _NgIf_1_7 = new NgIf(_appEl_1, _TemplateRef_1_6);
    var _anchor_2 = ngAnchor.clone(false);
    dbgElm(this, _anchor_2, 2, 20, 4);
    _appEl_2 = new ViewContainer(2, 0, this, _anchor_2);
    TemplateRef _TemplateRef_2_6 = new TemplateRef(_appEl_2, viewFactory_MaterialTreeGroupFlatCheckComponent3);
    _NgIf_2_7 = new NgIf(_appEl_2, _TemplateRef_2_6);
    _compView_0.create(_MaterialCheckboxComponent_0_4, [
      [_appEl_1, _appEl_2]
    ]);
    final subscription_0 = _MaterialCheckboxComponent_0_4.onChecked.listen(eventHandler1(_handle_checkedChange_0_0));
    init([_el_0], [subscription_0], [_el_0, _anchor_1, _anchor_2]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import28.MaterialCheckboxComponent) && ((0 <= nodeIndex) && (nodeIndex <= 2)))) {
      return _MaterialCheckboxComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialTreeGroupFlatCheckComponent _ctx = ctx;
    bool changed = true;
    bool firstCheck = (this.cdState == 0);
    changed = false;
    dbg(0, 12, 2);
    final currVal_2 = (_ctx.isReadOnly || _ctx.showDisabledCheckbox(locals['\$implicit']));
    if (import12.checkBinding(_expr_2, currVal_2)) {
      _MaterialCheckboxComponent_0_4.disabled = currVal_2;
      changed = true;
      _expr_2 = currVal_2;
    }
    dbg(0, 10, 2);
    final currVal_3 = _ctx.isSelected(locals['\$implicit']);
    if (import12.checkBinding(_expr_3, currVal_3)) {
      _MaterialCheckboxComponent_0_4.checked = currVal_3;
      changed = true;
      _expr_3 = currVal_3;
    }
    if (changed) {
      _compView_0.markAsCheckOnce();
    }
    dbg(1, 15, 6);
    _NgIf_1_7.ngIf = _ctx.useComponentRenderer;
    dbg(2, 21, 6);
    _NgIf_2_7.ngIf = !_ctx.useComponentRenderer;
    _appEl_1.detectChangesInNestedViews();
    _appEl_2.detectChangesInNestedViews();
    final currVal_0 = _ctx.isSelected(locals['\$implicit']);
    if (import12.checkBinding(_expr_0, currVal_0)) {
      updateElemClass(_el_0, 'selected', currVal_0);
      _expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.isSelectable(locals['\$implicit']);
    if (import12.checkBinding(_expr_1, currVal_1)) {
      updateElemClass(_el_0, 'selectable', currVal_1);
      _expr_1 = currVal_1;
    }
    _compView_0.detectHostChanges(firstCheck);
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _appEl_1.destroyNestedViews();
    _appEl_2.destroyNestedViews();
    _compView_0.destroy();
  }

  void _handle_checkedChange_0_0($event) {
    dbg(0, 11, 2);
    ctx.setSelectionState(locals['\$implicit'], $event);
  }
}

AppView<import5.MaterialTreeGroupFlatCheckComponent> viewFactory_MaterialTreeGroupFlatCheckComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeGroupFlatCheckComponent1(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeGroupFlatCheckComponent2 = [
  new StaticNodeDebugInfo([import15.DynamicComponent], import15.DynamicComponent, <String, dynamic>{})
];

class _ViewMaterialTreeGroupFlatCheckComponent2 extends DebugAppView<import5.MaterialTreeGroupFlatCheckComponent> {
  import11.Element _el_0;
  import16.ViewDynamicComponent0 _compView_0;
  ViewContainer _appEl_0;
  import15.DynamicComponent _DynamicComponent_0_6;
  var _expr_0;
  var _expr_1;
  _ViewMaterialTreeGroupFlatCheckComponent2(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeGroupFlatCheckComponent2) {
    componentType = ViewMaterialTreeGroupFlatCheckComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import16.ViewDynamicComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 14, 4);
    _el_0.className = 'item component';
    addShimC(_el_0);
    _appEl_0 = new ViewContainer(0, null, this, _el_0);
    _DynamicComponent_0_6 = new import15.DynamicComponent(parentView.parentView.injectorGet(import17.SlowComponentLoader, parentView.viewData.parentIndex), _compView_0.ref, _appEl_0);
    _compView_0.create(_DynamicComponent_0_6, []);
    init([_appEl_0], const [], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import15.DynamicComponent) && (0 == nodeIndex))) {
      return _DynamicComponent_0_6;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialTreeGroupFlatCheckComponent _ctx = ctx;
    dbg(0, 17, 6);
    final currVal_0 = _ctx.getComponentType(parentView.locals['\$implicit']);
    if (import12.checkBinding(_expr_0, currVal_0)) {
      _DynamicComponent_0_6.componentType = currVal_0;
      _expr_0 = currVal_0;
    }
    dbg(0, 18, 6);
    final currVal_1 = parentView.locals['\$implicit'];
    if (import12.checkBinding(_expr_1, currVal_1)) {
      _DynamicComponent_0_6.value = currVal_1;
      _expr_1 = currVal_1;
    }
    _appEl_0.detectChangesInNestedViews();
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _appEl_0.destroyNestedViews();
    _compView_0.destroy();
    dbg(0, 14, 4);
    _DynamicComponent_0_6.ngOnDestroy();
  }
}

AppView<import5.MaterialTreeGroupFlatCheckComponent> viewFactory_MaterialTreeGroupFlatCheckComponent2(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeGroupFlatCheckComponent2(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeGroupFlatCheckComponent3 = [null, null];

class _ViewMaterialTreeGroupFlatCheckComponent3 extends DebugAppView<import5.MaterialTreeGroupFlatCheckComponent> {
  import11.Element _el_0;
  import11.Text _text_1;
  var _expr_0;
  _ViewMaterialTreeGroupFlatCheckComponent3(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeGroupFlatCheckComponent3) {
    componentType = ViewMaterialTreeGroupFlatCheckComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import11.document;
    _el_0 = doc.createElement('span');
    dbgElm(this, _el_0, 0, 20, 4);
    _el_0.className = 'item text';
    addShimE(_el_0);
    _text_1 = new import11.Text('');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 22, 24);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialTreeGroupFlatCheckComponent _ctx = ctx;
    dbg(1, 22, 24);
    final currVal_0 = import12.interpolate0(_ctx.getOptionAsText(parentView.locals['\$implicit']));
    if (import12.checkBinding(_expr_0, currVal_0)) {
      _text_1.text = currVal_0;
      _expr_0 = currVal_0;
    }
  }
}

AppView<import5.MaterialTreeGroupFlatCheckComponent> viewFactory_MaterialTreeGroupFlatCheckComponent3(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeGroupFlatCheckComponent3(parentView, parentIndex);
}

const List<dynamic> styles$MaterialTreeGroupFlatCheckComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeGroupFlatCheckComponentHost0 = [
  new StaticNodeDebugInfo([import5.MaterialTreeGroupFlatCheckComponent], import5.MaterialTreeGroupFlatCheckComponent, <String, dynamic>{})
];

class _ViewMaterialTreeGroupFlatCheckComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialTreeGroupFlatCheckComponent0 _compView_0;
  import5.MaterialTreeGroupFlatCheckComponent _MaterialTreeGroupFlatCheckComponent_0_4;
  static RenderComponentType _renderType;
  _ViewMaterialTreeGroupFlatCheckComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeGroupFlatCheckComponentHost0) {
    _renderType ??= import12.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialTreeGroupFlatCheckComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialTreeGroupFlatCheckComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _MaterialTreeGroupFlatCheckComponent_0_4 = new import5.MaterialTreeGroupFlatCheckComponent(this.injectorGet(import18.MaterialTreeRoot, viewData.parentIndex), _compView_0.ref, this.injectorGet(import26.DropdownHandle, viewData.parentIndex, null));
    _compView_0.create(_MaterialTreeGroupFlatCheckComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialTreeGroupFlatCheckComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import5.MaterialTreeGroupFlatCheckComponent) && (0 == nodeIndex))) {
      return _MaterialTreeGroupFlatCheckComponent_0_4;
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

AppView viewFactory_MaterialTreeGroupFlatCheckComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeGroupFlatCheckComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialTreeGroupFlatCheckComponentNgFactory = const ComponentFactory('material-tree-group-flat-check', viewFactory_MaterialTreeGroupFlatCheckComponentHost0, import5.MaterialTreeGroupFlatCheckComponent, _MaterialTreeGroupFlatCheckComponentMetadata);
final ComponentFactory MaterialTreeGroupFlatCheckComponentNgFactory = _MaterialTreeGroupFlatCheckComponentNgFactory;
const _MaterialTreeGroupFlatListComponentMetadata = const [];
const _MaterialTreeGroupFlatRadioComponentMetadata = const [];
const _MaterialTreeGroupFlatCheckComponentMetadata = const [];
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
  _ref9.initReflector();
  _ngRef.registerComponent(
    MaterialTreeGroupFlatListComponent,
    MaterialTreeGroupFlatListComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialTreeGroupFlatListComponent,
    (MaterialTreeRoot p0, ChangeDetectorRef p1) => new MaterialTreeGroupFlatListComponent(p0, p1),
  );
  _ngRef.registerDependencies(
    MaterialTreeGroupFlatListComponent,
    const [
      const [
        MaterialTreeRoot,
      ],
      const [
        ChangeDetectorRef,
      ],
    ],
  );

  _ngRef.registerComponent(
    MaterialTreeGroupFlatRadioComponent,
    MaterialTreeGroupFlatRadioComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialTreeGroupFlatRadioComponent,
    (MaterialTreeRoot p0, ChangeDetectorRef p1, DropdownHandle p2) => new MaterialTreeGroupFlatRadioComponent(p0, p1, p2),
  );
  _ngRef.registerDependencies(
    MaterialTreeGroupFlatRadioComponent,
    const [
      const [
        MaterialTreeRoot,
      ],
      const [
        ChangeDetectorRef,
      ],
      const [
        DropdownHandle,
        const _ngRef.Optional(),
      ],
    ],
  );

  _ngRef.registerComponent(
    MaterialTreeGroupFlatCheckComponent,
    MaterialTreeGroupFlatCheckComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialTreeGroupFlatCheckComponent,
    (MaterialTreeRoot p0, ChangeDetectorRef p1, DropdownHandle p2) => new MaterialTreeGroupFlatCheckComponent(p0, p1, p2),
  );
  _ngRef.registerDependencies(
    MaterialTreeGroupFlatCheckComponent,
    const [
      const [
        MaterialTreeRoot,
      ],
      const [
        ChangeDetectorRef,
      ],
      const [
        DropdownHandle,
        const _ngRef.Optional(),
      ],
    ],
  );
}
