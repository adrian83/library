// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_select_item.dart';
export 'material_select_item.dart';
import 'dart:async';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/button_decorator/button_decorator.dart';
import 'package:angular_components/dynamic_component/dynamic_component.dart';
import 'package:angular_components/glyph/glyph.dart';
import 'package:angular_components/material_checkbox/material_checkbox.dart';
import 'package:angular_components/material_select/activation_handler.dart';
import 'package:angular_components/mixins/material_dropdown_base.dart';
import 'package:angular_components/model/a11y/active_item_mixin.dart';
import 'package:angular_components/model/selection/selection_container.dart';
import 'package:angular_components/model/selection/selection_model.dart';
import 'package:angular_components/model/ui/has_renderer.dart';
import 'package:angular_components/utils/angular/properties/properties.dart';
import 'package:angular_components/utils/browser/dom_service/dom_service.dart';
import 'package:angular_components/utils/disposer/disposer.dart';
import 'package:intl/intl.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/button_decorator/button_decorator.template.dart' as _ref1;
import 'package:angular_components/dynamic_component/dynamic_component.template.dart' as _ref2;
import 'package:angular_components/glyph/glyph.template.dart' as _ref3;
import 'package:angular_components/material_checkbox/material_checkbox.template.dart' as _ref4;
import 'package:angular_components/material_select/activation_handler.template.dart' as _ref5;
import 'package:angular_components/mixins/material_dropdown_base.template.dart' as _ref6;
import 'package:angular_components/model/a11y/active_item_mixin.template.dart' as _ref7;
import 'package:angular_components/model/selection/selection_container.template.dart' as _ref8;
import 'package:angular_components/model/selection/selection_model.template.dart' as _ref9;
import 'package:angular_components/model/ui/has_renderer.template.dart' as _ref10;
import 'package:angular_components/utils/angular/properties/properties.template.dart' as _ref11;
import 'package:angular_components/utils/browser/dom_service/dom_service.template.dart' as _ref12;
import 'package:angular_components/utils/disposer/disposer.template.dart' as _ref13;

import 'package:angular_components/material_select/material_select_item.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/common/directives/ng_if.dart';
import 'package:angular/src/debug/debug_app_view.dart';
import 'material_select_item.dart' as import5;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import9;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'dart:html' as import11;
import 'package:angular/src/core/linker/app_view_utils.dart' as import12;
import 'package:angular/angular.dart';
import '../material_checkbox/material_checkbox.dart' as import14;
import '../material_checkbox/material_checkbox.template.dart' as import15;
import '../glyph/glyph.dart' as import16;
import '../glyph/glyph.template.dart' as import17;
import '../dynamic_component/dynamic_component.dart' as import18;
import '../dynamic_component/dynamic_component.template.dart' as import19;
import 'package:angular/src/core/linker/dynamic_component_loader.dart' as import20;
import '../model/selection/selection_container.dart' as import21;
import '../model/ui/has_renderer.dart' as import22;
import '../utils/browser/dom_service/dom_service.dart' as import23;
import '../mixins/material_dropdown_base.dart' as import24;
import 'activation_handler.dart' as import25;

const List<dynamic> styles$MaterialSelectItemComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialSelectItemComponent0 = [
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  null
];

class ViewMaterialSelectItemComponent0 extends DebugAppView<import5.MaterialSelectItemComponent> {
  ViewContainer _appEl_1;
  NgIf _NgIf_1_7;
  ViewContainer _appEl_3;
  NgIf _NgIf_3_7;
  ViewContainer _appEl_5;
  NgIf _NgIf_5_7;
  ViewContainer _appEl_7;
  NgIf _NgIf_7_7;
  var _expr_4;
  var _expr_5;
  bool _expr_6;
  bool _expr_7;
  bool _expr_8;
  bool _expr_9;
  bool _expr_10;
  static RenderComponentType _renderType;
  ViewMaterialSelectItemComponent0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialSelectItemComponent0) {
    rootEl = import11.document.createElement('material-select-item');
    createAttr(rootEl, 'role', 'option');
    this.rootEl.className = 'item';
    this.rootEl.tabIndex = 0;
    _renderType ??= import12.appViewUtils.createRenderType('package:angular_components/material_select/material_select_item.html', ViewEncapsulation.Emulated, styles$MaterialSelectItemComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import5.MaterialSelectItemComponent _ctx = ctx;
    final import11.HtmlElement parentRenderNode = initViewRoot(rootEl);
    import11.Text _text_0 = new import11.Text('\n');
    parentRenderNode.append(_text_0);
    dbgElm(this, _text_0, 0, 4, 3);
    var _anchor_1 = ngAnchor.clone(false);
    parentRenderNode.append(_anchor_1);
    dbgElm(this, _anchor_1, 1, 5, 0);
    _appEl_1 = new ViewContainer(1, null, this, _anchor_1);
    TemplateRef _TemplateRef_1_6 = new TemplateRef(_appEl_1, viewFactory_MaterialSelectItemComponent1);
    _NgIf_1_7 = new NgIf(_appEl_1, _TemplateRef_1_6);
    import11.Text _text_2 = new import11.Text('\n');
    parentRenderNode.append(_text_2);
    dbgElm(this, _text_2, 2, 8, 6);
    var _anchor_3 = ngAnchor.clone(false);
    parentRenderNode.append(_anchor_3);
    dbgElm(this, _anchor_3, 3, 9, 0);
    _appEl_3 = new ViewContainer(3, null, this, _anchor_3);
    TemplateRef _TemplateRef_3_6 = new TemplateRef(_appEl_3, viewFactory_MaterialSelectItemComponent2);
    _NgIf_3_7 = new NgIf(_appEl_3, _TemplateRef_3_6);
    import11.Text _text_4 = new import11.Text('\n');
    parentRenderNode.append(_text_4);
    dbgElm(this, _text_4, 4, 26, 11);
    var _anchor_5 = ngAnchor.clone(false);
    parentRenderNode.append(_anchor_5);
    dbgElm(this, _anchor_5, 5, 27, 0);
    _appEl_5 = new ViewContainer(5, null, this, _anchor_5);
    TemplateRef _TemplateRef_5_6 = new TemplateRef(_appEl_5, viewFactory_MaterialSelectItemComponent6);
    _NgIf_5_7 = new NgIf(_appEl_5, _TemplateRef_5_6);
    import11.Text _text_6 = new import11.Text('\n');
    parentRenderNode.append(_text_6);
    dbgElm(this, _text_6, 6, 27, 63);
    var _anchor_7 = ngAnchor.clone(false);
    parentRenderNode.append(_anchor_7);
    dbgElm(this, _anchor_7, 7, 28, 0);
    _appEl_7 = new ViewContainer(7, null, this, _anchor_7);
    TemplateRef _TemplateRef_7_6 = new TemplateRef(_appEl_7, viewFactory_MaterialSelectItemComponent7);
    _NgIf_7_7 = new NgIf(_appEl_7, _TemplateRef_7_6);
    import11.Text _text_8 = new import11.Text('\n');
    parentRenderNode.append(_text_8);
    dbgElm(this, _text_8, 8, 32, 20);
    dbg(null, 33, 0);
    project(parentRenderNode, 0);
    import11.Text _text_9 = new import11.Text('\n');
    parentRenderNode.append(_text_9);
    dbgElm(this, _text_9, 9, 33, 25);
    init(const [], const [], [_text_0, _anchor_1, _text_2, _anchor_3, _text_4, _anchor_5, _text_6, _anchor_7, _text_8, _text_9]);
    rootEl.addEventListener('click', eventHandler1(_ctx.handleClick));
    rootEl.addEventListener('keypress', eventHandler1(_ctx.handleKeyPress));
    rootEl.addEventListener('mouseenter', eventHandler0(_ctx.onMouseEnter));
    rootEl.addEventListener('mouseleave', eventHandler0(_ctx.onMouseLeave));
    return null;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialSelectItemComponent _ctx = ctx;
    dbg(1, 5, 5);
    _NgIf_1_7.ngIf = (!_ctx.supportsMultiSelect && _ctx.isSelected);
    dbg(3, 9, 10);
    _NgIf_3_7.ngIf = (_ctx.supportsMultiSelect && !_ctx.hideCheckbox);
    dbg(5, 27, 6);
    _NgIf_5_7.ngIf = _ctx.valueHasLabel;
    dbg(7, 28, 19);
    _NgIf_7_7.ngIf = (_ctx.componentType != null);
    _appEl_1.detectChangesInNestedViews();
    _appEl_3.detectChangesInNestedViews();
    _appEl_5.detectChangesInNestedViews();
    _appEl_7.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    _appEl_1.destroyNestedViews();
    _appEl_3.destroyNestedViews();
    _appEl_5.destroyNestedViews();
    _appEl_7.destroyNestedViews();
  }

  void detectHostChanges(bool firstCheck) {
    final currVal_4 = ctx.tabIndex;
    if (import12.checkBinding(_expr_4, currVal_4)) {
      setProp(rootEl, 'tabIndex', currVal_4);
      _expr_4 = currVal_4;
    }
    final currVal_5 = ctx.disabledStr;
    if (import12.checkBinding(_expr_5, currVal_5)) {
      setAttr(rootEl, 'aria-disabled', currVal_5?.toString());
      _expr_5 = currVal_5;
    }
    final currVal_6 = ctx.disabled;
    if (import12.checkBinding(_expr_6, currVal_6)) {
      updateElemClass(rootEl, 'is-disabled', currVal_6);
      _expr_6 = currVal_6;
    }
    final currVal_7 = ctx.active;
    if (import12.checkBinding(_expr_7, currVal_7)) {
      updateElemClass(rootEl, 'active', currVal_7);
      _expr_7 = currVal_7;
    }
    final currVal_8 = ctx.disabled;
    if (import12.checkBinding(_expr_8, currVal_8)) {
      updateElemClass(rootEl, 'disabled', currVal_8);
      _expr_8 = currVal_8;
    }
    final currVal_9 = ctx.isSelected;
    if (import12.checkBinding(_expr_9, currVal_9)) {
      updateElemClass(rootEl, 'selected', currVal_9);
      _expr_9 = currVal_9;
    }
    final currVal_10 = ctx.supportsMultiSelect;
    if (import12.checkBinding(_expr_10, currVal_10)) {
      updateElemClass(rootEl, 'multiselect', currVal_10);
      _expr_10 = currVal_10;
    }
  }
}

AppView<import5.MaterialSelectItemComponent> viewFactory_MaterialSelectItemComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialSelectItemComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialSelectItemComponent1 = [null, null];

class _ViewMaterialSelectItemComponent1 extends DebugAppView<import5.MaterialSelectItemComponent> {
  import11.DivElement _el_0;
  var _expr_0;
  _ViewMaterialSelectItemComponent1(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialSelectItemComponent1) {
    componentType = ViewMaterialSelectItemComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import11.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 5, 0);
    _el_0.className = 'selected-accent';
    addShimC(_el_0);
    import11.Text _text_1 = new import11.Text('\n');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 7, 40);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialSelectItemComponent _ctx = ctx;
    final currVal_0 = _ctx.selectedMessage;
    if (import12.checkBinding(_expr_0, currVal_0)) {
      setAttr(_el_0, 'aria-label', currVal_0?.toString());
      _expr_0 = currVal_0;
    }
  }
}

AppView<import5.MaterialSelectItemComponent> viewFactory_MaterialSelectItemComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialSelectItemComponent1(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialSelectItemComponent2 = [
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null
];

class _ViewMaterialSelectItemComponent2 extends DebugAppView<import5.MaterialSelectItemComponent> {
  ViewContainer _appEl_1;
  NgIf _NgIf_1_7;
  ViewContainer _appEl_3;
  NgIf _NgIf_3_7;
  _ViewMaterialSelectItemComponent2(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialSelectItemComponent2) {
    componentType = ViewMaterialSelectItemComponent0._renderType;
  }
  @override
  ComponentRef build() {
    import11.Text _text_0 = new import11.Text('\n  ');
    dbgElm(this, _text_0, 0, 9, 56);
    var _anchor_1 = ngAnchor.clone(false);
    dbgElm(this, _anchor_1, 1, 10, 2);
    _appEl_1 = new ViewContainer(1, null, this, _anchor_1);
    TemplateRef _TemplateRef_1_6 = new TemplateRef(_appEl_1, viewFactory_MaterialSelectItemComponent3);
    _NgIf_1_7 = new NgIf(_appEl_1, _TemplateRef_1_6);
    import11.Text _text_2 = new import11.Text('\n  ');
    dbgElm(this, _text_2, 2, 16, 22);
    var _anchor_3 = ngAnchor.clone(false);
    dbgElm(this, _anchor_3, 3, 17, 2);
    _appEl_3 = new ViewContainer(3, null, this, _anchor_3);
    TemplateRef _TemplateRef_3_6 = new TemplateRef(_appEl_3, viewFactory_MaterialSelectItemComponent4);
    _NgIf_3_7 = new NgIf(_appEl_3, _TemplateRef_3_6);
    import11.Text _text_4 = new import11.Text('\n');
    dbgElm(this, _text_4, 4, 25, 9);
    init([_text_0, _appEl_1, _text_2, _appEl_3, _text_4], const [], [_text_0, _anchor_1, _text_2, _anchor_3, _text_4]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialSelectItemComponent _ctx = ctx;
    dbg(1, 10, 21);
    _NgIf_1_7.ngIf = !_ctx.useCheckMarks;
    dbg(3, 17, 8);
    _NgIf_3_7.ngIf = _ctx.useCheckMarks;
    _appEl_1.detectChangesInNestedViews();
    _appEl_3.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    _appEl_1.destroyNestedViews();
    _appEl_3.destroyNestedViews();
  }
}

AppView<import5.MaterialSelectItemComponent> viewFactory_MaterialSelectItemComponent2(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialSelectItemComponent2(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialSelectItemComponent3 = [
  new StaticNodeDebugInfo([import14.MaterialCheckboxComponent], import14.MaterialCheckboxComponent, <String, dynamic>{}),
  null
];

class _ViewMaterialSelectItemComponent3 extends DebugAppView<import5.MaterialSelectItemComponent> {
  import11.Element _el_0;
  import15.ViewMaterialCheckboxComponent0 _compView_0;
  import14.MaterialCheckboxComponent _MaterialCheckboxComponent_0_4;
  var _expr_0;
  bool _expr_1;
  bool _expr_2;
  _ViewMaterialSelectItemComponent3(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialSelectItemComponent3) {
    componentType = ViewMaterialSelectItemComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import15.ViewMaterialCheckboxComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 10, 2);
    _el_0.tabIndex = -1;
    addShimC(_el_0);
    _MaterialCheckboxComponent_0_4 = new import14.MaterialCheckboxComponent(_el_0, _compView_0.ref, null, '-1', null);
    import11.Text _text_1 = new import11.Text('\n  ');
    dbgElm(this, _text_1, 1, 15, 62);
    _compView_0.create(_MaterialCheckboxComponent_0_4, [
      [_text_1]
    ]);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import14.MaterialCheckboxComponent) && ((0 <= nodeIndex) && (nodeIndex <= 1)))) {
      return _MaterialCheckboxComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialSelectItemComponent _ctx = ctx;
    bool changed = true;
    bool firstCheck = (this.cdState == 0);
    changed = false;
    dbg(0, 13, 6);
    final currVal_1 = _ctx.disabled;
    if (import12.checkBinding(_expr_1, currVal_1)) {
      _MaterialCheckboxComponent_0_4.disabled = currVal_1;
      changed = true;
      _expr_1 = currVal_1;
    }
    dbg(0, 12, 6);
    final currVal_2 = _ctx.isSelected;
    if (import12.checkBinding(_expr_2, currVal_2)) {
      _MaterialCheckboxComponent_0_4.checked = currVal_2;
      changed = true;
      _expr_2 = currVal_2;
    }
    if (changed) {
      _compView_0.markAsCheckOnce();
    }
    final currVal_0 = (_ctx.isSelected ? _ctx.selectedMessage : _ctx.notSelectedMessage);
    if (import12.checkBinding(_expr_0, currVal_0)) {
      setAttr(_el_0, 'aria-label', currVal_0?.toString());
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

AppView<import5.MaterialSelectItemComponent> viewFactory_MaterialSelectItemComponent3(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialSelectItemComponent3(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialSelectItemComponent4 = [
  null,
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null
];

class _ViewMaterialSelectItemComponent4 extends DebugAppView<import5.MaterialSelectItemComponent> {
  import11.Element _el_0;
  ViewContainer _appEl_2;
  NgIf _NgIf_2_7;
  var _expr_0;
  _ViewMaterialSelectItemComponent4(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialSelectItemComponent4) {
    componentType = ViewMaterialSelectItemComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import11.document;
    _el_0 = doc.createElement('span');
    dbgElm(this, _el_0, 0, 17, 2);
    _el_0.className = 'check-container';
    addShimE(_el_0);
    import11.Text _text_1 = new import11.Text('\n    ');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 19, 76);
    var _anchor_2 = ngAnchor.clone(false);
    _el_0.append(_anchor_2);
    dbgElm(this, _anchor_2, 2, 20, 4);
    _appEl_2 = new ViewContainer(2, 0, this, _anchor_2);
    TemplateRef _TemplateRef_2_6 = new TemplateRef(_appEl_2, viewFactory_MaterialSelectItemComponent5);
    _NgIf_2_7 = new NgIf(_appEl_2, _TemplateRef_2_6);
    import11.Text _text_3 = new import11.Text('\n  ');
    _el_0.append(_text_3);
    dbgElm(this, _text_3, 3, 24, 12);
    init([_el_0], const [], [_el_0, _text_1, _anchor_2, _text_3]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialSelectItemComponent _ctx = ctx;
    dbg(2, 20, 11);
    _NgIf_2_7.ngIf = _ctx.isSelected;
    _appEl_2.detectChangesInNestedViews();
    final currVal_0 = (_ctx.isSelected ? _ctx.selectedMessage : _ctx.notSelectedMessage);
    if (import12.checkBinding(_expr_0, currVal_0)) {
      setAttr(_el_0, 'aria-label', currVal_0?.toString());
      _expr_0 = currVal_0;
    }
  }

  @override
  void destroyInternal() {
    _appEl_2.destroyNestedViews();
  }
}

AppView<import5.MaterialSelectItemComponent> viewFactory_MaterialSelectItemComponent4(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialSelectItemComponent4(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialSelectItemComponent5 = [
  new StaticNodeDebugInfo([import16.GlyphComponent], import16.GlyphComponent, <String, dynamic>{}),
  null
];

class _ViewMaterialSelectItemComponent5 extends DebugAppView<import5.MaterialSelectItemComponent> {
  import11.Element _el_0;
  import17.ViewGlyphComponent0 _compView_0;
  import16.GlyphComponent _GlyphComponent_0_4;
  _ViewMaterialSelectItemComponent5(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialSelectItemComponent5) {
    componentType = ViewMaterialSelectItemComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import17.ViewGlyphComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 20, 4);
    createAttr(_el_0, 'baseline', '');
    _el_0.className = 'check';
    createAttr(_el_0, 'icon', 'check');
    addShimC(_el_0);
    _GlyphComponent_0_4 = new import16.GlyphComponent(_el_0);
    import11.Text _text_1 = new import11.Text('\n    ');
    dbgElm(this, _text_1, 1, 23, 21);
    _compView_0.create(_GlyphComponent_0_4, []);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import16.GlyphComponent) && ((0 <= nodeIndex) && (nodeIndex <= 1)))) {
      return _GlyphComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool changed = true;
    bool firstCheck = (this.cdState == 0);
    changed = false;
    if (firstCheck) {
      _GlyphComponent_0_4.icon = 'check';
      changed = true;
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

AppView<import5.MaterialSelectItemComponent> viewFactory_MaterialSelectItemComponent5(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialSelectItemComponent5(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialSelectItemComponent6 = [null, null];

class _ViewMaterialSelectItemComponent6 extends DebugAppView<import5.MaterialSelectItemComponent> {
  import11.Element _el_0;
  import11.Text _text_1;
  var _expr_0;
  _ViewMaterialSelectItemComponent6(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialSelectItemComponent6) {
    componentType = ViewMaterialSelectItemComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import11.document;
    _el_0 = doc.createElement('span');
    dbgElm(this, _el_0, 0, 27, 0);
    _el_0.className = 'label';
    addShimE(_el_0);
    _text_1 = new import11.Text('');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 27, 42);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialSelectItemComponent _ctx = ctx;
    dbg(1, 27, 42);
    final currVal_0 = (_ctx.valueLabel ?? '');
    if (import12.checkBinding(_expr_0, currVal_0)) {
      _text_1.text = currVal_0;
      _expr_0 = currVal_0;
    }
  }
}

AppView<import5.MaterialSelectItemComponent> viewFactory_MaterialSelectItemComponent6(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialSelectItemComponent6(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialSelectItemComponent7 = [
  new StaticNodeDebugInfo([import18.DynamicComponent], import18.DynamicComponent, <String, dynamic>{}),
  null
];

class _ViewMaterialSelectItemComponent7 extends DebugAppView<import5.MaterialSelectItemComponent> {
  import11.Element _el_0;
  import19.ViewDynamicComponent0 _compView_0;
  ViewContainer _appEl_0;
  import18.DynamicComponent _DynamicComponent_0_6;
  var _expr_0;
  var _expr_1;
  _ViewMaterialSelectItemComponent7(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialSelectItemComponent7) {
    componentType = ViewMaterialSelectItemComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import19.ViewDynamicComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 28, 0);
    _el_0.className = 'dynamic-item';
    addShimC(_el_0);
    _appEl_0 = new ViewContainer(0, null, this, _el_0);
    _DynamicComponent_0_6 = new import18.DynamicComponent(parentView.injectorGet(import20.SlowComponentLoader, viewData.parentIndex), _compView_0.ref, _appEl_0);
    import11.Text _text_1 = new import11.Text('\n');
    dbgElm(this, _text_1, 1, 31, 20);
    _compView_0.create(_DynamicComponent_0_6, []);
    init([_appEl_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import18.DynamicComponent) && ((0 <= nodeIndex) && (nodeIndex <= 1)))) {
      return _DynamicComponent_0_6;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialSelectItemComponent _ctx = ctx;
    dbg(0, 30, 4);
    final currVal_0 = _ctx.componentType;
    if (import12.checkBinding(_expr_0, currVal_0)) {
      _DynamicComponent_0_6.componentType = currVal_0;
      _expr_0 = currVal_0;
    }
    dbg(0, 31, 4);
    final currVal_1 = _ctx.value;
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
    dbg(0, 28, 0);
    _DynamicComponent_0_6.ngOnDestroy();
  }
}

AppView<import5.MaterialSelectItemComponent> viewFactory_MaterialSelectItemComponent7(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialSelectItemComponent7(parentView, parentIndex);
}

const List<dynamic> styles$MaterialSelectItemComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialSelectItemComponentHost0 = [
  new StaticNodeDebugInfo([import5.MaterialSelectItemComponent, import21.SelectionItem, import22.HasRenderer], import5.MaterialSelectItemComponent, <String, dynamic>{})
];

class _ViewMaterialSelectItemComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialSelectItemComponent0 _compView_0;
  import5.MaterialSelectItemComponent _MaterialSelectItemComponent_0_4;
  static RenderComponentType _renderType;
  _ViewMaterialSelectItemComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialSelectItemComponentHost0) {
    _renderType ??= import12.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialSelectItemComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialSelectItemComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _MaterialSelectItemComponent_0_4 = new import5.MaterialSelectItemComponent(rootEl, this.injectorGet(import23.DomService, viewData.parentIndex), this.injectorGet(import24.DropdownHandle, viewData.parentIndex, null), this.injectorGet(import25.ActivationHandler, viewData.parentIndex, null), _compView_0.ref);
    _compView_0.create(_MaterialSelectItemComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialSelectItemComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((((identical(token, import5.MaterialSelectItemComponent) || identical(token, import21.SelectionItem)) || identical(token, import22.HasRenderer)) && (0 == nodeIndex))) {
      return _MaterialSelectItemComponent_0_4;
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
    dbg(0, 0, 0);
    _MaterialSelectItemComponent_0_4.ngOnDestroy();
  }
}

AppView viewFactory_MaterialSelectItemComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialSelectItemComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialSelectItemComponentNgFactory = const ComponentFactory('material-select-item', viewFactory_MaterialSelectItemComponentHost0, import5.MaterialSelectItemComponent, _MaterialSelectItemComponentMetadata);
final ComponentFactory MaterialSelectItemComponentNgFactory = _MaterialSelectItemComponentNgFactory;
const _MaterialSelectItemComponentMetadata = const [];
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
  _ref11.initReflector();
  _ref12.initReflector();
  _ref13.initReflector();
  _ngRef.registerComponent(
    MaterialSelectItemComponent,
    MaterialSelectItemComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialSelectItemComponent,
    (HtmlElement p0, DomService p1, DropdownHandle p2, ActivationHandler p3, ChangeDetectorRef p4) => new MaterialSelectItemComponent(p0, p1, p2, p3, p4),
  );
  _ngRef.registerDependencies(
    MaterialSelectItemComponent,
    const [
      const [
        HtmlElement,
      ],
      const [
        DomService,
      ],
      const [
        DropdownHandle,
        const _ngRef.Optional(),
      ],
      const [
        ActivationHandler,
        const _ngRef.Optional(),
      ],
      const [
        ChangeDetectorRef,
      ],
    ],
  );
}
