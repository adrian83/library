// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_select.dart';
export 'material_select.dart';
import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_components/material_list/material_list.dart';
import 'package:angular_components/model/selection/select.dart';
import 'package:angular_components/model/selection/selection_container.dart';
import 'package:angular_components/model/selection/selection_model.dart';
import 'package:angular_components/model/selection/selection_options.dart';
import 'package:angular_components/model/ui/has_renderer.dart';
import 'package:angular_components/model/ui/template_support.dart';
import 'package:angular_components/utils/angular/properties/properties.dart';
import 'material_select_base.dart';
import 'material_select_item.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'material_select_base.template.dart' as _ref0;
import 'material_select_item.template.dart' as _ref1;
import 'package:angular/angular.template.dart' as _ref2;
import 'package:angular_components/material_list/material_list.template.dart' as _ref3;
import 'package:angular_components/model/selection/select.template.dart' as _ref4;
import 'package:angular_components/model/selection/selection_container.template.dart' as _ref5;
import 'package:angular_components/model/selection/selection_model.template.dart' as _ref6;
import 'package:angular_components/model/selection/selection_options.template.dart' as _ref7;
import 'package:angular_components/model/ui/has_renderer.template.dart' as _ref8;
import 'package:angular_components/model/ui/template_support.template.dart' as _ref9;
import 'package:angular_components/utils/angular/properties/properties.template.dart' as _ref10;

import 'package:angular_components/material_select/material_select.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import '../material_list/material_list.dart' as import2;
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/common/directives/ng_if.dart';
import 'package:angular/src/debug/debug_app_view.dart';
import 'material_select.dart' as import6;
import 'dart:html' as import7;
import '../material_list/material_list.template.dart' as import8;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import12;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import14;
import 'package:angular/angular.dart';
import 'package:angular/src/common/directives/ng_for.dart' as import16;
import 'material_select_item.dart' as import17;
import '../model/selection/selection_container.dart' as import18;
import '../model/ui/has_renderer.dart' as import19;
import 'material_select_item.template.dart' as import20;
import '../utils/browser/dom_service/dom_service.dart' as import21;
import '../mixins/material_dropdown_base.dart' as import22;
import 'activation_handler.dart' as import23;
import 'package:angular/src/core/linker/query_list.dart' as import24;

const List<dynamic> styles$MaterialSelectComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialSelectComponent0 = [
  null,
  new StaticNodeDebugInfo([import2.MaterialListComponent], import2.MaterialListComponent, <String, dynamic>{}),
  null,
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  null
];

class ViewMaterialSelectComponent0 extends DebugAppView<import6.MaterialSelectComponent> {
  import7.Element _el_1;
  import8.ViewMaterialListComponent0 _compView_1;
  import2.MaterialListComponent _MaterialListComponent_1_4;
  ViewContainer _appEl_4;
  NgIf _NgIf_4_7;
  var _expr_0;
  var _expr_2;
  static RenderComponentType _renderType;
  ViewMaterialSelectComponent0(AppView<dynamic> parentView, num parentIndex) : super(import12.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialSelectComponent0) {
    rootEl = import7.document.createElement('material-select');
    createAttr(rootEl, 'role', 'listbox');
    _renderType ??= import14.appViewUtils.createRenderType('package:angular_components/material_select/material_select.html', ViewEncapsulation.Emulated, styles$MaterialSelectComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import7.HtmlElement parentRenderNode = initViewRoot(rootEl);
    import7.Text _text_0 = new import7.Text('\n');
    parentRenderNode.append(_text_0);
    dbgElm(this, _text_0, 0, 4, 3);
    _compView_1 = new import8.ViewMaterialListComponent0(this, 1);
    _el_1 = _compView_1.rootEl;
    parentRenderNode.append(_el_1);
    dbgElm(this, _el_1, 1, 5, 0);
    addShimC(_el_1);
    _MaterialListComponent_1_4 = new import2.MaterialListComponent();
    import7.Text _text_2 = new import7.Text('\n  ');
    dbgElm(this, _text_2, 2, 5, 31);
    dbg(null, 6, 2);
    import7.Text _text_3 = new import7.Text('\n  ');
    dbgElm(this, _text_3, 3, 6, 27);
    var _anchor_4 = ngAnchor.clone(false);
    dbgElm(this, _anchor_4, 4, 7, 2);
    _appEl_4 = new ViewContainer(4, 1, this, _anchor_4);
    TemplateRef _TemplateRef_4_6 = new TemplateRef(_appEl_4, viewFactory_MaterialSelectComponent1);
    _NgIf_4_7 = new NgIf(_appEl_4, _TemplateRef_4_6);
    import7.Text _text_5 = new import7.Text('\n');
    dbgElm(this, _text_5, 5, 21, 8);
    _compView_1.create(_MaterialListComponent_1_4, [
      <dynamic>[_text_2]..addAll(projectableNodes[0])..addAll([_text_3, _appEl_4, _text_5])
    ]);
    import7.Text _text_6 = new import7.Text('\n');
    parentRenderNode.append(_text_6);
    dbgElm(this, _text_6, 6, 22, 16);
    init(const [], const [], [_text_0, _el_1, _text_2, _text_3, _anchor_4, _text_5, _text_6]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import2.MaterialListComponent) && ((1 <= nodeIndex) && (nodeIndex <= 5)))) {
      return _MaterialListComponent_1_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import6.MaterialSelectComponent _ctx = ctx;
    bool changed = true;
    bool firstCheck = (this.cdState == 0);
    changed = false;
    dbg(1, 5, 15);
    final currVal_0 = _ctx.width;
    if (import14.checkBinding(_expr_0, currVal_0)) {
      _MaterialListComponent_1_4.width = currVal_0;
      changed = true;
      _expr_0 = currVal_0;
    }
    if (changed) {
      _compView_1.markAsCheckOnce();
    }
    dbg(4, 7, 31);
    _NgIf_4_7.ngIf = (_ctx.options != null);
    _appEl_4.detectChangesInNestedViews();
    _compView_1.detectHostChanges(firstCheck);
    _compView_1.detectChanges();
  }

  @override
  void destroyInternal() {
    _appEl_4.destroyNestedViews();
    _compView_1.destroy();
  }

  void detectHostChanges(bool firstCheck) {
    final currVal_2 = ctx.disabledStr;
    if (import14.checkBinding(_expr_2, currVal_2)) {
      setAttr(rootEl, 'aria-disabled', currVal_2?.toString());
      _expr_2 = currVal_2;
    }
  }
}

AppView<import6.MaterialSelectComponent> viewFactory_MaterialSelectComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialSelectComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialSelectComponent1 = [
  null,
  null,
  new StaticNodeDebugInfo([TemplateRef, import16.NgFor], null, <String, dynamic>{}),
  null
];

class _ViewMaterialSelectComponent1 extends DebugAppView<import6.MaterialSelectComponent> {
  import7.DivElement _el_0;
  ViewContainer _appEl_2;
  import16.NgFor _NgFor_2_7;
  var _expr_1;
  _ViewMaterialSelectComponent1(AppView<dynamic> parentView, num parentIndex) : super(import12.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialSelectComponent1) {
    componentType = ViewMaterialSelectComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import7.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 7, 2);
    _el_0.className = 'options-wrapper';
    addShimC(_el_0);
    import7.Text _text_1 = new import7.Text('\n    ');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 7, 55);
    var _anchor_2 = ngAnchor.clone(false);
    _el_0.append(_anchor_2);
    dbgElm(this, _anchor_2, 2, 8, 4);
    _appEl_2 = new ViewContainer(2, 0, this, _anchor_2);
    TemplateRef _TemplateRef_2_6 = new TemplateRef(_appEl_2, viewFactory_MaterialSelectComponent2);
    _NgFor_2_7 = new import16.NgFor(_appEl_2, _TemplateRef_2_6);
    import7.Text _text_3 = new import7.Text('\n  ');
    _el_0.append(_text_3);
    dbgElm(this, _text_3, 3, 20, 10);
    init([_el_0], const [], [_el_0, _text_1, _anchor_2, _text_3]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import6.MaterialSelectComponent _ctx = ctx;
    bool firstCheck = (this.cdState == 0);
    if (firstCheck) {
      if (!identical(_ctx.trackByIndexFn, null)) {
        (_NgFor_2_7.ngForTrackBy = _ctx.trackByIndexFn);
      }
    }
    dbg(2, 8, 9);
    final currVal_1 = _ctx.options.optionGroups;
    if (import14.checkBinding(_expr_1, currVal_1)) {
      _NgFor_2_7.ngForOf = currVal_1;
      _expr_1 = currVal_1;
    }
    if (!import14.AppViewUtils.throwOnChanges) {
      _NgFor_2_7.ngDoCheck();
    }
    _appEl_2.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    _appEl_2.destroyNestedViews();
  }
}

AppView<import6.MaterialSelectComponent> viewFactory_MaterialSelectComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialSelectComponent1(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialSelectComponent2 = [
  null,
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null
];

class _ViewMaterialSelectComponent2 extends DebugAppView<import6.MaterialSelectComponent> {
  import7.DivElement _el_0;
  ViewContainer _appEl_2;
  NgIf _NgIf_2_7;
  bool _expr_0;
  _ViewMaterialSelectComponent2(AppView<dynamic> parentView, num parentIndex) : super(import12.ViewType.EMBEDDED, {'\$implicit': null}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialSelectComponent2) {
    componentType = ViewMaterialSelectComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import7.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 8, 4);
    createAttr(_el_0, 'group', '');
    addShimC(_el_0);
    import7.Text _text_1 = new import7.Text('\n      ');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 9, 39);
    var _anchor_2 = ngAnchor.clone(false);
    _el_0.append(_anchor_2);
    dbgElm(this, _anchor_2, 2, 10, 6);
    _appEl_2 = new ViewContainer(2, 0, this, _anchor_2);
    TemplateRef _TemplateRef_2_6 = new TemplateRef(_appEl_2, viewFactory_MaterialSelectComponent3);
    _NgIf_2_7 = new NgIf(_appEl_2, _TemplateRef_2_6);
    import7.Text _text_3 = new import7.Text('\n    ');
    _el_0.append(_text_3);
    dbgElm(this, _text_3, 3, 19, 17);
    init([_el_0], const [], [_el_0, _text_1, _anchor_2, _text_3]);
    return null;
  }

  @override
  void detectChangesInternal() {
    dbg(2, 10, 16);
    _NgIf_2_7.ngIf = locals['\$implicit'].isNotEmpty;
    _appEl_2.detectChangesInNestedViews();
    final currVal_0 = locals['\$implicit'].isEmpty;
    if (import14.checkBinding(_expr_0, currVal_0)) {
      updateClass(_el_0, 'empty', currVal_0);
      _expr_0 = currVal_0;
    }
  }

  @override
  void destroyInternal() {
    _appEl_2.destroyNestedViews();
  }
}

AppView<import6.MaterialSelectComponent> viewFactory_MaterialSelectComponent2(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialSelectComponent2(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialSelectComponent3 = [
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  new StaticNodeDebugInfo([TemplateRef, import16.NgFor], null, <String, dynamic>{}),
  null
];

class _ViewMaterialSelectComponent3 extends DebugAppView<import6.MaterialSelectComponent> {
  ViewContainer _appEl_1;
  NgIf _NgIf_1_7;
  ViewContainer _appEl_3;
  import16.NgFor _NgFor_3_7;
  var _expr_1;
  _ViewMaterialSelectComponent3(AppView<dynamic> parentView, num parentIndex) : super(import12.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialSelectComponent3) {
    componentType = ViewMaterialSelectComponent0._renderType;
  }
  @override
  ComponentRef build() {
    import7.Text _text_0 = new import7.Text('\n        ');
    dbgElm(this, _text_0, 0, 10, 42);
    var _anchor_1 = ngAnchor.clone(false);
    dbgElm(this, _anchor_1, 1, 11, 8);
    _appEl_1 = new ViewContainer(1, null, this, _anchor_1);
    TemplateRef _TemplateRef_1_6 = new TemplateRef(_appEl_1, viewFactory_MaterialSelectComponent4);
    _NgIf_1_7 = new NgIf(_appEl_1, _TemplateRef_1_6);
    import7.Text _text_2 = new import7.Text('\n        ');
    dbgElm(this, _text_2, 2, 11, 73);
    var _anchor_3 = ngAnchor.clone(false);
    dbgElm(this, _anchor_3, 3, 12, 8);
    _appEl_3 = new ViewContainer(3, null, this, _anchor_3);
    TemplateRef _TemplateRef_3_6 = new TemplateRef(_appEl_3, viewFactory_MaterialSelectComponent5);
    _NgFor_3_7 = new import16.NgFor(_appEl_3, _TemplateRef_3_6);
    import7.Text _text_4 = new import7.Text('\n      ');
    dbgElm(this, _text_4, 4, 18, 31);
    init([_text_0, _appEl_1, _text_2, _appEl_3, _text_4], const [], [_text_0, _anchor_1, _text_2, _anchor_3, _text_4]);
    return null;
  }

  @override
  void detectChangesInternal() {
    dbg(1, 11, 14);
    _NgIf_1_7.ngIf = parentView.locals['\$implicit'].hasLabel;
    dbg(3, 12, 30);
    final currVal_1 = parentView.locals['\$implicit'];
    if (import14.checkBinding(_expr_1, currVal_1)) {
      _NgFor_3_7.ngForOf = currVal_1;
      _expr_1 = currVal_1;
    }
    if (!import14.AppViewUtils.throwOnChanges) {
      _NgFor_3_7.ngDoCheck();
    }
    _appEl_1.detectChangesInNestedViews();
    _appEl_3.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    _appEl_1.destroyNestedViews();
    _appEl_3.destroyNestedViews();
  }
}

AppView<import6.MaterialSelectComponent> viewFactory_MaterialSelectComponent3(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialSelectComponent3(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialSelectComponent4 = [null, null];

class _ViewMaterialSelectComponent4 extends DebugAppView<import6.MaterialSelectComponent> {
  import7.Element _el_0;
  import7.Text _text_1;
  var _expr_0;
  _ViewMaterialSelectComponent4(AppView<dynamic> parentView, num parentIndex) : super(import12.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialSelectComponent4) {
    componentType = ViewMaterialSelectComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import7.document;
    _el_0 = doc.createElement('span');
    dbgElm(this, _el_0, 0, 11, 8);
    createAttr(_el_0, 'label', '');
    addShimE(_el_0);
    _text_1 = new import7.Text('');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 11, 43);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    dbg(1, 11, 43);
    final currVal_0 = import14.interpolate0(parentView.parentView.locals['\$implicit'].uiDisplayName);
    if (import14.checkBinding(_expr_0, currVal_0)) {
      _text_1.text = currVal_0;
      _expr_0 = currVal_0;
    }
  }
}

AppView<import6.MaterialSelectComponent> viewFactory_MaterialSelectComponent4(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialSelectComponent4(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialSelectComponent5 = [
  new StaticNodeDebugInfo([import17.MaterialSelectItemComponent, import18.SelectionItem, import19.HasRenderer], import17.MaterialSelectItemComponent, <String, dynamic>{}),
  null
];

class _ViewMaterialSelectComponent5 extends DebugAppView<import6.MaterialSelectComponent> {
  import7.Element _el_0;
  import20.ViewMaterialSelectItemComponent0 _compView_0;
  import17.MaterialSelectItemComponent _MaterialSelectItemComponent_0_4;
  bool _expr_0;
  var _expr_1;
  var _expr_2;
  var _expr_3;
  var _expr_4;
  _ViewMaterialSelectComponent5(AppView<dynamic> parentView, num parentIndex) : super(import12.ViewType.EMBEDDED, {'\$implicit': null}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialSelectComponent5) {
    componentType = ViewMaterialSelectComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import20.ViewMaterialSelectItemComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 12, 8);
    addShimC(_el_0);
    _MaterialSelectItemComponent_0_4 = new import17.MaterialSelectItemComponent(_el_0, parentView.parentView.parentView.parentView.parentView.injectorGet(import21.DomService, parentView.parentView.parentView.parentView.viewData.parentIndex), parentView.parentView.parentView.parentView.parentView.injectorGet(import22.DropdownHandle, parentView.parentView.parentView.parentView.viewData.parentIndex, null), parentView.parentView.parentView.parentView.parentView.injectorGet(import23.ActivationHandler, parentView.parentView.parentView.parentView.viewData.parentIndex, null), _compView_0.ref);
    import7.Text _text_1 = new import7.Text('\n        ');
    dbgElm(this, _text_1, 1, 17, 45);
    _compView_0.create(_MaterialSelectItemComponent_0_4, [
      [_text_1]
    ]);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((((identical(token, import17.MaterialSelectItemComponent) || identical(token, import18.SelectionItem)) || identical(token, import19.HasRenderer)) && ((0 <= nodeIndex) && (nodeIndex <= 1)))) {
      return _MaterialSelectItemComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import6.MaterialSelectComponent _ctx = ctx;
    bool firstCheck = (this.cdState == 0);
    dbg(0, 14, 30);
    final currVal_0 = (_ctx.disabled || _ctx.isOptionDisabled(locals['\$implicit']));
    if (import14.checkBinding(_expr_0, currVal_0)) {
      _MaterialSelectItemComponent_0_4.disabled = currVal_0;
      _expr_0 = currVal_0;
    }
    dbg(0, 15, 30);
    final currVal_1 = _ctx.componentRenderer;
    if (import14.checkBinding(_expr_1, currVal_1)) {
      _MaterialSelectItemComponent_0_4.componentRenderer = currVal_1;
      _expr_1 = currVal_1;
    }
    dbg(0, 17, 30);
    final currVal_2 = locals['\$implicit'];
    if (import14.checkBinding(_expr_2, currVal_2)) {
      _MaterialSelectItemComponent_0_4.value = currVal_2;
      _expr_2 = currVal_2;
    }
    dbg(0, 13, 30);
    final currVal_3 = _ctx.itemRenderer;
    if (import14.checkBinding(_expr_3, currVal_3)) {
      _MaterialSelectItemComponent_0_4.itemRenderer = currVal_3;
      _expr_3 = currVal_3;
    }
    dbg(0, 16, 30);
    final currVal_4 = _ctx.selection;
    if (import14.checkBinding(_expr_4, currVal_4)) {
      _MaterialSelectItemComponent_0_4.selection = currVal_4;
      _expr_4 = currVal_4;
    }
    _compView_0.detectHostChanges(firstCheck);
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
    dbg(0, 12, 8);
    _MaterialSelectItemComponent_0_4.ngOnDestroy();
  }
}

AppView<import6.MaterialSelectComponent> viewFactory_MaterialSelectComponent5(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialSelectComponent5(parentView, parentIndex);
}

const List<dynamic> styles$MaterialSelectComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialSelectComponentHost0 = [
  new StaticNodeDebugInfo([import6.MaterialSelectComponent, import19.HasRenderer, import18.SelectionContainer], import6.MaterialSelectComponent, <String, dynamic>{})
];

class _ViewMaterialSelectComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialSelectComponent0 _compView_0;
  import6.MaterialSelectComponent _MaterialSelectComponent_0_4;
  import24.QueryList _query_SelectionItem_0_0;
  static RenderComponentType _renderType;
  _ViewMaterialSelectComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import12.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialSelectComponentHost0) {
    _renderType ??= import14.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialSelectComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialSelectComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _MaterialSelectComponent_0_4 = new import6.MaterialSelectComponent();
    _query_SelectionItem_0_0 = new import24.QueryList();
    _compView_0.create(_MaterialSelectComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialSelectComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((((identical(token, import6.MaterialSelectComponent) || identical(token, import19.HasRenderer)) || identical(token, import18.SelectionContainer)) && (0 == nodeIndex))) {
      return _MaterialSelectComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = (this.cdState == 0);
    if (!import14.AppViewUtils.throwOnChanges) {
      if (_query_SelectionItem_0_0.dirty) {
        _query_SelectionItem_0_0.reset([]);
        _MaterialSelectComponent_0_4.selectItems = _query_SelectionItem_0_0;
        _query_SelectionItem_0_0.notifyOnChanges();
      }
    }
    _compView_0.detectHostChanges(firstCheck);
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
    dbg(0, 0, 0);
    _MaterialSelectComponent_0_4.ngOnDestroy();
  }
}

AppView viewFactory_MaterialSelectComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialSelectComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialSelectComponentNgFactory = const ComponentFactory('material-select', viewFactory_MaterialSelectComponentHost0, import6.MaterialSelectComponent, _MaterialSelectComponentMetadata);
final ComponentFactory MaterialSelectComponentNgFactory = _MaterialSelectComponentNgFactory;
const _MaterialSelectComponentMetadata = const [];
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
  _ref10.initReflector();
  _ngRef.registerComponent(
    MaterialSelectComponent,
    MaterialSelectComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialSelectComponent,
    () => new MaterialSelectComponent(),
  );
}
