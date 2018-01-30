// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'scorecard.dart';
export 'scorecard.dart';
import 'dart:async';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/focus/keyboard_only_focus_indicator.dart';
import 'package:angular_components/material_icon/material_icon.dart';
import 'package:angular_components/material_ripple/material_ripple.dart';
import 'package:angular_components/utils/browser/dom_service/dom_service.dart';
import 'package:angular_components/utils/browser/events/events.dart';
import 'package:angular_components/utils/color/color.dart';
import 'package:angular_components/utils/color/palette.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/focus/keyboard_only_focus_indicator.template.dart' as _ref1;
import 'package:angular_components/material_icon/material_icon.template.dart' as _ref2;
import 'package:angular_components/material_ripple/material_ripple.template.dart' as _ref3;
import 'package:angular_components/utils/browser/dom_service/dom_service.template.dart' as _ref4;
import 'package:angular_components/utils/browser/events/events.template.dart' as _ref5;
import 'package:angular_components/utils/color/color.template.dart' as _ref6;
import 'package:angular_components/utils/color/palette.template.dart' as _ref7;

import 'package:angular_components/scorecard/scorecard.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/common/directives/ng_if.dart';
import 'package:angular/src/debug/debug_app_view.dart';
import 'scorecard.dart' as import5;
import 'package:angular/src/core/linker/view_container.dart';
import 'dart:html' as import7;
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import10;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import12;
import 'package:angular/angular.dart';
import '../material_ripple/material_ripple.dart' as import14;
import '../material_ripple/material_ripple.template.dart' as import15;
import '../material_icon/material_icon.dart' as import16;
import '../material_icon/material_icon.template.dart' as import17;
import '../utils/browser/dom_service/dom_service.dart' as import18;

const List<dynamic> styles$ScorecardComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_ScorecardComponent0 = [
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  null,
  null,
  null,
  null,
  null,
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  null
];

class ViewScorecardComponent0 extends DebugAppView<import5.ScorecardComponent> {
  ViewContainer _appEl_1;
  NgIf _NgIf_1_7;
  import7.Element _el_3;
  import7.Text _text_4;
  import7.Element _el_6;
  import7.Text _text_7;
  ViewContainer _appEl_9;
  NgIf _NgIf_9_7;
  ViewContainer _appEl_11;
  NgIf _NgIf_11_7;
  ViewContainer _appEl_13;
  NgIf _NgIf_13_7;
  var _expr_1;
  var _expr_2;
  var _expr_6;
  var _expr_7;
  bool _expr_8;
  bool _expr_9;
  bool _expr_10;
  var _expr_11;
  bool _expr_12;
  bool _expr_13;
  static RenderComponentType _renderType;
  ViewScorecardComponent0(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckOnce, nodeDebugInfos_ScorecardComponent0) {
    rootEl = import7.document.createElement('acx-scorecard');
    this.rootEl.className = 'themeable';
    _renderType ??= import12.appViewUtils.createRenderType('package:angular_components/scorecard/scorecard.html', ViewEncapsulation.Emulated, styles$ScorecardComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import5.ScorecardComponent _ctx = ctx;
    final import7.HtmlElement parentRenderNode = initViewRoot(rootEl);
    import7.Text _text_0 = new import7.Text('\n');
    parentRenderNode.append(_text_0);
    dbgElm(this, _text_0, 0, 4, 3);
    var _anchor_1 = ngAnchor.clone(false);
    parentRenderNode.append(_anchor_1);
    dbgElm(this, _anchor_1, 1, 5, 0);
    _appEl_1 = new ViewContainer(1, null, this, _anchor_1);
    TemplateRef _TemplateRef_1_6 = new TemplateRef(_appEl_1, viewFactory_ScorecardComponent1);
    _NgIf_1_7 = new NgIf(_appEl_1, _TemplateRef_1_6);
    import7.Text _text_2 = new import7.Text('\n');
    parentRenderNode.append(_text_2);
    dbgElm(this, _text_2, 2, 5, 54);
    var doc = import7.document;
    _el_3 = createAndAppendDbg(this, doc, 'h3', parentRenderNode, 3, 6, 0);
    addShimE(_el_3);
    _text_4 = new import7.Text('');
    _el_3.append(_text_4);
    dbgElm(this, _text_4, 4, 6, 4);
    dbg(null, 6, 13);
    project(_el_3, 0);
    import7.Text _text_5 = new import7.Text('\n');
    parentRenderNode.append(_text_5);
    dbgElm(this, _text_5, 5, 6, 57);
    _el_6 = createAndAppendDbg(this, doc, 'h2', parentRenderNode, 6, 7, 0);
    addShimE(_el_6);
    _text_7 = new import7.Text('');
    _el_6.append(_text_7);
    dbgElm(this, _text_7, 7, 7, 4);
    dbg(null, 7, 13);
    project(_el_6, 1);
    import7.Text _text_8 = new import7.Text('\n');
    parentRenderNode.append(_text_8);
    dbgElm(this, _text_8, 8, 7, 58);
    var _anchor_9 = ngAnchor.clone(false);
    parentRenderNode.append(_anchor_9);
    dbgElm(this, _anchor_9, 9, 8, 0);
    _appEl_9 = new ViewContainer(9, null, this, _anchor_9);
    TemplateRef _TemplateRef_9_6 = new TemplateRef(_appEl_9, viewFactory_ScorecardComponent2);
    _NgIf_9_7 = new NgIf(_appEl_9, _TemplateRef_9_6);
    import7.Text _text_10 = new import7.Text('\n');
    parentRenderNode.append(_text_10);
    dbgElm(this, _text_10, 10, 8, 92);
    var _anchor_11 = ngAnchor.clone(false);
    parentRenderNode.append(_anchor_11);
    dbgElm(this, _anchor_11, 11, 9, 0);
    _appEl_11 = new ViewContainer(11, null, this, _anchor_11);
    TemplateRef _TemplateRef_11_6 = new TemplateRef(_appEl_11, viewFactory_ScorecardComponent3);
    _NgIf_11_7 = new NgIf(_appEl_11, _TemplateRef_11_6);
    import7.Text _text_12 = new import7.Text('\n');
    parentRenderNode.append(_text_12);
    dbgElm(this, _text_12, 12, 17, 7);
    var _anchor_13 = ngAnchor.clone(false);
    parentRenderNode.append(_anchor_13);
    dbgElm(this, _anchor_13, 13, 18, 0);
    _appEl_13 = new ViewContainer(13, null, this, _anchor_13);
    TemplateRef _TemplateRef_13_6 = new TemplateRef(_appEl_13, viewFactory_ScorecardComponent5);
    _NgIf_13_7 = new NgIf(_appEl_13, _TemplateRef_13_6);
    import7.Text _text_14 = new import7.Text('\n');
    parentRenderNode.append(_text_14);
    dbgElm(this, _text_14, 14, 18, 89);
    dbg(null, 19, 0);
    project(parentRenderNode, 3);
    import7.Text _text_15 = new import7.Text('\n');
    parentRenderNode.append(_text_15);
    dbgElm(this, _text_15, 15, 19, 25);
    init(const [], const [], [_text_0, _anchor_1, _text_2, _el_3, _text_4, _text_5, _el_6, _text_7, _text_8, _anchor_9, _text_10, _anchor_11, _text_12, _anchor_13, _text_14, _text_15]);
    rootEl.addEventListener('keyup', eventHandler0(_ctx.resetOutline));
    rootEl.addEventListener('blur', eventHandler0(_ctx.resetOutline));
    rootEl.addEventListener('mousedown', eventHandler0(_ctx.hideOutline));
    rootEl.addEventListener('click', eventHandler0(_ctx.handleClick));
    rootEl.addEventListener('keypress', eventHandler1(_ctx.handleKeypress));
    return null;
  }

  @override
  void detectChangesInternal() {
    final import5.ScorecardComponent _ctx = ctx;
    dbg(1, 5, 17);
    _NgIf_1_7.ngIf = _ctx.selectable;
    dbg(9, 8, 6);
    _NgIf_9_7.ngIf = (_ctx.suggestionBefore != null);
    dbg(11, 9, 6);
    _NgIf_11_7.ngIf = (_ctx.description != null);
    dbg(13, 18, 6);
    _NgIf_13_7.ngIf = (_ctx.suggestionAfter != null);
    _appEl_1.detectChangesInNestedViews();
    _appEl_9.detectChangesInNestedViews();
    _appEl_11.detectChangesInNestedViews();
    _appEl_13.detectChangesInNestedViews();
    dbg(4, 6, 4);
    final currVal_1 = (_ctx.label ?? '');
    if (import12.checkBinding(_expr_1, currVal_1)) {
      _text_4.text = currVal_1;
      _expr_1 = currVal_1;
    }
    dbg(7, 7, 4);
    final currVal_2 = (_ctx.value ?? '');
    if (import12.checkBinding(_expr_2, currVal_2)) {
      _text_7.text = currVal_2;
      _expr_2 = currVal_2;
    }
  }

  @override
  void destroyInternal() {
    _appEl_1.destroyNestedViews();
    _appEl_9.destroyNestedViews();
    _appEl_11.destroyNestedViews();
    _appEl_13.destroyNestedViews();
  }

  void detectHostChanges(bool firstCheck) {
    final currVal_6 = (ctx.selectable ? 0 : null);
    if (import12.checkBinding(_expr_6, currVal_6)) {
      setAttr(rootEl, 'tabindex', currVal_6?.toString());
      _expr_6 = currVal_6;
    }
    final currVal_7 = (ctx.selectable ? 'button' : null);
    if (import12.checkBinding(_expr_7, currVal_7)) {
      setAttr(rootEl, 'role', currVal_7?.toString());
      _expr_7 = currVal_7;
    }
    final currVal_8 = ctx.isChangePositive;
    if (import12.checkBinding(_expr_8, currVal_8)) {
      updateElemClass(rootEl, 'is-change-positive', currVal_8);
      _expr_8 = currVal_8;
    }
    final currVal_9 = ctx.isChangeNegative;
    if (import12.checkBinding(_expr_9, currVal_9)) {
      updateElemClass(rootEl, 'is-change-negative', currVal_9);
      _expr_9 = currVal_9;
    }
    final currVal_10 = ctx.selectable;
    if (import12.checkBinding(_expr_10, currVal_10)) {
      updateElemClass(rootEl, 'selectable', currVal_10);
      _expr_10 = currVal_10;
    }
    final currVal_11 = ctx.backgroundStyle;
    if (import12.checkBinding(_expr_11, currVal_11)) {
      rootEl.style.setProperty('background', currVal_11?.toString());
      _expr_11 = currVal_11;
    }
    final currVal_12 = ctx.extraBig;
    if (import12.checkBinding(_expr_12, currVal_12)) {
      updateElemClass(rootEl, 'extra-big', currVal_12);
      _expr_12 = currVal_12;
    }
    final currVal_13 = ctx.selected;
    if (import12.checkBinding(_expr_13, currVal_13)) {
      updateElemClass(rootEl, 'selected', currVal_13);
      _expr_13 = currVal_13;
    }
  }
}

AppView<import5.ScorecardComponent> viewFactory_ScorecardComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewScorecardComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_ScorecardComponent1 = [
  new StaticNodeDebugInfo([import14.MaterialRippleComponent], import14.MaterialRippleComponent, <String, dynamic>{})
];

class _ViewScorecardComponent1 extends DebugAppView<import5.ScorecardComponent> {
  import7.Element _el_0;
  import15.ViewMaterialRippleComponent0 _compView_0;
  import14.MaterialRippleComponent _MaterialRippleComponent_0_4;
  _ViewScorecardComponent1(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_ScorecardComponent1) {
    componentType = ViewScorecardComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import15.ViewMaterialRippleComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 5, 0);
    addShimC(_el_0);
    _MaterialRippleComponent_0_4 = new import14.MaterialRippleComponent(_el_0);
    _compView_0.create(_MaterialRippleComponent_0_4, []);
    init([_el_0], const [], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import14.MaterialRippleComponent) && (0 == nodeIndex))) {
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
    dbg(0, 5, 0);
    _MaterialRippleComponent_0_4.ngOnDestroy();
  }
}

AppView<import5.ScorecardComponent> viewFactory_ScorecardComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewScorecardComponent1(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_ScorecardComponent2 = [null, null];

class _ViewScorecardComponent2 extends DebugAppView<import5.ScorecardComponent> {
  import7.Element _el_0;
  import7.Text _text_1;
  var _expr_0;
  _ViewScorecardComponent2(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_ScorecardComponent2) {
    componentType = ViewScorecardComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import7.document;
    _el_0 = doc.createElement('span');
    dbgElm(this, _el_0, 0, 8, 0);
    _el_0.className = 'suggestion before';
    addShimE(_el_0);
    _text_1 = new import7.Text('');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 8, 65);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import5.ScorecardComponent _ctx = ctx;
    dbg(1, 8, 65);
    final currVal_0 = (_ctx.suggestionBefore ?? '');
    if (import12.checkBinding(_expr_0, currVal_0)) {
      _text_1.text = currVal_0;
      _expr_0 = currVal_0;
    }
  }
}

AppView<import5.ScorecardComponent> viewFactory_ScorecardComponent2(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewScorecardComponent2(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_ScorecardComponent3 = [
  null,
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  null
];

class _ViewScorecardComponent3 extends DebugAppView<import5.ScorecardComponent> {
  import7.Element _el_0;
  ViewContainer _appEl_2;
  NgIf _NgIf_2_7;
  import7.Text _text_3;
  var _expr_1;
  _ViewScorecardComponent3(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_ScorecardComponent3) {
    componentType = ViewScorecardComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import7.document;
    _el_0 = doc.createElement('span');
    dbgElm(this, _el_0, 0, 9, 0);
    _el_0.className = 'description';
    addShimE(_el_0);
    import7.Text _text_1 = new import7.Text('\n  ');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 9, 54);
    var _anchor_2 = ngAnchor.clone(false);
    _el_0.append(_anchor_2);
    dbgElm(this, _anchor_2, 2, 10, 2);
    _appEl_2 = new ViewContainer(2, 0, this, _anchor_2);
    TemplateRef _TemplateRef_2_6 = new TemplateRef(_appEl_2, viewFactory_ScorecardComponent4);
    _NgIf_2_7 = new NgIf(_appEl_2, _TemplateRef_2_6);
    _text_3 = new import7.Text('');
    _el_0.append(_text_3);
    dbgElm(this, _text_3, 3, 14, 18);
    dbg(null, 16, 2);
    project(_el_0, 2);
    import7.Text _text_4 = new import7.Text('\n');
    _el_0.append(_text_4);
    dbgElm(this, _text_4, 4, 16, 48);
    init([_el_0], const [], [_el_0, _text_1, _anchor_2, _text_3, _text_4]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import5.ScorecardComponent _ctx = ctx;
    dbg(2, 10, 17);
    _NgIf_2_7.ngIf = ((_ctx.changeGlyph && (_ctx.description != '')) && !_ctx.isChangeNeutral);
    _appEl_2.detectChangesInNestedViews();
    dbg(3, 14, 18);
    final currVal_1 = import12.interpolate1('\n  ', _ctx.description, '\n  ');
    if (import12.checkBinding(_expr_1, currVal_1)) {
      _text_3.text = currVal_1;
      _expr_1 = currVal_1;
    }
  }

  @override
  void destroyInternal() {
    _appEl_2.destroyNestedViews();
  }
}

AppView<import5.ScorecardComponent> viewFactory_ScorecardComponent3(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewScorecardComponent3(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_ScorecardComponent4 = [
  new StaticNodeDebugInfo([import16.MaterialIconComponent], import16.MaterialIconComponent, <String, dynamic>{}),
  null
];

class _ViewScorecardComponent4 extends DebugAppView<import5.ScorecardComponent> {
  import7.Element _el_0;
  import17.ViewMaterialIconComponent0 _compView_0;
  import16.MaterialIconComponent _MaterialIconComponent_0_4;
  var _expr_0;
  _ViewScorecardComponent4(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_ScorecardComponent4) {
    componentType = ViewScorecardComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import17.ViewMaterialIconComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 10, 2);
    _el_0.className = 'change-glyph';
    createAttr(_el_0, 'size', 'small');
    addShimC(_el_0);
    _MaterialIconComponent_0_4 = new import16.MaterialIconComponent(_el_0);
    import7.Text _text_1 = new import7.Text('\n  ');
    dbgElm(this, _text_1, 1, 13, 30);
    _compView_0.create(_MaterialIconComponent_0_4, []);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import16.MaterialIconComponent) && ((0 <= nodeIndex) && (nodeIndex <= 1)))) {
      return _MaterialIconComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import5.ScorecardComponent _ctx = ctx;
    bool changed = true;
    changed = false;
    dbg(0, 12, 17);
    final currVal_0 = _ctx.changeGlyphIcon;
    if (import12.checkBinding(_expr_0, currVal_0)) {
      _MaterialIconComponent_0_4.icon = currVal_0;
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

AppView<import5.ScorecardComponent> viewFactory_ScorecardComponent4(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewScorecardComponent4(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_ScorecardComponent5 = [null, null];

class _ViewScorecardComponent5 extends DebugAppView<import5.ScorecardComponent> {
  import7.Element _el_0;
  import7.Text _text_1;
  var _expr_0;
  _ViewScorecardComponent5(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_ScorecardComponent5) {
    componentType = ViewScorecardComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import7.document;
    _el_0 = doc.createElement('span');
    dbgElm(this, _el_0, 0, 18, 0);
    _el_0.className = 'suggestion after';
    addShimE(_el_0);
    _text_1 = new import7.Text('');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 18, 63);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import5.ScorecardComponent _ctx = ctx;
    dbg(1, 18, 63);
    final currVal_0 = (_ctx.suggestionAfter ?? '');
    if (import12.checkBinding(_expr_0, currVal_0)) {
      _text_1.text = currVal_0;
      _expr_0 = currVal_0;
    }
  }
}

AppView<import5.ScorecardComponent> viewFactory_ScorecardComponent5(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewScorecardComponent5(parentView, parentIndex);
}

const List<dynamic> styles$ScorecardComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_ScorecardComponentHost0 = [
  new StaticNodeDebugInfo([import5.ScorecardComponent], import5.ScorecardComponent, <String, dynamic>{})
];

class _ViewScorecardComponentHost0 extends DebugAppView<dynamic> {
  ViewScorecardComponent0 _compView_0;
  import5.ScorecardComponent _ScorecardComponent_0_4;
  static RenderComponentType _renderType;
  _ViewScorecardComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_ScorecardComponentHost0) {
    _renderType ??= import12.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$ScorecardComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewScorecardComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _ScorecardComponent_0_4 = new import5.ScorecardComponent(_compView_0.ref, rootEl, this.injectorGet(import18.DomService, viewData.parentIndex));
    _compView_0.create(_ScorecardComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _ScorecardComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import5.ScorecardComponent) && (0 == nodeIndex))) {
      return _ScorecardComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool changed = true;
    bool firstCheck = (this.cdState == 0);
    changed = false;
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

AppView viewFactory_ScorecardComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewScorecardComponentHost0(parentView, parentIndex);
}

const ComponentFactory _ScorecardComponentNgFactory = const ComponentFactory('acx-scorecard', viewFactory_ScorecardComponentHost0, import5.ScorecardComponent, _ScorecardComponentMetadata);
final ComponentFactory ScorecardComponentNgFactory = _ScorecardComponentNgFactory;
const _ScorecardComponentMetadata = const [];
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
  _ngRef.registerComponent(
    ScorecardComponent,
    ScorecardComponentNgFactory,
  );
  _ngRef.registerFactory(
    ScorecardComponent,
    (ChangeDetectorRef p0, HtmlElement p1, DomService p2) => new ScorecardComponent(p0, p1, p2),
  );
  _ngRef.registerDependencies(
    ScorecardComponent,
    const [
      const [
        ChangeDetectorRef,
      ],
      const [
        HtmlElement,
      ],
      const [
        DomService,
      ],
    ],
  );
}
