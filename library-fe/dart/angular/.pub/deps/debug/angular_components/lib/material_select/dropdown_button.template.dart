// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'dropdown_button.dart';
export 'dropdown_button.dart';
import 'dart:async';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/button_decorator/button_decorator.dart';
import 'package:angular_components/focus/keyboard_only_focus_indicator.dart';
import 'package:angular_components/glyph/glyph.dart';
import 'package:angular_components/mixins/button_wrapper.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/button_decorator/button_decorator.template.dart' as _ref1;
import 'package:angular_components/focus/keyboard_only_focus_indicator.template.dart' as _ref2;
import 'package:angular_components/glyph/glyph.template.dart' as _ref3;
import 'package:angular_components/mixins/button_wrapper.template.dart' as _ref4;

import 'package:angular_components/button_decorator/button_decorator.scss.css.shim.dart' as import0;
import 'package:angular_components/material_select/dropdown_button.scss.css.shim.dart' as import1;
import 'package:angular/src/debug/debug_context.dart';
import '../button_decorator/button_decorator.dart' as import3;
import '../focus/keyboard_only_focus_indicator.dart' as import4;
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/common/directives/ng_if.dart';
import 'package:angular/src/debug/debug_app_view.dart';
import 'dropdown_button.dart' as import8;
import 'package:angular/src/core/linker/query_list.dart' as import9;
import 'dart:html' as import10;
import '../button_decorator/button_decorator.template.dart' as import11;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import15;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import17;
import 'package:angular/angular.dart';
import '../utils/browser/dom_service/dom_service.dart' as import19;
import '../glyph/glyph.dart' as import20;
import '../glyph/glyph.template.dart' as import21;

const List<dynamic> styles$DropdownButtonComponent = const [import0.styles, import1.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_DropdownButtonComponent0 = [
  null,
  new StaticNodeDebugInfo([import3.ButtonDirective, import4.KeyboardOnlyFocusIndicatorDirective], null, <String, dynamic>{}),
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null
];

class ViewDropdownButtonComponent0 extends DebugAppView<import8.DropdownButtonComponent> {
  import9.QueryList _viewQuery_ButtonDirective_0;
  import10.DivElement _el_1;
  import11.ButtonDirectiveNgCd _ButtonDirective_1_4;
  import4.KeyboardOnlyFocusIndicatorDirective _KeyboardOnlyFocusIndicatorDirective_1_5;
  ViewContainer _appEl_3;
  NgIf _NgIf_3_7;
  ViewContainer _appEl_6;
  NgIf _NgIf_6_7;
  ViewContainer _appEl_9;
  NgIf _NgIf_9_7;
  var _expr_0;
  bool _expr_1;
  bool _expr_2;
  bool _expr_3;
  static RenderComponentType _renderType;
  ViewDropdownButtonComponent0(AppView<dynamic> parentView, num parentIndex) : super(import15.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckOnce, nodeDebugInfos_DropdownButtonComponent0) {
    rootEl = import10.document.createElement('dropdown-button');
    _renderType ??= import17.appViewUtils.createRenderType('package:angular_components/material_select/dropdown_button.html', ViewEncapsulation.Emulated, styles$DropdownButtonComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import10.HtmlElement parentRenderNode = initViewRoot(rootEl);
    _viewQuery_ButtonDirective_0 = new import9.QueryList();
    import10.Text _text_0 = new import10.Text('\n');
    parentRenderNode.append(_text_0);
    dbgElm(this, _text_0, 0, 4, 3);
    var doc = import10.document;
    _el_1 = createAndAppendDbg(this, doc, 'div', parentRenderNode, 1, 5, 0);
    createAttr(_el_1, 'buttonDecorator', '');
    _el_1.className = 'button';
    createAttr(_el_1, 'keyboardOnlyFocusIndicator', '');
    createAttr(_el_1, 'role', 'button');
    addShimC(_el_1);
    _ButtonDirective_1_4 = new import11.ButtonDirectiveNgCd(new import3.ButtonDirective(_el_1));
    _KeyboardOnlyFocusIndicatorDirective_1_5 = new import4.KeyboardOnlyFocusIndicatorDirective(_el_1, parentView.injectorGet(import19.DomService, viewData.parentIndex));
    import10.Text _text_2 = new import10.Text('\n  ');
    _el_1.append(_text_2);
    dbgElm(this, _text_2, 2, 13, 27);
    var _anchor_3 = ngAnchor.clone(false);
    _el_1.append(_anchor_3);
    dbgElm(this, _anchor_3, 3, 14, 2);
    _appEl_3 = new ViewContainer(3, 1, this, _anchor_3);
    TemplateRef _TemplateRef_3_6 = new TemplateRef(_appEl_3, viewFactory_DropdownButtonComponent1);
    _NgIf_3_7 = new NgIf(_appEl_3, _TemplateRef_3_6);
    import10.Text _text_4 = new import10.Text('\n  ');
    _el_1.append(_text_4);
    dbgElm(this, _text_4, 4, 14, 76);
    dbg(null, 15, 2);
    project(_el_1, 0);
    import10.Text _text_5 = new import10.Text('\n  ');
    _el_1.append(_text_5);
    dbgElm(this, _text_5, 5, 15, 27);
    var _anchor_6 = ngAnchor.clone(false);
    _el_1.append(_anchor_6);
    dbgElm(this, _anchor_6, 6, 16, 2);
    _appEl_6 = new ViewContainer(6, 1, this, _anchor_6);
    TemplateRef _TemplateRef_6_6 = new TemplateRef(_appEl_6, viewFactory_DropdownButtonComponent2);
    _NgIf_6_7 = new NgIf(_appEl_6, _TemplateRef_6_6);
    import10.Text _text_7 = new import10.Text('\n');
    _el_1.append(_text_7);
    dbgElm(this, _text_7, 7, 18, 37);
    import10.Text _text_8 = new import10.Text('\n');
    parentRenderNode.append(_text_8);
    dbgElm(this, _text_8, 8, 19, 6);
    var _anchor_9 = ngAnchor.clone(false);
    parentRenderNode.append(_anchor_9);
    dbgElm(this, _anchor_9, 9, 20, 0);
    _appEl_9 = new ViewContainer(9, null, this, _anchor_9);
    TemplateRef _TemplateRef_9_6 = new TemplateRef(_appEl_9, viewFactory_DropdownButtonComponent3);
    _NgIf_9_7 = new NgIf(_appEl_9, _TemplateRef_9_6);
    import10.Text _text_10 = new import10.Text('\n');
    parentRenderNode.append(_text_10);
    dbgElm(this, _text_10, 10, 26, 6);
    _el_1.addEventListener('focus', eventHandler1(ctx.onFocus));
    _el_1.addEventListener('blur', eventHandler1(_handle_blur_1_1));
    _el_1.addEventListener('click', eventHandler1(_handle_click_1_2));
    _el_1.addEventListener('keypress', eventHandler1(_ButtonDirective_1_4.instance.handleKeyPress));
    _el_1.addEventListener('keyup', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_1_5.resetOutline));
    _el_1.addEventListener('mousedown', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_1_5.hideOutline));
    _viewQuery_ButtonDirective_0.reset([_ButtonDirective_1_4.instance]);
    ctx.button = _viewQuery_ButtonDirective_0.first;
    init(const [], const [], [_text_0, _el_1, _text_2, _anchor_3, _text_4, _text_5, _anchor_6, _text_7, _text_8, _anchor_9, _text_10]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import3.ButtonDirective) && ((1 <= nodeIndex) && (nodeIndex <= 7)))) {
      return _ButtonDirective_1_4.instance;
    }
    if ((identical(token, import4.KeyboardOnlyFocusIndicatorDirective) && ((1 <= nodeIndex) && (nodeIndex <= 7)))) {
      return _KeyboardOnlyFocusIndicatorDirective_1_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import8.DropdownButtonComponent _ctx = ctx;
    bool firstCheck = (this.cdState == 0);
    dbg(1, 13, 5);
    final currVal_3 = _ctx.disabled;
    if (import17.checkBinding(_expr_3, currVal_3)) {
      _ButtonDirective_1_4.instance.disabled = currVal_3;
      _expr_3 = currVal_3;
    }
    dbg(3, 14, 28);
    _NgIf_3_7.ngIf = (_ctx.buttonText != null);
    dbg(6, 16, 9);
    _NgIf_6_7.ngIf = (_ctx.buttonIcon != null);
    dbg(9, 24, 5);
    _NgIf_9_7.ngIf = _ctx.invalid;
    _appEl_3.detectChangesInNestedViews();
    _appEl_6.detectChangesInNestedViews();
    _appEl_9.detectChangesInNestedViews();
    final currVal_0 = _ctx.buttonAriaLabel;
    if (import17.checkBinding(_expr_0, currVal_0)) {
      setAttr(_el_1, 'aria-label', currVal_0?.toString());
      _expr_0 = currVal_0;
    }
    final currVal_1 = (_ctx.buttonText != null);
    if (import17.checkBinding(_expr_1, currVal_1)) {
      updateClass(_el_1, 'border', currVal_1);
      _expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.invalid;
    if (import17.checkBinding(_expr_2, currVal_2)) {
      updateClass(_el_1, 'invalid', currVal_2);
      _expr_2 = currVal_2;
    }
    _ButtonDirective_1_4.detectHostChanges(this, _el_1, firstCheck);
  }

  @override
  void destroyInternal() {
    _appEl_3.destroyNestedViews();
    _appEl_6.destroyNestedViews();
    _appEl_9.destroyNestedViews();
  }

  void _handle_blur_1_1($event) {
    dbg(1, 9, 5);
    ctx.onBlur($event);
    dbg(1, 5, 0);
    _KeyboardOnlyFocusIndicatorDirective_1_5.resetOutline();
  }

  void _handle_click_1_2($event) {
    dbg(1, 5, 0);
    _ButtonDirective_1_4.instance.handleClick($event);
    _KeyboardOnlyFocusIndicatorDirective_1_5.hideOutline();
  }
}

AppView<import8.DropdownButtonComponent> viewFactory_DropdownButtonComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewDropdownButtonComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_DropdownButtonComponent1 = [null, null];

class _ViewDropdownButtonComponent1 extends DebugAppView<import8.DropdownButtonComponent> {
  import10.Element _el_0;
  import10.Text _text_1;
  var _expr_0;
  _ViewDropdownButtonComponent1(AppView<dynamic> parentView, num parentIndex) : super(import15.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_DropdownButtonComponent1) {
    componentType = ViewDropdownButtonComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import10.document;
    _el_0 = doc.createElement('span');
    dbgElm(this, _el_0, 0, 14, 2);
    _el_0.className = 'button-text';
    addShimE(_el_0);
    _text_1 = new import10.Text('');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 14, 55);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import8.DropdownButtonComponent _ctx = ctx;
    dbg(1, 14, 55);
    final currVal_0 = import17.interpolate0(_ctx.buttonText);
    if (import17.checkBinding(_expr_0, currVal_0)) {
      _text_1.text = currVal_0;
      _expr_0 = currVal_0;
    }
  }
}

AppView<import8.DropdownButtonComponent> viewFactory_DropdownButtonComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewDropdownButtonComponent1(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_DropdownButtonComponent2 = [
  new StaticNodeDebugInfo([import20.GlyphComponent], import20.GlyphComponent, <String, dynamic>{})
];

class _ViewDropdownButtonComponent2 extends DebugAppView<import8.DropdownButtonComponent> {
  import10.Element _el_0;
  import21.ViewGlyphComponent0 _compView_0;
  import20.GlyphComponent _GlyphComponent_0_4;
  var _expr_0;
  _ViewDropdownButtonComponent2(AppView<dynamic> parentView, num parentIndex) : super(import15.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_DropdownButtonComponent2) {
    componentType = ViewDropdownButtonComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import21.ViewGlyphComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 16, 2);
    _el_0.className = 'icon';
    addShimC(_el_0);
    _GlyphComponent_0_4 = new import20.GlyphComponent(_el_0);
    _compView_0.create(_GlyphComponent_0_4, []);
    init([_el_0], const [], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import20.GlyphComponent) && (0 == nodeIndex))) {
      return _GlyphComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import8.DropdownButtonComponent _ctx = ctx;
    bool changed = true;
    changed = false;
    dbg(0, 18, 9);
    final currVal_0 = _ctx.buttonIcon;
    if (import17.checkBinding(_expr_0, currVal_0)) {
      _GlyphComponent_0_4.icon = currVal_0;
      changed = true;
      _expr_0 = currVal_0;
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

AppView<import8.DropdownButtonComponent> viewFactory_DropdownButtonComponent2(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewDropdownButtonComponent2(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_DropdownButtonComponent3 = [null, null];

class _ViewDropdownButtonComponent3 extends DebugAppView<import8.DropdownButtonComponent> {
  import10.DivElement _el_0;
  import10.Text _text_1;
  var _expr_0;
  bool _expr_1;
  var _expr_2;
  _ViewDropdownButtonComponent3(AppView<dynamic> parentView, num parentIndex) : super(import15.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_DropdownButtonComponent3) {
    componentType = ViewDropdownButtonComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import10.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 20, 0);
    _el_0.className = 'error-text';
    createAttr(_el_0, 'role', 'alert');
    addShimC(_el_0);
    _text_1 = new import10.Text('');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 24, 21);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import8.DropdownButtonComponent _ctx = ctx;
    final currVal_0 = import17.interpolate0(!_ctx.invalid);
    if (import17.checkBinding(_expr_0, currVal_0)) {
      setAttr(_el_0, 'aria-hidden', currVal_0?.toString());
      _expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.invalid;
    if (import17.checkBinding(_expr_1, currVal_1)) {
      updateClass(_el_0, 'invalid', currVal_1);
      _expr_1 = currVal_1;
    }
    dbg(1, 24, 21);
    final currVal_2 = import17.interpolate1('\n  ', _ctx.error, '\n');
    if (import17.checkBinding(_expr_2, currVal_2)) {
      _text_1.text = currVal_2;
      _expr_2 = currVal_2;
    }
  }
}

AppView<import8.DropdownButtonComponent> viewFactory_DropdownButtonComponent3(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewDropdownButtonComponent3(parentView, parentIndex);
}

const List<dynamic> styles$DropdownButtonComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_DropdownButtonComponentHost0 = [
  new StaticNodeDebugInfo([import8.DropdownButtonComponent], import8.DropdownButtonComponent, <String, dynamic>{})
];

class _ViewDropdownButtonComponentHost0 extends DebugAppView<dynamic> {
  ViewDropdownButtonComponent0 _compView_0;
  import8.DropdownButtonComponent _DropdownButtonComponent_0_4;
  static RenderComponentType _renderType;
  _ViewDropdownButtonComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import15.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_DropdownButtonComponentHost0) {
    _renderType ??= import17.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$DropdownButtonComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewDropdownButtonComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _DropdownButtonComponent_0_4 = new import8.DropdownButtonComponent();
    _compView_0.create(_DropdownButtonComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _DropdownButtonComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import8.DropdownButtonComponent) && (0 == nodeIndex))) {
      return _DropdownButtonComponent_0_4;
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
  }
}

AppView viewFactory_DropdownButtonComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewDropdownButtonComponentHost0(parentView, parentIndex);
}

const ComponentFactory _DropdownButtonComponentNgFactory = const ComponentFactory('dropdown-button', viewFactory_DropdownButtonComponentHost0, import8.DropdownButtonComponent, _DropdownButtonComponentMetadata);
final ComponentFactory DropdownButtonComponentNgFactory = _DropdownButtonComponentNgFactory;
const _DropdownButtonComponentMetadata = const [];
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
    DropdownButtonComponent,
    DropdownButtonComponentNgFactory,
  );
  _ngRef.registerFactory(
    DropdownButtonComponent,
    () => new DropdownButtonComponent(),
  );
}
