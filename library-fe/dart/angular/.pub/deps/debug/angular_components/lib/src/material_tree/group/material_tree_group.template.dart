// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_tree_group.dart';
export 'material_tree_group.dart';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/button_decorator/button_decorator.dart';
import 'package:angular_components/dynamic_component/dynamic_component.dart';
import 'package:angular_components/focus/keyboard_only_focus_indicator.dart';
import 'package:angular_components/glyph/glyph.dart';
import 'package:angular_components/material_checkbox/material_checkbox.dart';
import 'package:angular_components/mixins/material_dropdown_base.dart';
import 'package:angular_components/src/material_tree/material_tree_node.dart';
import 'package:angular_components/src/material_tree/material_tree_root.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/button_decorator/button_decorator.template.dart' as _ref1;
import 'package:angular_components/dynamic_component/dynamic_component.template.dart' as _ref2;
import 'package:angular_components/focus/keyboard_only_focus_indicator.template.dart' as _ref3;
import 'package:angular_components/glyph/glyph.template.dart' as _ref4;
import 'package:angular_components/material_checkbox/material_checkbox.template.dart' as _ref5;
import 'package:angular_components/mixins/material_dropdown_base.template.dart' as _ref6;
import 'package:angular_components/src/material_tree/material_tree_node.template.dart' as _ref7;
import 'package:angular_components/src/material_tree/material_tree_root.template.dart' as _ref8;

import 'package:angular_components/src/material_tree/group/material_tree_group.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/common/directives/ng_for.dart' as import3;
import 'package:angular/src/debug/debug_app_view.dart';
import 'material_tree_group.dart' as import5;
import 'dart:html' as import6;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import10;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import12;
import 'package:angular/angular.dart';
import '../../../button_decorator/button_decorator.dart' as import14;
import '../../../focus/keyboard_only_focus_indicator.dart' as import15;
import 'package:angular/src/common/directives/ng_if.dart';
import '../../../button_decorator/button_decorator.template.dart' as import17;
import '../../../utils/browser/dom_service/dom_service.dart' as import18;
import '../../../material_checkbox/material_checkbox.dart' as import19;
import '../../../material_checkbox/material_checkbox.template.dart' as import20;
import '../../../glyph/glyph.dart' as import21;
import '../../../glyph/glyph.template.dart' as import22;
import '../../../dynamic_component/dynamic_component.dart' as import23;
import '../../../dynamic_component/dynamic_component.template.dart' as import24;
import 'package:angular/src/core/linker/dynamic_component_loader.dart' as import25;
import '../material_tree_root.dart' as import26;
import '../../../mixins/material_dropdown_base.dart' as import27;

const List<dynamic> styles$MaterialTreeGroupComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeGroupComponent0 = [
  null,
  new StaticNodeDebugInfo([TemplateRef, import3.NgFor], null, <String, dynamic>{})
];

class ViewMaterialTreeGroupComponent0 extends DebugAppView<import5.MaterialTreeGroupComponent> {
  import6.UListElement _el_0;
  ViewContainer _appEl_1;
  import3.NgFor _NgFor_1_7;
  var _expr_0;
  static RenderComponentType _renderType;
  ViewMaterialTreeGroupComponent0(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeGroupComponent0) {
    rootEl = import6.document.createElement('material-tree-group');
    createAttr(rootEl, 'role', 'group');
    _renderType ??= import12.appViewUtils.createRenderType('package:angular_components/src/material_tree/group/material_tree_group.html', ViewEncapsulation.Emulated, styles$MaterialTreeGroupComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import6.HtmlElement parentRenderNode = initViewRoot(rootEl);
    var doc = import6.document;
    _el_0 = createAndAppendDbg(this, doc, 'ul', parentRenderNode, 0, 5, 0);
    addShimC(_el_0);
    var _anchor_1 = ngAnchor.clone(false);
    _el_0.append(_anchor_1);
    dbgElm(this, _anchor_1, 1, 6, 2);
    _appEl_1 = new ViewContainer(1, 0, this, _anchor_1);
    TemplateRef _TemplateRef_1_6 = new TemplateRef(_appEl_1, viewFactory_MaterialTreeGroupComponent1);
    _NgFor_1_7 = new import3.NgFor(_appEl_1, _TemplateRef_1_6);
    init(const [], const [], [_el_0, _anchor_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialTreeGroupComponent _ctx = ctx;
    dbg(1, 6, 6);
    final currVal_0 = _ctx.group;
    if (import12.checkBinding(_expr_0, currVal_0)) {
      _NgFor_1_7.ngForOf = currVal_0;
      _expr_0 = currVal_0;
    }
    if (!import12.AppViewUtils.throwOnChanges) {
      _NgFor_1_7.ngDoCheck();
    }
    _appEl_1.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    _appEl_1.destroyNestedViews();
  }

  void detectHostChanges(bool firstCheck) {
    if (firstCheck) {
      if (!identical(ctx.isMaterialTreeGroup, null)) {
        updateElemClass(rootEl, 'material-tree-group', ctx.isMaterialTreeGroup);
      }
    }
  }
}

AppView<import5.MaterialTreeGroupComponent> viewFactory_MaterialTreeGroupComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialTreeGroupComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeGroupComponent1 = [
  new StaticNodeDebugInfo([import14.ButtonDirective, import15.KeyboardOnlyFocusIndicatorDirective], null, <String, dynamic>{}),
  null,
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, import3.NgFor], null, <String, dynamic>{})
];

class _ViewMaterialTreeGroupComponent1 extends DebugAppView<import5.MaterialTreeGroupComponent> {
  import6.Element _el_0;
  import17.ButtonDirectiveNgCd _ButtonDirective_0_4;
  import15.KeyboardOnlyFocusIndicatorDirective _KeyboardOnlyFocusIndicatorDirective_0_5;
  import6.DivElement _el_1;
  import6.DivElement _el_2;
  ViewContainer _appEl_3;
  NgIf _NgIf_3_7;
  import6.DivElement _el_4;
  ViewContainer _appEl_5;
  NgIf _NgIf_5_7;
  ViewContainer _appEl_6;
  NgIf _NgIf_6_7;
  ViewContainer _appEl_7;
  NgIf _NgIf_7_7;
  ViewContainer _appEl_8;
  import3.NgFor _NgFor_8_7;
  bool _expr_0;
  bool _expr_1;
  var _expr_2;
  var _expr_3;
  bool _expr_6;
  bool _expr_7;
  bool _expr_8;
  var _expr_12;
  _ViewMaterialTreeGroupComponent1(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.EMBEDDED, {'\$implicit': null}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeGroupComponent1) {
    componentType = ViewMaterialTreeGroupComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import6.document;
    _el_0 = doc.createElement('li');
    dbgElm(this, _el_0, 0, 6, 2);
    createAttr(_el_0, 'buttonDecorator', '');
    _el_0.className = 'material-tree-option';
    createAttr(_el_0, 'keyboardOnlyFocusIndicator', '');
    createAttr(_el_0, 'role', 'button');
    addShimE(_el_0);
    _ButtonDirective_0_4 = new import17.ButtonDirectiveNgCd(new import14.ButtonDirective(_el_0));
    _KeyboardOnlyFocusIndicatorDirective_0_5 = new import15.KeyboardOnlyFocusIndicatorDirective(_el_0, parentView.parentView.injectorGet(import18.DomService, parentView.viewData.parentIndex));
    _el_1 = createAndAppendDbg(this, doc, 'div', _el_0, 1, 13, 4);
    _el_1.className = 'material-tree-item';
    createAttr(_el_1, 'role', 'treeitem');
    addShimC(_el_1);
    _el_2 = createAndAppendDbg(this, doc, 'div', _el_1, 2, 17, 6);
    _el_2.className = 'material-tree-shift';
    addShimC(_el_2);
    var _anchor_3 = ngAnchor.clone(false);
    _el_2.append(_anchor_3);
    dbgElm(this, _anchor_3, 3, 19, 8);
    _appEl_3 = new ViewContainer(3, 2, this, _anchor_3);
    TemplateRef _TemplateRef_3_6 = new TemplateRef(_appEl_3, viewFactory_MaterialTreeGroupComponent2);
    _NgIf_3_7 = new NgIf(_appEl_3, _TemplateRef_3_6);
    _el_4 = createAndAppendDbg(this, doc, 'div', _el_2, 4, 35, 8);
    _el_4.className = 'material-tree-border';
    addShimC(_el_4);
    var _anchor_5 = ngAnchor.clone(false);
    _el_2.append(_anchor_5);
    dbgElm(this, _anchor_5, 5, 42, 8);
    _appEl_5 = new ViewContainer(5, 2, this, _anchor_5);
    TemplateRef _TemplateRef_5_6 = new TemplateRef(_appEl_5, viewFactory_MaterialTreeGroupComponent5);
    _NgIf_5_7 = new NgIf(_appEl_5, _TemplateRef_5_6);
    var _anchor_6 = ngAnchor.clone(false);
    _el_2.append(_anchor_6);
    dbgElm(this, _anchor_6, 6, 48, 8);
    _appEl_6 = new ViewContainer(6, 2, this, _anchor_6);
    TemplateRef _TemplateRef_6_6 = new TemplateRef(_appEl_6, viewFactory_MaterialTreeGroupComponent6);
    _NgIf_6_7 = new NgIf(_appEl_6, _TemplateRef_6_6);
    var _anchor_7 = ngAnchor.clone(false);
    _el_2.append(_anchor_7);
    dbgElm(this, _anchor_7, 7, 57, 8);
    _appEl_7 = new ViewContainer(7, 2, this, _anchor_7);
    TemplateRef _TemplateRef_7_6 = new TemplateRef(_appEl_7, viewFactory_MaterialTreeGroupComponent7);
    _NgIf_7_7 = new NgIf(_appEl_7, _TemplateRef_7_6);
    var _anchor_8 = ngAnchor.clone(false);
    _el_0.append(_anchor_8);
    dbgElm(this, _anchor_8, 8, 69, 4);
    _appEl_8 = new ViewContainer(8, 0, this, _anchor_8);
    TemplateRef _TemplateRef_8_6 = new TemplateRef(_appEl_8, viewFactory_MaterialTreeGroupComponent8);
    _NgFor_8_7 = new import3.NgFor(_appEl_8, _TemplateRef_8_6);
    _el_0.addEventListener('click', eventHandler1(_handle_click_0_1));
    _el_0.addEventListener('keypress', eventHandler1(_ButtonDirective_0_4.instance.handleKeyPress));
    _el_0.addEventListener('keyup', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_5.resetOutline));
    _el_0.addEventListener('blur', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_5.resetOutline));
    _el_0.addEventListener('mousedown', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_5.hideOutline));
    final subscription_0 = _ButtonDirective_0_4.instance.trigger.listen(eventHandler1(_handle_trigger_0_0));
    init([_el_0], [subscription_0], [_el_0, _el_1, _el_2, _anchor_3, _el_4, _anchor_5, _anchor_6, _anchor_7, _anchor_8]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import14.ButtonDirective) && ((0 <= nodeIndex) && (nodeIndex <= 8)))) {
      return _ButtonDirective_0_4.instance;
    }
    if ((identical(token, import15.KeyboardOnlyFocusIndicatorDirective) && ((0 <= nodeIndex) && (nodeIndex <= 8)))) {
      return _KeyboardOnlyFocusIndicatorDirective_0_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialTreeGroupComponent _ctx = ctx;
    bool firstCheck = (this.cdState == 0);
    dbg(3, 20, 10);
    _NgIf_3_7.ngIf = _ctx.showCheckbox(locals['\$implicit']);
    dbg(5, 43, 10);
    _NgIf_5_7.ngIf = _ctx.useComponentRenderer;
    dbg(6, 49, 10);
    _NgIf_6_7.ngIf = !_ctx.useComponentRenderer;
    dbg(7, 58, 10);
    _NgIf_7_7.ngIf = _ctx.hasChildren(locals['\$implicit']);
    dbg(8, 70, 12);
    final currVal_12 = _ctx.getChildGroups(locals['\$implicit']);
    if (import12.checkBinding(_expr_12, currVal_12)) {
      _NgFor_8_7.ngForOf = currVal_12;
      _expr_12 = currVal_12;
    }
    if (!import12.AppViewUtils.throwOnChanges) {
      _NgFor_8_7.ngDoCheck();
    }
    _appEl_3.detectChangesInNestedViews();
    _appEl_5.detectChangesInNestedViews();
    _appEl_6.detectChangesInNestedViews();
    _appEl_7.detectChangesInNestedViews();
    _appEl_8.detectChangesInNestedViews();
    final currVal_0 = _ctx.isSelected(locals['\$implicit']);
    if (import12.checkBinding(_expr_0, currVal_0)) {
      updateClass(_el_0, 'selected', currVal_0);
      _expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.isSelectable(locals['\$implicit']);
    if (import12.checkBinding(_expr_1, currVal_1)) {
      updateClass(_el_0, 'selectable', currVal_1);
      _expr_1 = currVal_1;
    }
    _ButtonDirective_0_4.detectHostChanges(this, _el_0, firstCheck);
    final currVal_2 = _ctx.getIndent(locals['\$implicit']);
    if (import12.checkBinding(_expr_2, currVal_2)) {
      _el_1.style.setProperty('padding-left', currVal_2?.toString());
      _expr_2 = currVal_2;
    }
    final currVal_3 = import12.interpolate0(_ctx.isSelected(locals['\$implicit']));
    if (import12.checkBinding(_expr_3, currVal_3)) {
      setAttr(_el_1, 'aria-selected', currVal_3?.toString());
      _expr_3 = currVal_3;
    }
    if (firstCheck) {
      if (!identical(_ctx.fixedPadding, null)) {
        _el_2.style.setProperty('padding-left', _ctx.fixedPadding?.toString());
      }
    }
    final currVal_6 = _ctx.hasChildren(locals['\$implicit']);
    if (import12.checkBinding(_expr_6, currVal_6)) {
      updateClass(_el_4, 'is-parent', currVal_6);
      _expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.isExpanded(locals['\$implicit']);
    if (import12.checkBinding(_expr_7, currVal_7)) {
      updateClass(_el_4, 'is-expanded', currVal_7);
      _expr_7 = currVal_7;
    }
    final currVal_8 = (_ctx.level == 0);
    if (import12.checkBinding(_expr_8, currVal_8)) {
      updateClass(_el_4, 'root-border', currVal_8);
      _expr_8 = currVal_8;
    }
  }

  @override
  void destroyInternal() {
    _appEl_3.destroyNestedViews();
    _appEl_5.destroyNestedViews();
    _appEl_6.destroyNestedViews();
    _appEl_7.destroyNestedViews();
    _appEl_8.destroyNestedViews();
  }

  void _handle_trigger_0_0($event) {
    dbg(0, 9, 6);
    ctx.handleSelectionOrExpansion($event, locals['\$implicit']);
  }

  void _handle_click_0_1($event) {
    dbg(0, 6, 2);
    _ButtonDirective_0_4.instance.handleClick($event);
    _KeyboardOnlyFocusIndicatorDirective_0_5.hideOutline();
  }
}

AppView<import5.MaterialTreeGroupComponent> viewFactory_MaterialTreeGroupComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeGroupComponent1(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeGroupComponent2 = [
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{})
];

class _ViewMaterialTreeGroupComponent2 extends DebugAppView<import5.MaterialTreeGroupComponent> {
  import6.DivElement _el_0;
  ViewContainer _appEl_1;
  NgIf _NgIf_1_7;
  ViewContainer _appEl_2;
  NgIf _NgIf_2_7;
  _ViewMaterialTreeGroupComponent2(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeGroupComponent2) {
    componentType = ViewMaterialTreeGroupComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import6.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 19, 8);
    _el_0.className = 'tree-selection-state';
    addShimC(_el_0);
    var _anchor_1 = ngAnchor.clone(false);
    _el_0.append(_anchor_1);
    dbgElm(this, _anchor_1, 1, 22, 10);
    _appEl_1 = new ViewContainer(1, 0, this, _anchor_1);
    TemplateRef _TemplateRef_1_6 = new TemplateRef(_appEl_1, viewFactory_MaterialTreeGroupComponent3);
    _NgIf_1_7 = new NgIf(_appEl_1, _TemplateRef_1_6);
    var _anchor_2 = ngAnchor.clone(false);
    _el_0.append(_anchor_2);
    dbgElm(this, _anchor_2, 2, 29, 10);
    _appEl_2 = new ViewContainer(2, 0, this, _anchor_2);
    TemplateRef _TemplateRef_2_6 = new TemplateRef(_appEl_2, viewFactory_MaterialTreeGroupComponent4);
    _NgIf_2_7 = new NgIf(_appEl_2, _TemplateRef_2_6);
    init([_el_0], const [], [_el_0, _anchor_1, _anchor_2]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialTreeGroupComponent _ctx = ctx;
    dbg(1, 23, 12);
    _NgIf_1_7.ngIf = _ctx.isMultiSelect;
    dbg(2, 30, 14);
    _NgIf_2_7.ngIf = (!_ctx.isMultiSelect && _ctx.isSelected(parentView.locals['\$implicit']));
    _appEl_1.detectChangesInNestedViews();
    _appEl_2.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    _appEl_1.destroyNestedViews();
    _appEl_2.destroyNestedViews();
  }
}

AppView<import5.MaterialTreeGroupComponent> viewFactory_MaterialTreeGroupComponent2(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeGroupComponent2(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeGroupComponent3 = [
  new StaticNodeDebugInfo([import19.MaterialCheckboxComponent], import19.MaterialCheckboxComponent, <String, dynamic>{})
];

class _ViewMaterialTreeGroupComponent3 extends DebugAppView<import5.MaterialTreeGroupComponent> {
  import6.Element _el_0;
  import20.ViewMaterialCheckboxComponent0 _compView_0;
  import19.MaterialCheckboxComponent _MaterialCheckboxComponent_0_4;
  bool _expr_0;
  bool _expr_2;
  _ViewMaterialTreeGroupComponent3(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeGroupComponent3) {
    componentType = ViewMaterialTreeGroupComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import20.ViewMaterialCheckboxComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 22, 10);
    _el_0.className = 'tree-selection-state themeable';
    addShimC(_el_0);
    _MaterialCheckboxComponent_0_4 = new import19.MaterialCheckboxComponent(_el_0, _compView_0.ref, null, null, null);
    _compView_0.create(_MaterialCheckboxComponent_0_4, [const []]);
    init([_el_0], const [], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import19.MaterialCheckboxComponent) && (0 == nodeIndex))) {
      return _MaterialCheckboxComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialTreeGroupComponent _ctx = ctx;
    bool changed = true;
    bool firstCheck = (this.cdState == 0);
    changed = false;
    if (firstCheck) {
      _MaterialCheckboxComponent_0_4.readOnly = true;
      changed = true;
    }
    dbg(0, 27, 12);
    final currVal_0 = (_ctx.isReadOnly || _ctx.showDisabledCheckbox(parentView.parentView.locals['\$implicit']));
    if (import12.checkBinding(_expr_0, currVal_0)) {
      _MaterialCheckboxComponent_0_4.disabled = currVal_0;
      changed = true;
      _expr_0 = currVal_0;
    }
    dbg(0, 26, 12);
    final currVal_2 = _ctx.isSelected(parentView.parentView.locals['\$implicit']);
    if (import12.checkBinding(_expr_2, currVal_2)) {
      _MaterialCheckboxComponent_0_4.checked = currVal_2;
      changed = true;
      _expr_2 = currVal_2;
    }
    if (changed) {
      _compView_0.markAsCheckOnce();
    }
    _compView_0.detectHostChanges(firstCheck);
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
  }
}

AppView<import5.MaterialTreeGroupComponent> viewFactory_MaterialTreeGroupComponent3(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeGroupComponent3(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeGroupComponent4 = [
  new StaticNodeDebugInfo([import21.GlyphComponent], import21.GlyphComponent, <String, dynamic>{})
];

class _ViewMaterialTreeGroupComponent4 extends DebugAppView<import5.MaterialTreeGroupComponent> {
  import6.Element _el_0;
  import22.ViewGlyphComponent0 _compView_0;
  import21.GlyphComponent _GlyphComponent_0_4;
  _ViewMaterialTreeGroupComponent4(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeGroupComponent4) {
    componentType = ViewMaterialTreeGroupComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import22.ViewGlyphComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 29, 10);
    _el_0.className = 'tree-selection-state';
    createAttr(_el_0, 'icon', 'check');
    addShimC(_el_0);
    _GlyphComponent_0_4 = new import21.GlyphComponent(_el_0);
    _compView_0.create(_GlyphComponent_0_4, []);
    init([_el_0], const [], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import21.GlyphComponent) && (0 == nodeIndex))) {
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

AppView<import5.MaterialTreeGroupComponent> viewFactory_MaterialTreeGroupComponent4(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeGroupComponent4(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeGroupComponent5 = [
  new StaticNodeDebugInfo([import23.DynamicComponent], import23.DynamicComponent, <String, dynamic>{})
];

class _ViewMaterialTreeGroupComponent5 extends DebugAppView<import5.MaterialTreeGroupComponent> {
  import6.Element _el_0;
  import24.ViewDynamicComponent0 _compView_0;
  ViewContainer _appEl_0;
  import23.DynamicComponent _DynamicComponent_0_6;
  var _expr_0;
  var _expr_1;
  _ViewMaterialTreeGroupComponent5(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeGroupComponent5) {
    componentType = ViewMaterialTreeGroupComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import24.ViewDynamicComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 42, 8);
    _el_0.className = 'item component';
    addShimC(_el_0);
    _appEl_0 = new ViewContainer(0, null, this, _el_0);
    _DynamicComponent_0_6 = new import23.DynamicComponent(parentView.parentView.parentView.injectorGet(import25.SlowComponentLoader, parentView.parentView.viewData.parentIndex), _compView_0.ref, _appEl_0);
    _compView_0.create(_DynamicComponent_0_6, []);
    init([_appEl_0], const [], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import23.DynamicComponent) && (0 == nodeIndex))) {
      return _DynamicComponent_0_6;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialTreeGroupComponent _ctx = ctx;
    dbg(0, 45, 10);
    final currVal_0 = _ctx.getComponentType(parentView.locals['\$implicit']);
    if (import12.checkBinding(_expr_0, currVal_0)) {
      _DynamicComponent_0_6.componentType = currVal_0;
      _expr_0 = currVal_0;
    }
    dbg(0, 46, 10);
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
    dbg(0, 42, 8);
    _DynamicComponent_0_6.ngOnDestroy();
  }
}

AppView<import5.MaterialTreeGroupComponent> viewFactory_MaterialTreeGroupComponent5(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeGroupComponent5(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeGroupComponent6 = [null, null];

class _ViewMaterialTreeGroupComponent6 extends DebugAppView<import5.MaterialTreeGroupComponent> {
  import6.Element _el_0;
  import6.Text _text_1;
  bool _expr_0;
  bool _expr_1;
  var _expr_2;
  _ViewMaterialTreeGroupComponent6(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeGroupComponent6) {
    componentType = ViewMaterialTreeGroupComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import6.document;
    _el_0 = doc.createElement('span');
    dbgElm(this, _el_0, 0, 48, 8);
    _el_0.className = 'text';
    addShimE(_el_0);
    _text_1 = new import6.Text('');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 52, 63);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialTreeGroupComponent _ctx = ctx;
    final bool currVal_0 = !_ctx.showDisabledCheckbox(parentView.locals['\$implicit']);
    if (import12.checkBinding(_expr_0, currVal_0)) {
      updateClass(_el_0, 'item', currVal_0);
      _expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.showDisabledCheckbox(parentView.locals['\$implicit']);
    if (import12.checkBinding(_expr_1, currVal_1)) {
      updateClass(_el_0, 'disabled-item', currVal_1);
      _expr_1 = currVal_1;
    }
    dbg(1, 52, 63);
    final currVal_2 = import12.interpolate0(_ctx.getOptionAsText(parentView.locals['\$implicit']));
    if (import12.checkBinding(_expr_2, currVal_2)) {
      _text_1.text = currVal_2;
      _expr_2 = currVal_2;
    }
  }
}

AppView<import5.MaterialTreeGroupComponent> viewFactory_MaterialTreeGroupComponent6(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeGroupComponent6(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeGroupComponent7 = [
  new StaticNodeDebugInfo([import14.ButtonDirective, import21.GlyphComponent], import21.GlyphComponent, <String, dynamic>{})
];

class _ViewMaterialTreeGroupComponent7 extends DebugAppView<import5.MaterialTreeGroupComponent> {
  import6.Element _el_0;
  import22.ViewGlyphComponent0 _compView_0;
  import17.ButtonDirectiveNgCd _ButtonDirective_0_4;
  import21.GlyphComponent _GlyphComponent_0_5;
  bool _expr_0;
  var _expr_1;
  _ViewMaterialTreeGroupComponent7(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeGroupComponent7) {
    componentType = ViewMaterialTreeGroupComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import22.ViewGlyphComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 57, 8);
    createAttr(_el_0, 'buttonDecorator', '');
    _el_0.className = 'tree-expansion-state';
    createAttr(_el_0, 'role', 'button');
    addShimC(_el_0);
    _ButtonDirective_0_4 = new import17.ButtonDirectiveNgCd(new import14.ButtonDirective(_el_0));
    _GlyphComponent_0_5 = new import21.GlyphComponent(_el_0);
    _compView_0.create(_GlyphComponent_0_5, []);
    _el_0.addEventListener('click', eventHandler1(_ButtonDirective_0_4.instance.handleClick));
    _el_0.addEventListener('keypress', eventHandler1(_ButtonDirective_0_4.instance.handleKeyPress));
    final subscription_0 = _ButtonDirective_0_4.instance.trigger.listen(eventHandler1(_handle_trigger_0_0));
    init([_el_0], [subscription_0], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import14.ButtonDirective) && (0 == nodeIndex))) {
      return _ButtonDirective_0_4.instance;
    }
    if ((identical(token, import21.GlyphComponent) && (0 == nodeIndex))) {
      return _GlyphComponent_0_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialTreeGroupComponent _ctx = ctx;
    bool changed = true;
    bool firstCheck = (this.cdState == 0);
    changed = false;
    dbg(0, 62, 10);
    final currVal_1 = (_ctx.isExpanded(parentView.locals['\$implicit']) ? 'expand_less' : 'expand_more');
    if (import12.checkBinding(_expr_1, currVal_1)) {
      _GlyphComponent_0_5.icon = currVal_1;
      changed = true;
      _expr_1 = currVal_1;
    }
    if (changed) {
      _compView_0.markAsCheckOnce();
    }
    final currVal_0 = _ctx.isExpanded(parentView.locals['\$implicit']);
    if (import12.checkBinding(_expr_0, currVal_0)) {
      updateElemClass(_el_0, 'expanded', currVal_0);
      _expr_0 = currVal_0;
    }
    _ButtonDirective_0_4.detectHostChanges(_compView_0, _el_0, firstCheck);
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
  }

  void _handle_trigger_0_0($event) {
    dbg(0, 63, 10);
    ctx.handleExpansion($event, parentView.locals['\$implicit']);
  }
}

AppView<import5.MaterialTreeGroupComponent> viewFactory_MaterialTreeGroupComponent7(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeGroupComponent7(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeGroupComponent8 = [
  new StaticNodeDebugInfo([import5.MaterialTreeGroupComponent], import5.MaterialTreeGroupComponent, <String, dynamic>{})
];

class _ViewMaterialTreeGroupComponent8 extends DebugAppView<import5.MaterialTreeGroupComponent> {
  import6.Element _el_0;
  ViewMaterialTreeGroupComponent0 _compView_0;
  import5.MaterialTreeGroupComponent _MaterialTreeGroupComponent_0_4;
  var _expr_0;
  int _expr_1;
  bool _expr_2;
  bool _expr_3;
  _ViewMaterialTreeGroupComponent8(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.EMBEDDED, {'\$implicit': null}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeGroupComponent8) {
    componentType = ViewMaterialTreeGroupComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialTreeGroupComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 69, 4);
    _el_0.className = 'child-tree';
    addShimC(_el_0);
    _MaterialTreeGroupComponent_0_4 = new import5.MaterialTreeGroupComponent(parentView.parentView.parentView.injectorGet(import26.MaterialTreeRoot, parentView.parentView.viewData.parentIndex), _compView_0.ref, parentView.parentView.parentView.injectorGet(import27.DropdownHandle, parentView.parentView.viewData.parentIndex, null), parentView.parentView.parentView.injectorGet(const OpaqueToken('MaterialTreeGroupComponent_materialTreeLeftPaddingToken'), parentView.parentView.viewData.parentIndex, null));
    _compView_0.create(_MaterialTreeGroupComponent_0_4, []);
    init([_el_0], const [], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import5.MaterialTreeGroupComponent) && (0 == nodeIndex))) {
      return _MaterialTreeGroupComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialTreeGroupComponent _ctx = ctx;
    bool firstCheck = (this.cdState == 0);
    dbg(0, 73, 12);
    final currVal_0 = locals['\$implicit'];
    if (import12.checkBinding(_expr_0, currVal_0)) {
      _MaterialTreeGroupComponent_0_4.group = currVal_0;
      _expr_0 = currVal_0;
    }
    dbg(0, 74, 12);
    final currVal_1 = (_ctx.level + 1);
    if (import12.checkBinding(_expr_1, currVal_1)) {
      _MaterialTreeGroupComponent_0_4.level = currVal_1;
      _expr_1 = currVal_1;
    }
    dbg(0, 75, 12);
    final currVal_2 = _ctx.showCheckbox(parentView.locals['\$implicit']);
    if (import12.checkBinding(_expr_2, currVal_2)) {
      _MaterialTreeGroupComponent_0_4.parentHasCheckbox = currVal_2;
      _expr_2 = currVal_2;
    }
    dbg(0, 72, 12);
    final currVal_3 = _ctx.expandAll;
    if (import12.checkBinding(_expr_3, currVal_3)) {
      _MaterialTreeGroupComponent_0_4.expandAll = currVal_3;
      _expr_3 = currVal_3;
    }
    _compView_0.detectHostChanges(firstCheck);
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
    dbg(0, 69, 4);
    _MaterialTreeGroupComponent_0_4.ngOnDestroy();
  }
}

AppView<import5.MaterialTreeGroupComponent> viewFactory_MaterialTreeGroupComponent8(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeGroupComponent8(parentView, parentIndex);
}

const List<dynamic> styles$MaterialTreeGroupComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeGroupComponentHost0 = [
  new StaticNodeDebugInfo([import5.MaterialTreeGroupComponent], import5.MaterialTreeGroupComponent, <String, dynamic>{})
];

class _ViewMaterialTreeGroupComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialTreeGroupComponent0 _compView_0;
  import5.MaterialTreeGroupComponent _MaterialTreeGroupComponent_0_4;
  static RenderComponentType _renderType;
  _ViewMaterialTreeGroupComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeGroupComponentHost0) {
    _renderType ??= import12.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialTreeGroupComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialTreeGroupComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _MaterialTreeGroupComponent_0_4 = new import5.MaterialTreeGroupComponent(this.injectorGet(import26.MaterialTreeRoot, viewData.parentIndex), _compView_0.ref, this.injectorGet(import27.DropdownHandle, viewData.parentIndex, null), this.injectorGet(const OpaqueToken('MaterialTreeGroupComponent_materialTreeLeftPaddingToken'), viewData.parentIndex, null));
    _compView_0.create(_MaterialTreeGroupComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialTreeGroupComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import5.MaterialTreeGroupComponent) && (0 == nodeIndex))) {
      return _MaterialTreeGroupComponent_0_4;
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
    _MaterialTreeGroupComponent_0_4.ngOnDestroy();
  }
}

AppView viewFactory_MaterialTreeGroupComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeGroupComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialTreeGroupComponentNgFactory = const ComponentFactory('material-tree-group', viewFactory_MaterialTreeGroupComponentHost0, import5.MaterialTreeGroupComponent, _MaterialTreeGroupComponentMetadata);
final ComponentFactory MaterialTreeGroupComponentNgFactory = _MaterialTreeGroupComponentNgFactory;
const _MaterialTreeGroupComponentMetadata = const [];
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
    MaterialTreeGroupComponent,
    MaterialTreeGroupComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialTreeGroupComponent,
    (MaterialTreeRoot p0, ChangeDetectorRef p1, DropdownHandle p2, int p3) => new MaterialTreeGroupComponent(p0, p1, p2, p3),
  );
  _ngRef.registerDependencies(
    MaterialTreeGroupComponent,
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
      const [
        const _ngRef.Inject(const _ngRef.OpaqueToken(r'MaterialTreeGroupComponent_materialTreeLeftPaddingToken')),
        const _ngRef.Optional(),
      ],
    ],
  );
}
