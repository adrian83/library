// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'tab_button.dart';
export 'tab_button.dart';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/material_button/material_button_base.dart';
import 'package:angular_components/material_ripple/material_ripple.dart';
import 'package:angular_components/material_tab/tab_mixin.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/material_button/material_button_base.template.dart' as _ref1;
import 'package:angular_components/material_ripple/material_ripple.template.dart' as _ref2;
import 'package:angular_components/material_tab/tab_mixin.template.dart' as _ref3;

import 'package:angular_components/material_tab/tab_button.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import '../material_ripple/material_ripple.dart' as import2;
import 'package:angular/src/debug/debug_app_view.dart';
import 'tab_button.dart' as import4;
import 'dart:html' as import5;
import '../material_ripple/material_ripple.template.dart' as import6;
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import9;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import11;
import 'package:angular/angular.dart';

const List<dynamic> styles$TabButtonComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_TabButtonComponent0 = [
  null,
  null,
  null,
  null,
  new StaticNodeDebugInfo([import2.MaterialRippleComponent], import2.MaterialRippleComponent, <String, dynamic>{}),
  null
];

class ViewTabButtonComponent0 extends DebugAppView<import4.TabButtonComponent> {
  import5.DivElement _el_1;
  import5.Text _text_2;
  import5.Element _el_4;
  import6.ViewMaterialRippleComponent0 _compView_4;
  import2.MaterialRippleComponent _MaterialRippleComponent_4_4;
  var _expr_0;
  var _expr_1;
  var _expr_2;
  bool _expr_3;
  bool _expr_4;
  bool _expr_5;
  static RenderComponentType _renderType;
  ViewTabButtonComponent0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_TabButtonComponent0) {
    rootEl = import5.document.createElement('tab-button');
    createAttr(rootEl, 'role', 'tab');
    _renderType ??= import11.appViewUtils.createRenderType('asset:angular_components/lib/material_tab/tab_button.dart class TabButtonComponent - inline template', ViewEncapsulation.Emulated, styles$TabButtonComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import4.TabButtonComponent _ctx = ctx;
    final import5.HtmlElement parentRenderNode = initViewRoot(rootEl);
    import5.Text _text_0 = new import5.Text('          ');
    parentRenderNode.append(_text_0);
    dbgElm(this, _text_0, 0, 0, 0);
    var doc = import5.document;
    _el_1 = createAndAppendDbg(this, doc, 'div', parentRenderNode, 1, 0, 10);
    _el_1.className = 'content';
    addShimC(_el_1);
    _text_2 = new import5.Text('');
    _el_1.append(_text_2);
    dbgElm(this, _text_2, 2, 0, 31);
    import5.Text _text_3 = new import5.Text('\n          ');
    parentRenderNode.append(_text_3);
    dbgElm(this, _text_3, 3, 2, 16);
    _compView_4 = new import6.ViewMaterialRippleComponent0(this, 4);
    _el_4 = _compView_4.rootEl;
    parentRenderNode.append(_el_4);
    dbgElm(this, _el_4, 4, 3, 10);
    addShimC(_el_4);
    _MaterialRippleComponent_4_4 = new import2.MaterialRippleComponent(_el_4);
    _compView_4.create(_MaterialRippleComponent_4_4, []);
    import5.Text _text_5 = new import5.Text('\n        ');
    parentRenderNode.append(_text_5);
    dbgElm(this, _text_5, 5, 3, 45);
    init(const [], const [], [_text_0, _el_1, _text_2, _text_3, _el_4, _text_5]);
    rootEl.addEventListener('click', eventHandler1(_ctx.handleClick));
    rootEl.addEventListener('keypress', eventHandler1(_ctx.handleKeyPress));
    rootEl.addEventListener('mousedown', eventHandler1(_ctx.onMouseDown));
    rootEl.addEventListener('mouseup', eventHandler1(_ctx.onMouseUp));
    rootEl.addEventListener('focus', eventHandler1(_ctx.onFocus));
    rootEl.addEventListener('blur', eventHandler1(_ctx.onBlur));
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import2.MaterialRippleComponent) && (4 == nodeIndex))) {
      return _MaterialRippleComponent_4_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import4.TabButtonComponent _ctx = ctx;
    bool changed = true;
    changed = false;
    if (changed) {
      _compView_4.markAsCheckOnce();
    }
    dbg(2, 0, 31);
    final currVal_0 = import11.interpolate1('\n            ', _ctx.label, '\n          ');
    if (import11.checkBinding(_expr_0, currVal_0)) {
      _text_2.text = currVal_0;
      _expr_0 = currVal_0;
    }
    _compView_4.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_4.destroy();
    dbg(4, 3, 10);
    _MaterialRippleComponent_4_4.ngOnDestroy();
  }

  void detectHostChanges(bool firstCheck) {
    final currVal_1 = ctx.tabIndex;
    if (import11.checkBinding(_expr_1, currVal_1)) {
      setProp(rootEl, 'tabIndex', currVal_1);
      _expr_1 = currVal_1;
    }
    final currVal_2 = ctx.disabledStr;
    if (import11.checkBinding(_expr_2, currVal_2)) {
      setAttr(rootEl, 'aria-disabled', currVal_2?.toString());
      _expr_2 = currVal_2;
    }
    final currVal_3 = ctx.disabled;
    if (import11.checkBinding(_expr_3, currVal_3)) {
      updateElemClass(rootEl, 'is-disabled', currVal_3);
      _expr_3 = currVal_3;
    }
    final currVal_4 = ctx.visualFocus;
    if (import11.checkBinding(_expr_4, currVal_4)) {
      updateElemClass(rootEl, 'focus', currVal_4);
      _expr_4 = currVal_4;
    }
    final currVal_5 = (ctx.isActive || ctx.isMouseDown);
    if (import11.checkBinding(_expr_5, currVal_5)) {
      updateElemClass(rootEl, 'active', currVal_5);
      _expr_5 = currVal_5;
    }
  }
}

AppView<import4.TabButtonComponent> viewFactory_TabButtonComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewTabButtonComponent0(parentView, parentIndex);
}

const List<dynamic> styles$TabButtonComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_TabButtonComponentHost0 = [
  new StaticNodeDebugInfo([import4.TabButtonComponent], import4.TabButtonComponent, <String, dynamic>{})
];

class _ViewTabButtonComponentHost0 extends DebugAppView<dynamic> {
  ViewTabButtonComponent0 _compView_0;
  import4.TabButtonComponent _TabButtonComponent_0_4;
  static RenderComponentType _renderType;
  _ViewTabButtonComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_TabButtonComponentHost0) {
    _renderType ??= import11.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$TabButtonComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewTabButtonComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _TabButtonComponent_0_4 = new import4.TabButtonComponent(rootEl);
    _compView_0.create(_TabButtonComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _TabButtonComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import4.TabButtonComponent) && (0 == nodeIndex))) {
      return _TabButtonComponent_0_4;
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

AppView viewFactory_TabButtonComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewTabButtonComponentHost0(parentView, parentIndex);
}

const ComponentFactory _TabButtonComponentNgFactory = const ComponentFactory('tab-button', viewFactory_TabButtonComponentHost0, import4.TabButtonComponent, _TabButtonComponentMetadata);
final ComponentFactory TabButtonComponentNgFactory = _TabButtonComponentNgFactory;
const _TabButtonComponentMetadata = const [];
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
    TabButtonComponent,
    TabButtonComponentNgFactory,
  );
  _ngRef.registerFactory(
    TabButtonComponent,
    (Element p0) => new TabButtonComponent(p0),
  );
  _ngRef.registerDependencies(
    TabButtonComponent,
    const [
      const [
        Element,
      ],
    ],
  );
}
