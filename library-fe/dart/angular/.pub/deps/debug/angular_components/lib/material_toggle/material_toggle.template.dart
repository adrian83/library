// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_toggle.dart';
export 'material_toggle.dart';
import 'dart:async';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/utils/browser/events/events.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/utils/browser/events/events.template.dart' as _ref1;

import 'package:angular_components/material_toggle/material_toggle.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/common/directives/ng_if.dart';
import 'package:angular/src/debug/debug_app_view.dart';
import 'material_toggle.dart' as import5;
import 'dart:html' as import6;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import10;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import12;
import 'package:angular/angular.dart';

const List<dynamic> styles$MaterialToggleComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialToggleComponent0 = [
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  null,
  null,
  null
];

class ViewMaterialToggleComponent0 extends DebugAppView<import5.MaterialToggleComponent> {
  import6.DivElement _el_0;
  ViewContainer _appEl_1;
  NgIf _NgIf_1_7;
  import6.DivElement _el_2;
  import6.DivElement _el_3;
  import6.DivElement _el_4;
  import6.DivElement _el_5;
  var _expr_0;
  var _expr_1;
  var _expr_2;
  bool _expr_3;
  bool _expr_4;
  var _expr_5;
  var _expr_7;
  var _expr_8;
  static RenderComponentType _renderType;
  ViewMaterialToggleComponent0(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckOnce, nodeDebugInfos_MaterialToggleComponent0) {
    rootEl = import6.document.createElement('material-toggle');
    this.rootEl.className = 'themeable';
    _renderType ??= import12.appViewUtils.createRenderType('package:angular_components/material_toggle/material_toggle.html', ViewEncapsulation.Emulated, styles$MaterialToggleComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import5.MaterialToggleComponent _ctx = ctx;
    final import6.HtmlElement parentRenderNode = initViewRoot(rootEl);
    var doc = import6.document;
    _el_0 = createAndAppendDbg(this, doc, 'div', parentRenderNode, 0, 5, 0);
    _el_0.className = 'material-toggle';
    createAttr(_el_0, 'role', 'button');
    addShimC(_el_0);
    var _anchor_1 = ngAnchor.clone(false);
    _el_0.append(_anchor_1);
    dbgElm(this, _anchor_1, 1, 17, 2);
    _appEl_1 = new ViewContainer(1, 0, this, _anchor_1);
    TemplateRef _TemplateRef_1_6 = new TemplateRef(_appEl_1, viewFactory_MaterialToggleComponent1);
    _NgIf_1_7 = new NgIf(_appEl_1, _TemplateRef_1_6);
    _el_2 = createAndAppendDbg(this, doc, 'div', _el_0, 2, 18, 2);
    _el_2.className = 'tgl-container';
    addShimC(_el_2);
    _el_3 = createAndAppendDbg(this, doc, 'div', _el_2, 3, 19, 4);
    createAttr(_el_3, 'animated', '');
    _el_3.className = 'tgl-bar';
    addShimC(_el_3);
    _el_4 = createAndAppendDbg(this, doc, 'div', _el_2, 4, 20, 4);
    _el_4.className = 'tgl-btn-container';
    addShimC(_el_4);
    _el_5 = createAndAppendDbg(this, doc, 'div', _el_4, 5, 21, 6);
    createAttr(_el_5, 'animated', '');
    _el_5.className = 'tgl-btn';
    addShimC(_el_5);
    dbg(null, 22, 8);
    project(_el_5, 0);
    _el_0.addEventListener('blur', eventHandler1(_handle_blur_0_0));
    _el_0.addEventListener('focus', eventHandler1(_handle_focus_0_1));
    _el_0.addEventListener('mouseenter', eventHandler1(_handle_mouseenter_0_2));
    _el_0.addEventListener('mouseleave', eventHandler1(_handle_mouseleave_0_3));
    init(const [], const [], [_el_0, _anchor_1, _el_2, _el_3, _el_4, _el_5]);
    rootEl.addEventListener('click', eventHandler1(_ctx.handleClick));
    rootEl.addEventListener('keypress', eventHandler1(_ctx.handleKeyPress));
    return null;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialToggleComponent _ctx = ctx;
    dbg(1, 17, 23);
    _NgIf_1_7.ngIf = _ctx.hasLabel;
    _appEl_1.detectChangesInNestedViews();
    final currVal_0 = import12.interpolate0(_ctx.checked);
    if (import12.checkBinding(_expr_0, currVal_0)) {
      setAttr(_el_0, 'aria-pressed', currVal_0?.toString());
      _expr_0 = currVal_0;
    }
    final currVal_1 = import12.interpolate0(_ctx.disabled);
    if (import12.checkBinding(_expr_1, currVal_1)) {
      setAttr(_el_0, 'aria-disabled', currVal_1?.toString());
      _expr_1 = currVal_1;
    }
    final currVal_2 = (_ctx.ariaLabel ?? '');
    if (import12.checkBinding(_expr_2, currVal_2)) {
      setAttr(_el_0, 'aria-label', currVal_2?.toString());
      _expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.checked;
    if (import12.checkBinding(_expr_3, currVal_3)) {
      updateClass(_el_0, 'checked', currVal_3);
      _expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.disabled;
    if (import12.checkBinding(_expr_4, currVal_4)) {
      updateClass(_el_0, 'disabled', currVal_4);
      _expr_4 = currVal_4;
    }
    final currVal_5 = (_ctx.disabled ? '-1' : '0');
    if (import12.checkBinding(_expr_5, currVal_5)) {
      setAttr(_el_0, 'tabindex', currVal_5?.toString());
      _expr_5 = currVal_5;
    }
    final currVal_7 = import12.interpolate0(_ctx.shadow_z);
    if (import12.checkBinding(_expr_7, currVal_7)) {
      setAttr(_el_3, 'elevation', currVal_7?.toString());
      _expr_7 = currVal_7;
    }
    final currVal_8 = import12.interpolate0(_ctx.shadow_z);
    if (import12.checkBinding(_expr_8, currVal_8)) {
      setAttr(_el_5, 'elevation', currVal_8?.toString());
      _expr_8 = currVal_8;
    }
  }

  @override
  void destroyInternal() {
    _appEl_1.destroyNestedViews();
  }

  void _handle_blur_0_0($event) {
    dbg(0, 11, 5);
    ctx.hasFocus = false;
  }

  void _handle_focus_0_1($event) {
    dbg(0, 12, 5);
    ctx.hasFocus = true;
  }

  void _handle_mouseenter_0_2($event) {
    dbg(0, 13, 5);
    ctx.isHovered = true;
  }

  void _handle_mouseleave_0_3($event) {
    dbg(0, 14, 5);
    ctx.isHovered = false;
  }
}

AppView<import5.MaterialToggleComponent> viewFactory_MaterialToggleComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialToggleComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialToggleComponent1 = [null, null];

class _ViewMaterialToggleComponent1 extends DebugAppView<import5.MaterialToggleComponent> {
  import6.DivElement _el_0;
  import6.Text _text_1;
  var _expr_0;
  _ViewMaterialToggleComponent1(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialToggleComponent1) {
    componentType = ViewMaterialToggleComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import6.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 17, 2);
    _el_0.className = 'tgl-lbl';
    addShimC(_el_0);
    _text_1 = new import6.Text('');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 17, 40);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialToggleComponent _ctx = ctx;
    dbg(1, 17, 40);
    final currVal_0 = (_ctx.label ?? '');
    if (import12.checkBinding(_expr_0, currVal_0)) {
      _text_1.text = currVal_0;
      _expr_0 = currVal_0;
    }
  }
}

AppView<import5.MaterialToggleComponent> viewFactory_MaterialToggleComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialToggleComponent1(parentView, parentIndex);
}

const List<dynamic> styles$MaterialToggleComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialToggleComponentHost0 = [
  new StaticNodeDebugInfo([import5.MaterialToggleComponent], import5.MaterialToggleComponent, <String, dynamic>{})
];

class _ViewMaterialToggleComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialToggleComponent0 _compView_0;
  import5.MaterialToggleComponent _MaterialToggleComponent_0_4;
  static RenderComponentType _renderType;
  _ViewMaterialToggleComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialToggleComponentHost0) {
    _renderType ??= import12.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialToggleComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialToggleComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _MaterialToggleComponent_0_4 = new import5.MaterialToggleComponent();
    _compView_0.create(_MaterialToggleComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialToggleComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import5.MaterialToggleComponent) && (0 == nodeIndex))) {
      return _MaterialToggleComponent_0_4;
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

AppView viewFactory_MaterialToggleComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialToggleComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialToggleComponentNgFactory = const ComponentFactory('material-toggle', viewFactory_MaterialToggleComponentHost0, import5.MaterialToggleComponent, _MaterialToggleComponentMetadata);
final ComponentFactory MaterialToggleComponentNgFactory = _MaterialToggleComponentNgFactory;
const _MaterialToggleComponentMetadata = const [];
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;
  _ref0.initReflector();
  _ref1.initReflector();
  _ngRef.registerComponent(
    MaterialToggleComponent,
    MaterialToggleComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialToggleComponent,
    () => new MaterialToggleComponent(),
  );
}
