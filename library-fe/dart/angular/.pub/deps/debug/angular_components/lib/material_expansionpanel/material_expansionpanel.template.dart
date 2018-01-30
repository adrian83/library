// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_expansionpanel.dart';
export 'material_expansionpanel.dart';
import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_components/button_decorator/button_decorator.dart';
import 'package:angular_components/content/deferred_content_aware.dart';
import 'package:angular_components/focus/focus.dart';
import 'package:angular_components/glyph/glyph.dart';
import 'package:angular_components/material_yes_no_buttons/material_yes_no_buttons.dart';
import 'package:angular_components/model/action/async_action.dart';
import 'package:angular_components/utils/angular/managed_zone/angular_2.dart';
import 'package:angular_components/utils/browser/dom_service/dom_service.dart';
import 'package:angular_components/utils/disposer/disposer.dart';
import 'package:intl/intl.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/button_decorator/button_decorator.template.dart' as _ref1;
import 'package:angular_components/content/deferred_content_aware.template.dart' as _ref2;
import 'package:angular_components/focus/focus.template.dart' as _ref3;
import 'package:angular_components/glyph/glyph.template.dart' as _ref4;
import 'package:angular_components/material_yes_no_buttons/material_yes_no_buttons.template.dart' as _ref5;
import 'package:angular_components/model/action/async_action.template.dart' as _ref6;
import 'package:angular_components/utils/angular/managed_zone/angular_2.template.dart' as _ref7;
import 'package:angular_components/utils/browser/dom_service/dom_service.template.dart' as _ref8;
import 'package:angular_components/utils/disposer/disposer.template.dart' as _ref9;

import 'package:angular_components/material_expansionpanel/material_expansionpanel.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import '../material_yes_no_buttons/material_yes_no_buttons.dart' as import2;
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/common/directives/ng_if.dart';
import 'package:angular/src/debug/debug_app_view.dart';
import 'material_expansionpanel.dart' as import6;
import 'package:angular/src/core/linker/query_list.dart' as import7;
import 'dart:html' as import8;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import12;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import14;
import 'package:angular/angular.dart';
import '../button_decorator/button_decorator.dart' as import16;
import '../button_decorator/button_decorator.template.dart' as import17;
import '../glyph/glyph.dart' as import18;
import '../glyph/glyph.template.dart' as import19;
import '../material_yes_no_buttons/material_yes_no_buttons.template.dart' as import20;
import '../content/deferred_content_aware.dart' as import21;
import '../src/utils/angular/managed_zone/managed_zone.dart' as import22;
import '../utils/browser/dom_service/dom_service.dart' as import23;

const List<dynamic> styles$MaterialExpansionPanel = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialExpansionPanel0 = [
  new StaticNodeDebugInfo([import2.KeyUpBoundaryDirective], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  null,
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{})
];

class ViewMaterialExpansionPanel0 extends DebugAppView<import6.MaterialExpansionPanel> {
  import7.QueryList _viewQuery_expandCollapseButton_0;
  import8.DivElement _el_0;
  import2.KeyUpBoundaryDirective _KeyUpBoundaryDirective_0_4;
  ViewContainer _appEl_1;
  NgIf _NgIf_1_7;
  import8.Element _el_2;
  import8.DivElement _el_3;
  import8.DivElement _el_4;
  ViewContainer _appEl_5;
  NgIf _NgIf_5_7;
  ViewContainer _appEl_6;
  NgIf _NgIf_6_7;
  ViewContainer _appEl_7;
  NgIf _NgIf_7_7;
  var _expr_0;
  var _expr_1;
  bool _expr_2;
  bool _expr_3;
  bool _expr_5;
  bool _expr_6;
  static RenderComponentType _renderType;
  ViewMaterialExpansionPanel0(AppView<dynamic> parentView, num parentIndex) : super(import12.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckOnce, nodeDebugInfos_MaterialExpansionPanel0) {
    rootEl = import8.document.createElement('material-expansionpanel');
    _renderType ??= import14.appViewUtils.createRenderType('package:angular_components/material_expansionpanel/material_expansionpanel.html', ViewEncapsulation.Emulated, styles$MaterialExpansionPanel);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import8.HtmlElement parentRenderNode = initViewRoot(rootEl);
    _viewQuery_expandCollapseButton_0 = new import7.QueryList();
    var doc = import8.document;
    _el_0 = createAndAppendDbg(this, doc, 'div', parentRenderNode, 0, 5, 0);
    _el_0.className = 'panel themeable';
    createAttr(_el_0, 'keyupBoundary', '');
    createAttr(_el_0, 'role', 'group');
    addShimC(_el_0);
    _KeyUpBoundaryDirective_0_4 = new import2.KeyUpBoundaryDirective(_el_0);
    var _anchor_1 = ngAnchor.clone(false);
    _el_0.append(_anchor_1);
    dbgElm(this, _anchor_1, 1, 14, 2);
    _appEl_1 = new ViewContainer(1, 0, this, _anchor_1);
    TemplateRef _TemplateRef_1_6 = new TemplateRef(_appEl_1, viewFactory_MaterialExpansionPanel1);
    _NgIf_1_7 = new NgIf(_appEl_1, _TemplateRef_1_6);
    _el_2 = createAndAppendDbg(this, doc, 'main', _el_0, 2, 42, 2);
    addShimE(_el_2);
    _el_3 = createAndAppendDbg(this, doc, 'div', _el_2, 3, 43, 4);
    _el_3.className = 'content-wrapper';
    addShimC(_el_3);
    _el_4 = createAndAppendDbg(this, doc, 'div', _el_3, 4, 44, 6);
    _el_4.className = 'content';
    addShimC(_el_4);
    dbg(null, 45, 8);
    project(_el_4, 2);
    var _anchor_5 = ngAnchor.clone(false);
    _el_3.append(_anchor_5);
    dbgElm(this, _anchor_5, 5, 47, 6);
    _appEl_5 = new ViewContainer(5, 3, this, _anchor_5);
    TemplateRef _TemplateRef_5_6 = new TemplateRef(_appEl_5, viewFactory_MaterialExpansionPanel4);
    _NgIf_5_7 = new NgIf(_appEl_5, _TemplateRef_5_6);
    var _anchor_6 = ngAnchor.clone(false);
    _el_2.append(_anchor_6);
    dbgElm(this, _anchor_6, 6, 57, 4);
    _appEl_6 = new ViewContainer(6, 2, this, _anchor_6);
    TemplateRef _TemplateRef_6_6 = new TemplateRef(_appEl_6, viewFactory_MaterialExpansionPanel5);
    _NgIf_6_7 = new NgIf(_appEl_6, _TemplateRef_6_6);
    var _anchor_7 = ngAnchor.clone(false);
    _el_2.append(_anchor_7);
    dbgElm(this, _anchor_7, 7, 61, 4);
    _appEl_7 = new ViewContainer(7, 2, this, _anchor_7);
    TemplateRef _TemplateRef_7_6 = new TemplateRef(_appEl_7, viewFactory_MaterialExpansionPanel6);
    _NgIf_7_7 = new NgIf(_appEl_7, _TemplateRef_7_6);
    init(const [], const [], [_el_0, _anchor_1, _el_2, _el_3, _el_4, _anchor_5, _anchor_6, _anchor_7]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import2.KeyUpBoundaryDirective) && ((0 <= nodeIndex) && (nodeIndex <= 7)))) {
      return _KeyUpBoundaryDirective_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import6.MaterialExpansionPanel _ctx = ctx;
    dbg(1, 16, 10);
    _NgIf_1_7.ngIf = (!_ctx.isExpanded || !_ctx.hideExpandedHeader);
    dbg(5, 47, 13);
    _NgIf_5_7.ngIf = _ctx.shouldShowHiddenHeaderExpandIcon;
    dbg(6, 57, 9);
    _NgIf_6_7.ngIf = !_ctx.showSaveCancel;
    dbg(7, 62, 8);
    _NgIf_7_7.ngIf = _ctx.showSaveCancel;
    _appEl_1.detectChangesInNestedViews();
    _appEl_5.detectChangesInNestedViews();
    _appEl_6.detectChangesInNestedViews();
    _appEl_7.detectChangesInNestedViews();
    if (!import14.AppViewUtils.throwOnChanges) {
      if (_viewQuery_expandCollapseButton_0.dirty) {
        _viewQuery_expandCollapseButton_0.reset([
          _appEl_1.mapNestedViews(_ViewMaterialExpansionPanel1, (_ViewMaterialExpansionPanel1 nestedView) {
            return [nestedView._ButtonDirective_0_4.instance];
          }),
          _appEl_5.mapNestedViews(_ViewMaterialExpansionPanel4, (_ViewMaterialExpansionPanel4 nestedView) {
            return [nestedView._ButtonDirective_0_4.instance];
          })
        ]);
        ctx.expandCollapse = _viewQuery_expandCollapseButton_0.first;
      }
    }
    final currVal_0 = _ctx.name;
    if (import14.checkBinding(_expr_0, currVal_0)) {
      setAttr(_el_0, 'aria-label', currVal_0?.toString());
      _expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.isExpanded;
    if (import14.checkBinding(_expr_1, currVal_1)) {
      setAttr(_el_0, 'aria-expanded', currVal_1?.toString());
      _expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.isExpanded;
    if (import14.checkBinding(_expr_2, currVal_2)) {
      updateClass(_el_0, 'open', currVal_2);
      _expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.anotherExpanded;
    if (import14.checkBinding(_expr_3, currVal_3)) {
      updateClass(_el_0, 'background', currVal_3);
      _expr_3 = currVal_3;
    }
    final bool currVal_5 = !_ctx.isExpanded;
    if (import14.checkBinding(_expr_5, currVal_5)) {
      updateClass(_el_2, 'hidden', currVal_5);
      _expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.hideExpandedHeader;
    if (import14.checkBinding(_expr_6, currVal_6)) {
      updateClass(_el_3, 'hidden-header', currVal_6);
      _expr_6 = currVal_6;
    }
  }

  @override
  void destroyInternal() {
    _appEl_1.destroyNestedViews();
    _appEl_5.destroyNestedViews();
    _appEl_6.destroyNestedViews();
    _appEl_7.destroyNestedViews();
  }
}

AppView<import6.MaterialExpansionPanel> viewFactory_MaterialExpansionPanel0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialExpansionPanel0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialExpansionPanel1 = [
  new StaticNodeDebugInfo([import16.ButtonDirective], null, <String, dynamic>{'expandCollapseButton': null}),
  null,
  null,
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{})
];

class _ViewMaterialExpansionPanel1 extends DebugAppView<import6.MaterialExpansionPanel> {
  import8.Element _el_0;
  import17.ButtonDirectiveNgCd _ButtonDirective_0_4;
  import8.DivElement _el_1;
  import8.Element _el_2;
  import8.Text _text_3;
  ViewContainer _appEl_4;
  NgIf _NgIf_4_7;
  import8.DivElement _el_5;
  ViewContainer _appEl_6;
  NgIf _NgIf_6_7;
  bool _expr_0;
  bool _expr_1;
  var _expr_2;
  bool _expr_3;
  var _expr_4;
  _ViewMaterialExpansionPanel1(AppView<dynamic> parentView, num parentIndex) : super(import12.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialExpansionPanel1) {
    componentType = ViewMaterialExpansionPanel0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import8.document;
    _el_0 = doc.createElement('header');
    dbgElm(this, _el_0, 0, 14, 2);
    createAttr(_el_0, 'buttonDecorator', '');
    createAttr(_el_0, 'role', 'button');
    addShimE(_el_0);
    _ButtonDirective_0_4 = new import17.ButtonDirectiveNgCd(new import16.ButtonDirective(_el_0));
    _el_1 = createAndAppendDbg(this, doc, 'div', _el_0, 1, 22, 4);
    _el_1.className = 'panel-name';
    addShimC(_el_1);
    _el_2 = createAndAppendDbg(this, doc, 'p', _el_1, 2, 23, 6);
    _el_2.className = 'primary-text';
    addShimE(_el_2);
    _text_3 = new import8.Text('');
    _el_2.append(_text_3);
    dbgElm(this, _text_3, 3, 23, 30);
    var _anchor_4 = ngAnchor.clone(false);
    _el_1.append(_anchor_4);
    dbgElm(this, _anchor_4, 4, 24, 6);
    _appEl_4 = new ViewContainer(4, 1, this, _anchor_4);
    TemplateRef _TemplateRef_4_6 = new TemplateRef(_appEl_4, viewFactory_MaterialExpansionPanel2);
    _NgIf_4_7 = new NgIf(_appEl_4, _TemplateRef_4_6);
    dbg(null, 25, 6);
    project(_el_1, 0);
    _el_5 = createAndAppendDbg(this, doc, 'div', _el_0, 5, 28, 4);
    _el_5.className = 'panel-description';
    addShimC(_el_5);
    dbg(null, 29, 6);
    project(_el_5, 1);
    var _anchor_6 = ngAnchor.clone(false);
    _el_0.append(_anchor_6);
    dbgElm(this, _anchor_6, 6, 32, 4);
    _appEl_6 = new ViewContainer(6, 0, this, _anchor_6);
    TemplateRef _TemplateRef_6_6 = new TemplateRef(_appEl_6, viewFactory_MaterialExpansionPanel3);
    _NgIf_6_7 = new NgIf(_appEl_6, _TemplateRef_6_6);
    _el_0.addEventListener('click', eventHandler1(_ButtonDirective_0_4.instance.handleClick));
    _el_0.addEventListener('keypress', eventHandler1(_ButtonDirective_0_4.instance.handleKeyPress));
    final subscription_0 = _ButtonDirective_0_4.instance.trigger.listen(eventHandler0(ctx.handleHeaderClick));
    init([_el_0], [subscription_0], [_el_0, _el_1, _el_2, _text_3, _anchor_4, _el_5, _anchor_6]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import16.ButtonDirective) && ((0 <= nodeIndex) && (nodeIndex <= 6)))) {
      return _ButtonDirective_0_4.instance;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import6.MaterialExpansionPanel _ctx = ctx;
    bool firstCheck = (this.cdState == 0);
    dbg(0, 17, 10);
    final currVal_3 = _ctx.disabled;
    if (import14.checkBinding(_expr_3, currVal_3)) {
      _ButtonDirective_0_4.instance.disabled = currVal_3;
      _expr_3 = currVal_3;
    }
    dbg(4, 24, 32);
    _NgIf_4_7.ngIf = (_ctx.secondaryText != null);
    dbg(6, 33, 11);
    _NgIf_6_7.ngIf = _ctx.shouldShowExpandIcon;
    _appEl_4.detectChangesInNestedViews();
    _appEl_6.detectChangesInNestedViews();
    final bool currVal_0 = !_ctx.isExpanded;
    if (import14.checkBinding(_expr_0, currVal_0)) {
      updateClass(_el_0, 'closed', currVal_0);
      _expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.disableHeaderExpansion;
    if (import14.checkBinding(_expr_1, currVal_1)) {
      updateClass(_el_0, 'disable-header-expansion', currVal_1);
      _expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.headerMsg;
    if (import14.checkBinding(_expr_2, currVal_2)) {
      setAttr(_el_0, 'aria-label', currVal_2?.toString());
      _expr_2 = currVal_2;
    }
    _ButtonDirective_0_4.detectHostChanges(this, _el_0, firstCheck);
    dbg(3, 23, 30);
    final currVal_4 = (_ctx.name ?? '');
    if (import14.checkBinding(_expr_4, currVal_4)) {
      _text_3.text = currVal_4;
      _expr_4 = currVal_4;
    }
  }

  @override
  void dirtyParentQueriesInternal() {
    (parentView as ViewMaterialExpansionPanel0)._viewQuery_expandCollapseButton_0.setDirty();
  }

  @override
  void destroyInternal() {
    _appEl_4.destroyNestedViews();
    _appEl_6.destroyNestedViews();
  }
}

AppView<import6.MaterialExpansionPanel> viewFactory_MaterialExpansionPanel1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialExpansionPanel1(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialExpansionPanel2 = [null, null];

class _ViewMaterialExpansionPanel2 extends DebugAppView<import6.MaterialExpansionPanel> {
  import8.Element _el_0;
  import8.Text _text_1;
  var _expr_0;
  _ViewMaterialExpansionPanel2(AppView<dynamic> parentView, num parentIndex) : super(import12.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialExpansionPanel2) {
    componentType = ViewMaterialExpansionPanel0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import8.document;
    _el_0 = doc.createElement('p');
    dbgElm(this, _el_0, 0, 24, 6);
    _el_0.className = 'secondary-text';
    addShimE(_el_0);
    _text_1 = new import8.Text('');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 24, 62);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import6.MaterialExpansionPanel _ctx = ctx;
    dbg(1, 24, 62);
    final currVal_0 = (_ctx.secondaryText ?? '');
    if (import14.checkBinding(_expr_0, currVal_0)) {
      _text_1.text = currVal_0;
      _expr_0 = currVal_0;
    }
  }
}

AppView<import6.MaterialExpansionPanel> viewFactory_MaterialExpansionPanel2(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialExpansionPanel2(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialExpansionPanel3 = [
  new StaticNodeDebugInfo([import16.ButtonDirective, import18.GlyphComponent], import18.GlyphComponent, <String, dynamic>{})
];

class _ViewMaterialExpansionPanel3 extends DebugAppView<import6.MaterialExpansionPanel> {
  import8.Element _el_0;
  import19.ViewGlyphComponent0 _compView_0;
  import17.ButtonDirectiveNgCd _ButtonDirective_0_4;
  import18.GlyphComponent _GlyphComponent_0_5;
  bool _expr_0;
  var _expr_1;
  _ViewMaterialExpansionPanel3(AppView<dynamic> parentView, num parentIndex) : super(import12.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialExpansionPanel3) {
    componentType = ViewMaterialExpansionPanel0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import19.ViewGlyphComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 32, 4);
    createAttr(_el_0, 'buttonDecorator', '');
    _el_0.className = 'expand-button';
    createAttr(_el_0, 'role', 'button');
    addShimC(_el_0);
    _ButtonDirective_0_4 = new import17.ButtonDirectiveNgCd(new import16.ButtonDirective(_el_0));
    _GlyphComponent_0_5 = new import18.GlyphComponent(_el_0);
    _compView_0.create(_GlyphComponent_0_5, []);
    _el_0.addEventListener('click', eventHandler1(_ButtonDirective_0_4.instance.handleClick));
    _el_0.addEventListener('keypress', eventHandler1(_ButtonDirective_0_4.instance.handleKeyPress));
    final subscription_0 = _ButtonDirective_0_4.instance.trigger.listen(eventHandler0(ctx.handleExpandIconClick));
    init([_el_0], [subscription_0], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import16.ButtonDirective) && (0 == nodeIndex))) {
      return _ButtonDirective_0_4.instance;
    }
    if ((identical(token, import18.GlyphComponent) && (0 == nodeIndex))) {
      return _GlyphComponent_0_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import6.MaterialExpansionPanel _ctx = ctx;
    bool changed = true;
    bool firstCheck = (this.cdState == 0);
    changed = false;
    dbg(0, 35, 11);
    final currVal_1 = _ctx.expandIcon;
    if (import14.checkBinding(_expr_1, currVal_1)) {
      _GlyphComponent_0_5.icon = currVal_1;
      changed = true;
      _expr_1 = currVal_1;
    }
    if (changed) {
      _compView_0.markAsCheckOnce();
    }
    final currVal_0 = _ctx.shouldFlipExpandIcon;
    if (import14.checkBinding(_expr_0, currVal_0)) {
      updateElemClass(_el_0, 'expand-more', currVal_0);
      _expr_0 = currVal_0;
    }
    _ButtonDirective_0_4.detectHostChanges(_compView_0, _el_0, firstCheck);
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
  }
}

AppView<import6.MaterialExpansionPanel> viewFactory_MaterialExpansionPanel3(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialExpansionPanel3(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialExpansionPanel4 = [
  new StaticNodeDebugInfo([import16.ButtonDirective, import18.GlyphComponent], import18.GlyphComponent, <String, dynamic>{'expandCollapseButton': import18.GlyphComponent})
];

class _ViewMaterialExpansionPanel4 extends DebugAppView<import6.MaterialExpansionPanel> {
  import8.Element _el_0;
  import19.ViewGlyphComponent0 _compView_0;
  import17.ButtonDirectiveNgCd _ButtonDirective_0_4;
  import18.GlyphComponent _GlyphComponent_0_5;
  var _expr_0;
  var _expr_1;
  _ViewMaterialExpansionPanel4(AppView<dynamic> parentView, num parentIndex) : super(import12.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialExpansionPanel4) {
    componentType = ViewMaterialExpansionPanel0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import19.ViewGlyphComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 47, 6);
    createAttr(_el_0, 'buttonDecorator', '');
    _el_0.className = 'expand-button';
    createAttr(_el_0, 'role', 'button');
    addShimC(_el_0);
    _ButtonDirective_0_4 = new import17.ButtonDirectiveNgCd(new import16.ButtonDirective(_el_0));
    _GlyphComponent_0_5 = new import18.GlyphComponent(_el_0);
    _compView_0.create(_GlyphComponent_0_5, []);
    _el_0.addEventListener('click', eventHandler1(_ButtonDirective_0_4.instance.handleClick));
    _el_0.addEventListener('keypress', eventHandler1(_ButtonDirective_0_4.instance.handleKeyPress));
    final subscription_0 = _ButtonDirective_0_4.instance.trigger.listen(eventHandler0(ctx.collapse));
    init([_el_0], [subscription_0], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import16.ButtonDirective) && (0 == nodeIndex))) {
      return _ButtonDirective_0_4.instance;
    }
    if ((identical(token, import18.GlyphComponent) && (0 == nodeIndex))) {
      return _GlyphComponent_0_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import6.MaterialExpansionPanel _ctx = ctx;
    bool changed = true;
    bool firstCheck = (this.cdState == 0);
    changed = false;
    dbg(0, 49, 13);
    final currVal_1 = _ctx.expandIcon;
    if (import14.checkBinding(_expr_1, currVal_1)) {
      _GlyphComponent_0_5.icon = currVal_1;
      changed = true;
      _expr_1 = currVal_1;
    }
    if (changed) {
      _compView_0.markAsCheckOnce();
    }
    final currVal_0 = _ctx.closePanelMsg;
    if (import14.checkBinding(_expr_0, currVal_0)) {
      setAttr(_el_0, 'aria-label', currVal_0?.toString());
      _expr_0 = currVal_0;
    }
    _ButtonDirective_0_4.detectHostChanges(_compView_0, _el_0, firstCheck);
    _compView_0.detectChanges();
  }

  @override
  void dirtyParentQueriesInternal() {
    (parentView as ViewMaterialExpansionPanel0)._viewQuery_expandCollapseButton_0.setDirty();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
  }
}

AppView<import6.MaterialExpansionPanel> viewFactory_MaterialExpansionPanel4(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialExpansionPanel4(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialExpansionPanel5 = [null];

class _ViewMaterialExpansionPanel5 extends DebugAppView<import6.MaterialExpansionPanel> {
  import8.DivElement _el_0;
  _ViewMaterialExpansionPanel5(AppView<dynamic> parentView, num parentIndex) : super(import12.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialExpansionPanel5) {
    componentType = ViewMaterialExpansionPanel0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import8.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 57, 4);
    _el_0.className = 'toolbelt';
    addShimC(_el_0);
    dbg(null, 58, 6);
    project(_el_0, 3);
    init([_el_0], const [], [_el_0]);
    return null;
  }
}

AppView<import6.MaterialExpansionPanel> viewFactory_MaterialExpansionPanel5(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialExpansionPanel5(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialExpansionPanel6 = [
  new StaticNodeDebugInfo([import2.MaterialYesNoButtonsComponent, import2.EnterAcceptsDirective], import2.MaterialYesNoButtonsComponent, <String, dynamic>{})
];

class _ViewMaterialExpansionPanel6 extends DebugAppView<import6.MaterialExpansionPanel> {
  import8.Element _el_0;
  import20.ViewMaterialYesNoButtonsComponent0 _compView_0;
  import2.MaterialYesNoButtonsComponent _MaterialYesNoButtonsComponent_0_4;
  import2.EnterAcceptsDirective _EnterAcceptsDirective_0_5;
  String _expr_0;
  String _expr_1;
  bool _expr_2;
  bool _expr_3;
  bool _expr_4;
  _ViewMaterialExpansionPanel6(AppView<dynamic> parentView, num parentIndex) : super(import12.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialExpansionPanel6) {
    componentType = ViewMaterialExpansionPanel0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import20.ViewMaterialYesNoButtonsComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 61, 4);
    _el_0.className = 'action-buttons';
    createAttr(_el_0, 'reverse', '');
    addShimC(_el_0);
    _MaterialYesNoButtonsComponent_0_4 = new import2.MaterialYesNoButtonsComponent();
    _EnterAcceptsDirective_0_5 = new import2.EnterAcceptsDirective(_MaterialYesNoButtonsComponent_0_4, _el_0, (parentView as ViewMaterialExpansionPanel0)._KeyUpBoundaryDirective_0_4);
    _compView_0.create(_MaterialYesNoButtonsComponent_0_4, []);
    final subscription_0 = _MaterialYesNoButtonsComponent_0_4.yes.listen(eventHandler0(ctx.doSave));
    final subscription_1 = _MaterialYesNoButtonsComponent_0_4.no.listen(eventHandler0(ctx.doCancel));
    init([_el_0], [subscription_0, subscription_1], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import2.MaterialYesNoButtonsComponent) && (0 == nodeIndex))) {
      return _MaterialYesNoButtonsComponent_0_4;
    }
    if ((identical(token, import2.EnterAcceptsDirective) && (0 == nodeIndex))) {
      return _EnterAcceptsDirective_0_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import6.MaterialExpansionPanel _ctx = ctx;
    bool changed = true;
    changed = false;
    dbg(0, 66, 8);
    final currVal_0 = _ctx.saveText;
    if (import14.checkBinding(_expr_0, currVal_0)) {
      _MaterialYesNoButtonsComponent_0_4.yesText = currVal_0;
      changed = true;
      _expr_0 = currVal_0;
    }
    dbg(0, 67, 8);
    final currVal_1 = _ctx.cancelText;
    if (import14.checkBinding(_expr_1, currVal_1)) {
      _MaterialYesNoButtonsComponent_0_4.noText = currVal_1;
      changed = true;
      _expr_1 = currVal_1;
    }
    dbg(0, 68, 8);
    final currVal_2 = _ctx.saveDisabled;
    if (import14.checkBinding(_expr_2, currVal_2)) {
      _MaterialYesNoButtonsComponent_0_4.yesDisabled = currVal_2;
      changed = true;
      _expr_2 = currVal_2;
    }
    dbg(0, 65, 8);
    final currVal_3 = _ctx.activeSaveCancelAction;
    if (import14.checkBinding(_expr_3, currVal_3)) {
      _MaterialYesNoButtonsComponent_0_4.pending = currVal_3;
      changed = true;
      _expr_3 = currVal_3;
    }
    if (changed) {
      _compView_0.markAsCheckOnce();
    }
    dbg(0, 69, 8);
    final currVal_4 = _ctx.enterAccepts;
    if (import14.checkBinding(_expr_4, currVal_4)) {
      _EnterAcceptsDirective_0_5.enterAccepts = currVal_4;
      _expr_4 = currVal_4;
    }
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
    dbg(0, 61, 4);
    _EnterAcceptsDirective_0_5.ngOnDestroy();
  }
}

AppView<import6.MaterialExpansionPanel> viewFactory_MaterialExpansionPanel6(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialExpansionPanel6(parentView, parentIndex);
}

const List<dynamic> styles$MaterialExpansionPanelHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialExpansionPanelHost0 = [
  new StaticNodeDebugInfo([import6.MaterialExpansionPanel, import21.DeferredContentAware], import6.MaterialExpansionPanel, <String, dynamic>{})
];

class _ViewMaterialExpansionPanelHost0 extends DebugAppView<dynamic> {
  ViewMaterialExpansionPanel0 _compView_0;
  import6.MaterialExpansionPanel _MaterialExpansionPanel_0_4;
  import7.QueryList _query_AutoFocusDirective_0_0;
  static RenderComponentType _renderType;
  _ViewMaterialExpansionPanelHost0(AppView<dynamic> parentView, num parentIndex) : super(import12.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialExpansionPanelHost0) {
    _renderType ??= import14.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialExpansionPanelHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialExpansionPanel0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _MaterialExpansionPanel_0_4 = new import6.MaterialExpansionPanel(this.injectorGet(import22.ManagedZone, viewData.parentIndex), _compView_0.ref, this.injectorGet(import23.DomService, viewData.parentIndex));
    _query_AutoFocusDirective_0_0 = new import7.QueryList();
    _query_AutoFocusDirective_0_0.reset([]);
    _MaterialExpansionPanel_0_4.autoFocusChild = _query_AutoFocusDirective_0_0.first;
    _compView_0.create(_MaterialExpansionPanel_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialExpansionPanel_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((identical(token, import6.MaterialExpansionPanel) || identical(token, import21.DeferredContentAware)) && (0 == nodeIndex))) {
      return _MaterialExpansionPanel_0_4;
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
    if ((firstCheck && !import14.AppViewUtils.throwOnChanges)) {
      _MaterialExpansionPanel_0_4.ngOnInit();
    }
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
    dbg(0, 0, 0);
    _MaterialExpansionPanel_0_4.ngOnDestroy();
  }
}

AppView viewFactory_MaterialExpansionPanelHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialExpansionPanelHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialExpansionPanelNgFactory = const ComponentFactory('material-expansionpanel', viewFactory_MaterialExpansionPanelHost0, import6.MaterialExpansionPanel, _MaterialExpansionPanelMetadata);
final ComponentFactory MaterialExpansionPanelNgFactory = _MaterialExpansionPanelNgFactory;
const _MaterialExpansionPanelMetadata = const [];
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
    MaterialExpansionPanel,
    MaterialExpansionPanelNgFactory,
  );
  _ngRef.registerFactory(
    MaterialExpansionPanel,
    (ManagedZone p0, ChangeDetectorRef p1, DomService p2) => new MaterialExpansionPanel(p0, p1, p2),
  );
  _ngRef.registerDependencies(
    MaterialExpansionPanel,
    const [
      const [
        ManagedZone,
      ],
      const [
        ChangeDetectorRef,
      ],
      const [
        DomService,
      ],
    ],
  );
}
