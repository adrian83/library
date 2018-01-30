// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_checkbox.dart';
export 'material_checkbox.dart';
import 'dart:async';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/glyph/glyph.dart';
import 'package:angular_components/material_ripple/material_ripple.dart';
import 'package:angular_components/model/ui/icon.dart';
import 'package:angular_components/utils/browser/events/events.dart';
import 'package:angular_forms/angular_forms.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/glyph/glyph.template.dart' as _ref1;
import 'package:angular_components/material_ripple/material_ripple.template.dart' as _ref2;
import 'package:angular_components/model/ui/icon.template.dart' as _ref3;
import 'package:angular_components/utils/browser/events/events.template.dart' as _ref4;
import 'package:angular_forms/angular_forms.template.dart' as _ref5;

import 'package:angular_components/material_checkbox/material_checkbox.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import '../glyph/glyph.dart' as import2;
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/common/directives/ng_if.dart';
import 'package:angular/src/debug/debug_app_view.dart';
import 'material_checkbox.dart' as import6;
import 'dart:html' as import7;
import '../glyph/glyph.template.dart' as import8;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import12;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import14;
import 'package:angular/angular.dart';
import '../material_ripple/material_ripple.dart' as import16;
import '../material_ripple/material_ripple.template.dart' as import17;

const List<dynamic> styles$MaterialCheckboxComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialCheckboxComponent0 = [
  null,
  new StaticNodeDebugInfo([import2.GlyphComponent], import2.GlyphComponent, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  null
];

class ViewMaterialCheckboxComponent0 extends DebugAppView<import6.MaterialCheckboxComponent> {
  import7.DivElement _el_0;
  import7.Element _el_1;
  import8.ViewGlyphComponent0 _compView_1;
  import2.GlyphComponent _GlyphComponent_1_4;
  ViewContainer _appEl_2;
  NgIf _NgIf_2_7;
  import7.DivElement _el_3;
  import7.Text _text_4;
  bool _expr_0;
  var _expr_1;
  bool _expr_2;
  var _expr_3;
  var _expr_5;
  bool _expr_6;
  var _expr_7;
  var _expr_9;
  var _expr_10;
  static RenderComponentType _renderType;
  ViewMaterialCheckboxComponent0(AppView<dynamic> parentView, num parentIndex) : super(import12.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckOnce, nodeDebugInfos_MaterialCheckboxComponent0) {
    rootEl = import7.document.createElement('material-checkbox');
    this.rootEl.className = 'themeable';
    _renderType ??= import14.appViewUtils.createRenderType('package:angular_components/material_checkbox/material_checkbox.html', ViewEncapsulation.Emulated, styles$MaterialCheckboxComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import6.MaterialCheckboxComponent _ctx = ctx;
    final import7.HtmlElement parentRenderNode = initViewRoot(rootEl);
    var doc = import7.document;
    _el_0 = createAndAppendDbg(this, doc, 'div', parentRenderNode, 0, 5, 0);
    _el_0.className = 'icon-container';
    addShimC(_el_0);
    _compView_1 = new import8.ViewGlyphComponent0(this, 1);
    _el_1 = _compView_1.rootEl;
    _el_0.append(_el_1);
    dbgElm(this, _el_1, 1, 7, 2);
    createAttr(_el_1, 'aria-hidden', 'true');
    _el_1.className = 'icon';
    addShimC(_el_1);
    _GlyphComponent_1_4 = new import2.GlyphComponent(_el_1);
    _compView_1.create(_GlyphComponent_1_4, []);
    var _anchor_2 = ngAnchor.clone(false);
    _el_0.append(_anchor_2);
    dbgElm(this, _anchor_2, 2, 13, 2);
    _appEl_2 = new ViewContainer(2, 0, this, _anchor_2);
    TemplateRef _TemplateRef_2_6 = new TemplateRef(_appEl_2, viewFactory_MaterialCheckboxComponent1);
    _NgIf_2_7 = new NgIf(_appEl_2, _TemplateRef_2_6);
    _el_3 = createAndAppendDbg(this, doc, 'div', parentRenderNode, 3, 18, 0);
    _el_3.className = 'content';
    addShimC(_el_3);
    _text_4 = new import7.Text('');
    _el_3.append(_text_4);
    dbgElm(this, _text_4, 4, 18, 21);
    dbg(null, 20, 2);
    project(_el_3, 0);
    init(const [], const [], [_el_0, _el_1, _anchor_2, _el_3, _text_4]);
    rootEl.addEventListener('click', eventHandler1(_ctx.handleClick));
    rootEl.addEventListener('keypress', eventHandler1(_ctx.handleKeyPress));
    rootEl.addEventListener('keyup', eventHandler1(_ctx.handleKeyUp));
    rootEl.addEventListener('focus', eventHandler1(_ctx.handleFocus));
    rootEl.addEventListener('mousedown', eventHandler1(_ctx.handleMouseDown));
    rootEl.addEventListener('blur', eventHandler1(_ctx.handleBlur));
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import2.GlyphComponent) && (1 == nodeIndex))) {
      return _GlyphComponent_1_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import6.MaterialCheckboxComponent _ctx = ctx;
    bool changed = true;
    changed = false;
    dbg(1, 8, 9);
    final currVal_3 = _ctx.icon;
    if (import14.checkBinding(_expr_3, currVal_3)) {
      _GlyphComponent_1_4.icon = currVal_3;
      changed = true;
      _expr_3 = currVal_3;
    }
    if (changed) {
      _compView_1.markAsCheckOnce();
    }
    dbg(2, 14, 14);
    _NgIf_2_7.ngIf = !_ctx.disabled;
    _appEl_2.detectChangesInNestedViews();
    final currVal_0 = _ctx.showFocus;
    if (import14.checkBinding(_expr_0, currVal_0)) {
      updateClass(_el_0, 'focus', currVal_0);
      _expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.themeColor;
    if (import14.checkBinding(_expr_1, currVal_1)) {
      _el_1.style.setProperty('color', currVal_1?.toString());
      _expr_1 = currVal_1;
    }
    final currVal_2 = (_ctx.checked || _ctx.indeterminate);
    if (import14.checkBinding(_expr_2, currVal_2)) {
      updateElemClass(_el_1, 'filled', currVal_2);
      _expr_2 = currVal_2;
    }
    dbg(4, 18, 21);
    final currVal_5 = import14.interpolate0(_ctx.label);
    if (import14.checkBinding(_expr_5, currVal_5)) {
      _text_4.text = currVal_5;
      _expr_5 = currVal_5;
    }
    _compView_1.detectChanges();
  }

  @override
  void destroyInternal() {
    _appEl_2.destroyNestedViews();
    _compView_1.destroy();
  }

  void detectHostChanges(bool firstCheck) {
    if (firstCheck) {
      if (!identical(ctx.role, null)) {
        setAttr(rootEl, 'role', ctx.role?.toString());
      }
    }
    final currVal_6 = ctx.disabled;
    if (import14.checkBinding(_expr_6, currVal_6)) {
      updateElemClass(rootEl, 'disabled', currVal_6);
      _expr_6 = currVal_6;
    }
    final currVal_7 = ctx.disabled;
    if (import14.checkBinding(_expr_7, currVal_7)) {
      setAttr(rootEl, 'aria-disabled', currVal_7?.toString());
      _expr_7 = currVal_7;
    }
    final currVal_9 = ctx.tabIndex;
    if (import14.checkBinding(_expr_9, currVal_9)) {
      setAttr(rootEl, 'tabindex', currVal_9?.toString());
      _expr_9 = currVal_9;
    }
    final currVal_10 = ctx.label;
    if (import14.checkBinding(_expr_10, currVal_10)) {
      setAttr(rootEl, 'aria-label', currVal_10?.toString());
      _expr_10 = currVal_10;
    }
  }
}

AppView<import6.MaterialCheckboxComponent> viewFactory_MaterialCheckboxComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialCheckboxComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialCheckboxComponent1 = [
  new StaticNodeDebugInfo([import16.MaterialRippleComponent], import16.MaterialRippleComponent, <String, dynamic>{})
];

class _ViewMaterialCheckboxComponent1 extends DebugAppView<import6.MaterialCheckboxComponent> {
  import7.Element _el_0;
  import17.ViewMaterialRippleComponent0 _compView_0;
  import16.MaterialRippleComponent _MaterialRippleComponent_0_4;
  var _expr_0;
  _ViewMaterialCheckboxComponent1(AppView<dynamic> parentView, num parentIndex) : super(import12.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialCheckboxComponent1) {
    componentType = ViewMaterialCheckboxComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import17.ViewMaterialRippleComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 13, 2);
    _el_0.className = 'ripple';
    addShimC(_el_0);
    _MaterialRippleComponent_0_4 = new import16.MaterialRippleComponent(_el_0);
    _compView_0.create(_MaterialRippleComponent_0_4, []);
    init([_el_0], const [], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import16.MaterialRippleComponent) && (0 == nodeIndex))) {
      return _MaterialRippleComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import6.MaterialCheckboxComponent _ctx = ctx;
    bool changed = true;
    changed = false;
    if (changed) {
      _compView_0.markAsCheckOnce();
    }
    final currVal_0 = _ctx.rippleColor;
    if (import14.checkBinding(_expr_0, currVal_0)) {
      _el_0.style.setProperty('color', currVal_0?.toString());
      _expr_0 = currVal_0;
    }
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
    dbg(0, 13, 2);
    _MaterialRippleComponent_0_4.ngOnDestroy();
  }
}

AppView<import6.MaterialCheckboxComponent> viewFactory_MaterialCheckboxComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialCheckboxComponent1(parentView, parentIndex);
}

const List<dynamic> styles$MaterialCheckboxComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialCheckboxComponentHost0 = [
  new StaticNodeDebugInfo([import6.MaterialCheckboxComponent], import6.MaterialCheckboxComponent, <String, dynamic>{})
];

class _ViewMaterialCheckboxComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialCheckboxComponent0 _compView_0;
  import6.MaterialCheckboxComponent _MaterialCheckboxComponent_0_4;
  static RenderComponentType _renderType;
  _ViewMaterialCheckboxComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import12.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialCheckboxComponentHost0) {
    _renderType ??= import14.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialCheckboxComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialCheckboxComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _MaterialCheckboxComponent_0_4 = new import6.MaterialCheckboxComponent(rootEl, _compView_0.ref, null, null, null);
    _compView_0.create(_MaterialCheckboxComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialCheckboxComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import6.MaterialCheckboxComponent) && (0 == nodeIndex))) {
      return _MaterialCheckboxComponent_0_4;
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

AppView viewFactory_MaterialCheckboxComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialCheckboxComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialCheckboxComponentNgFactory = const ComponentFactory('material-checkbox', viewFactory_MaterialCheckboxComponentHost0, import6.MaterialCheckboxComponent, _MaterialCheckboxComponentMetadata);
final ComponentFactory MaterialCheckboxComponentNgFactory = _MaterialCheckboxComponentNgFactory;
const _MaterialCheckboxComponentMetadata = const [];
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
  _ngRef.registerComponent(
    MaterialCheckboxComponent,
    MaterialCheckboxComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialCheckboxComponent,
    (HtmlElement p0, ChangeDetectorRef p1, NgControl p2, String p3, String p4) => new MaterialCheckboxComponent(p0, p1, p2, p3, p4),
  );
  _ngRef.registerDependencies(
    MaterialCheckboxComponent,
    const [
      const [
        HtmlElement,
      ],
      const [
        ChangeDetectorRef,
      ],
      const [
        NgControl,
        const _ngRef.Optional(),
        const _ngRef.Self(),
      ],
      const [
        String,
      ],
      const [
        String,
      ],
    ],
  );
}
