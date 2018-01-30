// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_tree_dropdown.dart';
export 'material_tree_dropdown.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/content/deferred_content.dart';
import 'package:angular_components/focus/focus.dart';
import 'package:angular_components/focus/keyboard_only_focus_indicator.dart';
import 'package:angular_components/glyph/glyph.dart';
import 'package:angular_components/laminate/enums/alignment.dart';
import 'package:angular_components/material_popup/material_popup.dart';
import 'package:angular_components/mixins/material_dropdown_base.dart';
import 'package:angular_components/model/selection/select.dart';
import 'package:angular_components/model/selection/selection_container.dart';
import 'package:angular_components/model/selection/selection_model.dart';
import 'package:angular_components/model/selection/selection_options.dart';
import 'package:angular_components/model/ui/has_renderer.dart';
import 'package:angular_components/src/material_tree/material_tree_filter.dart';
import 'package:angular_components/src/material_tree/material_tree_root.dart';
import 'package:angular_components/utils/browser/dom_service/dom_service.dart';
import 'material_tree_impl.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'material_tree_impl.template.dart' as _ref0;
import 'package:angular/angular.template.dart' as _ref1;
import 'package:angular_components/content/deferred_content.template.dart' as _ref2;
import 'package:angular_components/focus/focus.template.dart' as _ref3;
import 'package:angular_components/focus/keyboard_only_focus_indicator.template.dart' as _ref4;
import 'package:angular_components/glyph/glyph.template.dart' as _ref5;
import 'package:angular_components/laminate/enums/alignment.template.dart' as _ref6;
import 'package:angular_components/material_popup/material_popup.template.dart' as _ref7;
import 'package:angular_components/mixins/material_dropdown_base.template.dart' as _ref8;
import 'package:angular_components/model/selection/select.template.dart' as _ref9;
import 'package:angular_components/model/selection/selection_container.template.dart' as _ref10;
import 'package:angular_components/model/selection/selection_model.template.dart' as _ref11;
import 'package:angular_components/model/selection/selection_options.template.dart' as _ref12;
import 'package:angular_components/model/ui/has_renderer.template.dart' as _ref13;
import 'package:angular_components/src/material_tree/material_tree_filter.template.dart' as _ref14;
import 'package:angular_components/src/material_tree/material_tree_root.template.dart' as _ref15;
import 'package:angular_components/utils/browser/dom_service/dom_service.template.dart' as _ref16;

import 'package:angular_components/src/material_tree/material_tree_dropdown.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import '../../focus/keyboard_only_focus_indicator.dart' as import2;
import '../laminate/popup/popup_source_directive.dart' as import3;
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/common/directives/ng_if.dart';
import '../../material_popup/material_popup.dart' as import6;
import '../../content/deferred_content_aware.dart' as import7;
import '../../mixins/material_dropdown_base.dart' as import8;
import '../laminate/popup/popup_hierarchy.dart' as import9;
import '../laminate/popup/popup_ref.dart' as import10;
import '../../content/deferred_content.dart' as import11;
import 'package:angular/src/debug/debug_app_view.dart';
import 'material_tree_dropdown.dart' as import13;
import 'package:angular/src/core/linker/query_list.dart' as import14;
import 'dart:html' as import15;
import 'package:angular/src/core/linker/view_container.dart';
import '../../material_popup/material_popup.template.dart' as import17;
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import20;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import22;
import 'package:angular/angular.dart';
import '../../utils/browser/dom_service/dom_service.dart' as import24;
import '../laminate/popup/dom_popup_source.dart' as import25;
import '../../utils/angular/reference/reference.dart' as import26;
import 'package:angular/src/core/zone/ng_zone.dart' as import27;
import '../laminate/overlay/overlay_service.dart' as import28;
import '../../laminate/overlay/zindexer.dart' as import29;
import '../laminate/popup/popup_size_provider.dart' as import30;
import 'package:angular/src/core/linker/element_ref.dart';
import '../../glyph/glyph.dart' as import32;
import '../../glyph/glyph.template.dart' as import33;
import 'material_tree_filter.dart' as import34;
import 'material_tree_filter.template.dart' as import35;
import 'material_tree_root.dart' as import36;
import 'material_tree_impl.dart' as import37;
import 'material_tree_impl.template.dart' as import38;
import '../../focus/focus.dart' as import39;

const List<dynamic> styles$MaterialTreeDropdownComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeDropdownComponent0 = [
  new StaticNodeDebugInfo([import2.KeyboardOnlyFocusIndicatorDirective, import3.PopupSourceDirective], null, <String, dynamic>{'button': import3.PopupSourceDirective}),
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([import6.MaterialPopupComponent, import7.DeferredContentAware, import8.DropdownHandle, import9.PopupHierarchy, import10.PopupRef], import6.MaterialPopupComponent, <String, dynamic>{}),
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, import11.DeferredContentDirective], null, <String, dynamic>{})
];

class ViewMaterialTreeDropdownComponent0 extends DebugAppView<import13.MaterialTreeDropdownComponent> {
  import14.QueryList _viewQuery_materialTreeFilter_0;
  import15.DivElement _el_0;
  import2.KeyboardOnlyFocusIndicatorDirective _KeyboardOnlyFocusIndicatorDirective_0_4;
  import3.PopupSourceDirective _PopupSourceDirective_0_5;
  ViewContainer _appEl_1;
  NgIf _NgIf_1_7;
  ViewContainer _appEl_2;
  NgIf _NgIf_2_7;
  ViewContainer _appEl_3;
  NgIf _NgIf_3_7;
  import15.Element _el_4;
  import17.ViewMaterialPopupComponent0 _compView_4;
  ViewContainer _appEl_4;
  import6.MaterialPopupComponent _MaterialPopupComponent_4_6;
  dynamic _DeferredContentAware_4_7;
  dynamic __PopupHierarchy_4_9;
  dynamic __PopupRef_4_10;
  import15.DivElement _el_5;
  ViewContainer _appEl_6;
  NgIf _NgIf_6_7;
  ViewContainer _appEl_7;
  import11.DeferredContentDirective _DeferredContentDirective_7_7;
  bool _expr_0;
  var _expr_5;
  var _expr_6;
  bool _expr_8;
  static RenderComponentType _renderType;
  ViewMaterialTreeDropdownComponent0(AppView<dynamic> parentView, num parentIndex) : super(import20.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeDropdownComponent0) {
    rootEl = import15.document.createElement('material-tree-dropdown');
    _renderType ??= import22.appViewUtils.createRenderType('package:angular_components/src/material_tree/material_tree_dropdown.html', ViewEncapsulation.Emulated, styles$MaterialTreeDropdownComponent);
    setupComponentType(_renderType);
  }
  dynamic get _PopupHierarchy_4_9 {
    dbg(4, 30, 0);
    if ((this.__PopupHierarchy_4_9 == null)) {
      (__PopupHierarchy_4_9 = import6.getHierarchy(this._MaterialPopupComponent_4_6));
    }
    return this.__PopupHierarchy_4_9;
  }

  dynamic get _PopupRef_4_10 {
    dbg(4, 30, 0);
    if ((this.__PopupRef_4_10 == null)) {
      (__PopupRef_4_10 = import6.getResolvedPopupRef(this._MaterialPopupComponent_4_6));
    }
    return this.__PopupRef_4_10;
  }

  @override
  ComponentRef build() {
    final import15.HtmlElement parentRenderNode = initViewRoot(rootEl);
    _viewQuery_materialTreeFilter_0 = new import14.QueryList();
    var doc = import15.document;
    _el_0 = createAndAppendDbg(this, doc, 'div', parentRenderNode, 0, 5, 0);
    _el_0.className = 'button';
    createAttr(_el_0, 'keyboardOnlyFocusIndicator', '');
    createAttr(_el_0, 'popupSource', '');
    addShimC(_el_0);
    _KeyboardOnlyFocusIndicatorDirective_0_4 = new import2.KeyboardOnlyFocusIndicatorDirective(_el_0, parentView.injectorGet(import24.DomService, viewData.parentIndex));
    _PopupSourceDirective_0_5 = new import3.PopupSourceDirective(parentView.injectorGet(import25.DomPopupSourceFactory, viewData.parentIndex), _el_0, parentView.injectorGet(import26.ReferenceDirective, viewData.parentIndex, null));
    var _anchor_1 = ngAnchor.clone(false);
    _el_0.append(_anchor_1);
    dbgElm(this, _anchor_1, 1, 12, 2);
    _appEl_1 = new ViewContainer(1, 0, this, _anchor_1);
    TemplateRef _TemplateRef_1_6 = new TemplateRef(_appEl_1, viewFactory_MaterialTreeDropdownComponent1);
    _NgIf_1_7 = new NgIf(_appEl_1, _TemplateRef_1_6);
    var _anchor_2 = ngAnchor.clone(false);
    _el_0.append(_anchor_2);
    dbgElm(this, _anchor_2, 2, 17, 2);
    _appEl_2 = new ViewContainer(2, 0, this, _anchor_2);
    TemplateRef _TemplateRef_2_6 = new TemplateRef(_appEl_2, viewFactory_MaterialTreeDropdownComponent2);
    _NgIf_2_7 = new NgIf(_appEl_2, _TemplateRef_2_6);
    var _anchor_3 = ngAnchor.clone(false);
    _el_0.append(_anchor_3);
    dbgElm(this, _anchor_3, 3, 22, 2);
    _appEl_3 = new ViewContainer(3, 0, this, _anchor_3);
    TemplateRef _TemplateRef_3_6 = new TemplateRef(_appEl_3, viewFactory_MaterialTreeDropdownComponent3);
    _NgIf_3_7 = new NgIf(_appEl_3, _TemplateRef_3_6);
    _compView_4 = new import17.ViewMaterialPopupComponent0(this, 4);
    _el_4 = _compView_4.rootEl;
    parentRenderNode.append(_el_4);
    dbgElm(this, _el_4, 4, 30, 0);
    createAttr(_el_4, 'enforceSpaceConstraints', '');
    createAttr(_el_4, 'trackLayoutChanges', '');
    addShimC(_el_4);
    _appEl_4 = new ViewContainer(4, null, this, _el_4);
    _MaterialPopupComponent_4_6 = new import6.MaterialPopupComponent(parentView.injectorGet(import9.PopupHierarchy, viewData.parentIndex, null), parentView.injectorGet(import6.MaterialPopupComponent, viewData.parentIndex, null), null, parentView.injectorGet(import27.NgZone, viewData.parentIndex), parentView.injectorGet(import28.OverlayService, viewData.parentIndex), parentView.injectorGet(import29.ZIndexer, viewData.parentIndex), parentView.injectorGet(const OpaqueToken('defaultPopupPositions'), viewData.parentIndex), parentView.injectorGet(const OpaqueToken('overlayRepositionLoop'), viewData.parentIndex), parentView.injectorGet(import30.PopupSizeProvider, viewData.parentIndex, null), _compView_4.ref, _appEl_4, new ElementRef(_el_4));
    _DeferredContentAware_4_7 = _MaterialPopupComponent_4_6;
    _el_5 = doc.createElement('div');
    dbgElm(this, _el_5, 5, 36, 2);
    createAttr(_el_5, 'header', '');
    addShimC(_el_5);
    dbg(null, 37, 4);
    project(_el_5, 0);
    var _anchor_6 = ngAnchor.clone(false);
    _el_5.append(_anchor_6);
    dbgElm(this, _anchor_6, 6, 38, 4);
    _appEl_6 = new ViewContainer(6, 5, this, _anchor_6);
    TemplateRef _TemplateRef_6_6 = new TemplateRef(_appEl_6, viewFactory_MaterialTreeDropdownComponent4);
    _NgIf_6_7 = new NgIf(_appEl_6, _TemplateRef_6_6);
    var _anchor_7 = ngAnchor.clone(false);
    dbgElm(this, _anchor_7, 7, 47, 2);
    _appEl_7 = new ViewContainer(7, 4, this, _anchor_7);
    TemplateRef _TemplateRef_7_6 = new TemplateRef(_appEl_7, viewFactory_MaterialTreeDropdownComponent5);
    _DeferredContentDirective_7_7 = new import11.DeferredContentDirective(_appEl_7, _TemplateRef_7_6, _DeferredContentAware_4_7);
    _compView_4.create(_MaterialPopupComponent_4_6, [
      [_el_5],
      [_appEl_7],
      const []
    ]);
    _el_0.addEventListener('focus', eventHandler1(_handle_focus_0_0));
    _el_0.addEventListener('click', eventHandler1(_handle_click_0_1));
    _el_0.addEventListener('keyup', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_4.resetOutline));
    _el_0.addEventListener('blur', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_4.resetOutline));
    _el_0.addEventListener('mousedown', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_4.hideOutline));
    final subscription_0 = _MaterialPopupComponent_4_6.onVisible.listen(eventHandler1(_handle_visibleChange_4_0));
    init(const [], [subscription_0], [_el_0, _anchor_1, _anchor_2, _anchor_3, _el_4, _el_5, _anchor_6, _anchor_7]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import2.KeyboardOnlyFocusIndicatorDirective) && ((0 <= nodeIndex) && (nodeIndex <= 3)))) {
      return _KeyboardOnlyFocusIndicatorDirective_0_4;
    }
    if ((identical(token, import3.PopupSourceDirective) && ((0 <= nodeIndex) && (nodeIndex <= 3)))) {
      return _PopupSourceDirective_0_5;
    }
    if ((identical(token, import11.DeferredContentDirective) && (7 == nodeIndex))) {
      return _DeferredContentDirective_7_7;
    }
    if (((identical(token, import6.MaterialPopupComponent) || identical(token, import8.DropdownHandle)) && ((4 <= nodeIndex) && (nodeIndex <= 7)))) {
      return _MaterialPopupComponent_4_6;
    }
    if ((identical(token, import7.DeferredContentAware) && ((4 <= nodeIndex) && (nodeIndex <= 7)))) {
      return _DeferredContentAware_4_7;
    }
    if ((identical(token, import9.PopupHierarchy) && ((4 <= nodeIndex) && (nodeIndex <= 7)))) {
      return _PopupHierarchy_4_9;
    }
    if ((identical(token, import10.PopupRef) && ((4 <= nodeIndex) && (nodeIndex <= 7)))) {
      return _PopupRef_4_10;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import13.MaterialTreeDropdownComponent _ctx = ctx;
    bool firstCheck = (this.cdState == 0);
    dbg(1, 13, 4);
    _NgIf_1_7.ngIf = !_ctx.showFilterInsideButton;
    dbg(2, 18, 4);
    _NgIf_2_7.ngIf = !_ctx.showFilterInsideButton;
    dbg(3, 24, 4);
    _NgIf_3_7.ngIf = _ctx.showFilterInsideButton;
    if (firstCheck) {
      _MaterialPopupComponent_4_6.enforceSpaceConstraints = true;
      _MaterialPopupComponent_4_6.trackLayoutChanges = true;
    }
    dbg(4, 33, 2);
    final currVal_5 = _ctx.popupPositions;
    if (import22.checkBinding(_expr_5, currVal_5)) {
      _MaterialPopupComponent_4_6.preferredPositions = currVal_5;
      _expr_5 = currVal_5;
    }
    dbg(4, 34, 2);
    final currVal_6 = _PopupSourceDirective_0_5;
    if (import22.checkBinding(_expr_6, currVal_6)) {
      _MaterialPopupComponent_4_6.source = currVal_6;
      _expr_6 = currVal_6;
    }
    dbg(4, 35, 2);
    final currVal_8 = _ctx.visible;
    if (import22.checkBinding(_expr_8, currVal_8)) {
      _MaterialPopupComponent_4_6.visible = currVal_8;
      _expr_8 = currVal_8;
    }
    dbg(6, 39, 8);
    _NgIf_6_7.ngIf = (_ctx.supportsFiltering && _ctx.showFilterInsidePopup);
    _appEl_1.detectChangesInNestedViews();
    _appEl_2.detectChangesInNestedViews();
    _appEl_3.detectChangesInNestedViews();
    _appEl_4.detectChangesInNestedViews();
    _appEl_6.detectChangesInNestedViews();
    _appEl_7.detectChangesInNestedViews();
    if (!import22.AppViewUtils.throwOnChanges) {
      if (_viewQuery_materialTreeFilter_0.dirty) {
        _viewQuery_materialTreeFilter_0.reset([
          _appEl_3.mapNestedViews(_ViewMaterialTreeDropdownComponent3, (_ViewMaterialTreeDropdownComponent3 nestedView) {
            return [nestedView._MaterialTreeFilterComponent_0_4];
          })
        ]);
        ctx.materialTreeFilterComponent = _viewQuery_materialTreeFilter_0.first;
      }
    }
    final bool currVal_0 = !_ctx.showFilterInsideButton;
    if (import22.checkBinding(_expr_0, currVal_0)) {
      updateClass(_el_0, 'border', currVal_0);
      _expr_0 = currVal_0;
    }
    _compView_4.detectHostChanges(firstCheck);
    _compView_4.detectChanges();
    if (!import22.AppViewUtils.throwOnChanges) {
      dbg(0, 5, 0);
      if (firstCheck) {
        _PopupSourceDirective_0_5.ngAfterViewInit();
      }
      dbg(4, 30, 0);
      if (firstCheck) {
        _MaterialPopupComponent_4_6.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    _appEl_1.destroyNestedViews();
    _appEl_2.destroyNestedViews();
    _appEl_3.destroyNestedViews();
    _appEl_4.destroyNestedViews();
    _appEl_6.destroyNestedViews();
    _appEl_7.destroyNestedViews();
    _compView_4.destroy();
    dbg(0, 5, 0);
    _PopupSourceDirective_0_5.ngOnDestroy();
    dbg(7, 47, 2);
    _DeferredContentDirective_7_7.ngOnDestroy();
    dbg(4, 30, 0);
    _MaterialPopupComponent_4_6.ngOnDestroy();
  }

  void _handle_focus_0_0($event) {
    dbg(0, 9, 5);
    ctx.visible = true;
  }

  void _handle_click_0_1($event) {
    dbg(0, 10, 5);
    ctx.visible = !ctx.visible;
    dbg(0, 5, 0);
    _KeyboardOnlyFocusIndicatorDirective_0_4.hideOutline();
  }

  void _handle_visibleChange_4_0($event) {
    dbg(4, 35, 2);
    ctx.visible = $event;
  }
}

AppView<import13.MaterialTreeDropdownComponent> viewFactory_MaterialTreeDropdownComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialTreeDropdownComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeDropdownComponent1 = [null, null];

class _ViewMaterialTreeDropdownComponent1 extends DebugAppView<import13.MaterialTreeDropdownComponent> {
  import15.Element _el_0;
  import15.Text _text_1;
  var _expr_0;
  _ViewMaterialTreeDropdownComponent1(AppView<dynamic> parentView, num parentIndex) : super(import20.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeDropdownComponent1) {
    componentType = ViewMaterialTreeDropdownComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import15.document;
    _el_0 = doc.createElement('span');
    dbgElm(this, _el_0, 0, 12, 2);
    _el_0.className = 'button-text';
    addShimE(_el_0);
    _text_1 = new import15.Text('');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 14, 24);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import13.MaterialTreeDropdownComponent _ctx = ctx;
    dbg(1, 14, 24);
    final currVal_0 = import22.interpolate0(_ctx.placeholder);
    if (import22.checkBinding(_expr_0, currVal_0)) {
      _text_1.text = currVal_0;
      _expr_0 = currVal_0;
    }
  }
}

AppView<import13.MaterialTreeDropdownComponent> viewFactory_MaterialTreeDropdownComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeDropdownComponent1(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeDropdownComponent2 = [
  new StaticNodeDebugInfo([import32.GlyphComponent], import32.GlyphComponent, <String, dynamic>{})
];

class _ViewMaterialTreeDropdownComponent2 extends DebugAppView<import13.MaterialTreeDropdownComponent> {
  import15.Element _el_0;
  import33.ViewGlyphComponent0 _compView_0;
  import32.GlyphComponent _GlyphComponent_0_4;
  _ViewMaterialTreeDropdownComponent2(AppView<dynamic> parentView, num parentIndex) : super(import20.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeDropdownComponent2) {
    componentType = ViewMaterialTreeDropdownComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import33.ViewGlyphComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 17, 2);
    _el_0.className = 'icon';
    createAttr(_el_0, 'icon', 'arrow_drop_down');
    addShimC(_el_0);
    _GlyphComponent_0_4 = new import32.GlyphComponent(_el_0);
    _compView_0.create(_GlyphComponent_0_4, []);
    init([_el_0], const [], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import32.GlyphComponent) && (0 == nodeIndex))) {
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
      _GlyphComponent_0_4.icon = 'arrow_drop_down';
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

AppView<import13.MaterialTreeDropdownComponent> viewFactory_MaterialTreeDropdownComponent2(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeDropdownComponent2(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeDropdownComponent3 = [
  new StaticNodeDebugInfo([import34.MaterialTreeFilterComponent], import34.MaterialTreeFilterComponent, <String, dynamic>{'materialTreeFilter': import34.MaterialTreeFilterComponent})
];

class _ViewMaterialTreeDropdownComponent3 extends DebugAppView<import13.MaterialTreeDropdownComponent> {
  import15.Element _el_0;
  import35.ViewMaterialTreeFilterComponent0 _compView_0;
  import34.MaterialTreeFilterComponent _MaterialTreeFilterComponent_0_4;
  String _expr_0;
  var _expr_1;
  _ViewMaterialTreeDropdownComponent3(AppView<dynamic> parentView, num parentIndex) : super(import20.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeDropdownComponent3) {
    componentType = ViewMaterialTreeDropdownComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import35.ViewMaterialTreeFilterComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 22, 2);
    addShimC(_el_0);
    _MaterialTreeFilterComponent_0_4 = new import34.MaterialTreeFilterComponent(parentView.parentView.injectorGet(import36.MaterialTreeRoot, parentView.viewData.parentIndex, null));
    _compView_0.create(_MaterialTreeFilterComponent_0_4, []);
    final subscription_0 = _MaterialTreeFilterComponent_0_4.onFiltered.listen(eventHandler1(_handle_filter_0_0));
    init([_el_0], [subscription_0], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import34.MaterialTreeFilterComponent) && (0 == nodeIndex))) {
      return _MaterialTreeFilterComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import13.MaterialTreeDropdownComponent _ctx = ctx;
    dbg(0, 27, 4);
    final currVal_0 = _ctx.placeholder;
    if (import22.checkBinding(_expr_0, currVal_0)) {
      _MaterialTreeFilterComponent_0_4.placeholder = currVal_0;
      _expr_0 = currVal_0;
    }
    dbg(0, 26, 4);
    final currVal_1 = _ctx.filterableOptions;
    if (import22.checkBinding(_expr_1, currVal_1)) {
      _MaterialTreeFilterComponent_0_4.filterable = currVal_1;
      _expr_1 = currVal_1;
    }
    _compView_0.detectChanges();
  }

  @override
  void dirtyParentQueriesInternal() {
    (parentView as ViewMaterialTreeDropdownComponent0)._viewQuery_materialTreeFilter_0.setDirty();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
  }

  void _handle_filter_0_0($event) {
    dbg(0, 25, 4);
    ctx.visible = true;
  }
}

AppView<import13.MaterialTreeDropdownComponent> viewFactory_MaterialTreeDropdownComponent3(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeDropdownComponent3(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeDropdownComponent4 = [
  new StaticNodeDebugInfo([import34.MaterialTreeFilterComponent], import34.MaterialTreeFilterComponent, <String, dynamic>{})
];

class _ViewMaterialTreeDropdownComponent4 extends DebugAppView<import13.MaterialTreeDropdownComponent> {
  import15.Element _el_0;
  import35.ViewMaterialTreeFilterComponent0 _compView_0;
  import34.MaterialTreeFilterComponent _MaterialTreeFilterComponent_0_4;
  String _expr_1;
  var _expr_2;
  _ViewMaterialTreeDropdownComponent4(AppView<dynamic> parentView, num parentIndex) : super(import20.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeDropdownComponent4) {
    componentType = ViewMaterialTreeDropdownComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import35.ViewMaterialTreeFilterComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 38, 4);
    _el_0.className = 'search-box';
    createAttr(_el_0, 'leadingGlyph', 'search');
    addShimC(_el_0);
    _MaterialTreeFilterComponent_0_4 = new import34.MaterialTreeFilterComponent(parentView.parentView.injectorGet(import36.MaterialTreeRoot, parentView.viewData.parentIndex, null));
    _compView_0.create(_MaterialTreeFilterComponent_0_4, []);
    final subscription_0 = _MaterialTreeFilterComponent_0_4.onFiltered.listen(eventHandler1(_handle_filter_0_0));
    init([_el_0], [subscription_0], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import34.MaterialTreeFilterComponent) && (0 == nodeIndex))) {
      return _MaterialTreeFilterComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import13.MaterialTreeDropdownComponent _ctx = ctx;
    bool firstCheck = (this.cdState == 0);
    if (firstCheck) {
      (_MaterialTreeFilterComponent_0_4.leadingGlyph = 'search');
    }
    dbg(0, 44, 8);
    final currVal_1 = _ctx.placeholder;
    if (import22.checkBinding(_expr_1, currVal_1)) {
      _MaterialTreeFilterComponent_0_4.placeholder = currVal_1;
      _expr_1 = currVal_1;
    }
    dbg(0, 42, 8);
    final currVal_2 = _ctx.filterableOptions;
    if (import22.checkBinding(_expr_2, currVal_2)) {
      _MaterialTreeFilterComponent_0_4.filterable = currVal_2;
      _expr_2 = currVal_2;
    }
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
  }

  void _handle_filter_0_0($event) {
    dbg(0, 41, 8);
    ctx.visible = true;
  }
}

AppView<import13.MaterialTreeDropdownComponent> viewFactory_MaterialTreeDropdownComponent4(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeDropdownComponent4(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeDropdownComponent5 = [
  new StaticNodeDebugInfo([import37.MaterialTreeComponent, import36.MaterialTreeRoot], import37.MaterialTreeComponent, <String, dynamic>{})
];

class _ViewMaterialTreeDropdownComponent5 extends DebugAppView<import13.MaterialTreeDropdownComponent> {
  import15.Element _el_0;
  import38.ViewMaterialTreeComponent0 _compView_0;
  import37.MaterialTreeComponent _MaterialTreeComponent_0_4;
  bool _expr_0;
  var _expr_1;
  var _expr_2;
  var _expr_3;
  var _expr_4;
  _ViewMaterialTreeDropdownComponent5(AppView<dynamic> parentView, num parentIndex) : super(import20.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeDropdownComponent5) {
    componentType = ViewMaterialTreeDropdownComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import38.ViewMaterialTreeComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 47, 2);
    addShimC(_el_0);
    _MaterialTreeComponent_0_4 = new import37.MaterialTreeComponent(parentView.parentView.injectorGet(import36.MaterialTreeRoot, parentView.viewData.parentIndex, null));
    _compView_0.create(_MaterialTreeComponent_0_4, []);
    init([_el_0], const [], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((identical(token, import37.MaterialTreeComponent) || identical(token, import36.MaterialTreeRoot)) && (0 == nodeIndex))) {
      return _MaterialTreeComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import13.MaterialTreeDropdownComponent _ctx = ctx;
    bool firstCheck = (this.cdState == 0);
    dbg(0, 50, 4);
    final currVal_0 = _ctx.expandAll;
    if (import22.checkBinding(_expr_0, currVal_0)) {
      _MaterialTreeComponent_0_4.expandAll = currVal_0;
      _expr_0 = currVal_0;
    }
    dbg(0, 49, 4);
    final currVal_1 = _ctx.componentRenderer;
    if (import22.checkBinding(_expr_1, currVal_1)) {
      _MaterialTreeComponent_0_4.componentRenderer = currVal_1;
      _expr_1 = currVal_1;
    }
    dbg(0, 51, 4);
    final currVal_2 = _ctx.itemRenderer;
    if (import22.checkBinding(_expr_2, currVal_2)) {
      _MaterialTreeComponent_0_4.itemRenderer = currVal_2;
      _expr_2 = currVal_2;
    }
    dbg(0, 52, 4);
    final currVal_3 = _ctx.options;
    if (import22.checkBinding(_expr_3, currVal_3)) {
      _MaterialTreeComponent_0_4.options = currVal_3;
      _expr_3 = currVal_3;
    }
    dbg(0, 53, 4);
    final currVal_4 = _ctx.selection;
    if (import22.checkBinding(_expr_4, currVal_4)) {
      _MaterialTreeComponent_0_4.selection = currVal_4;
      _expr_4 = currVal_4;
    }
    _compView_0.detectHostChanges(firstCheck);
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
  }
}

AppView<import13.MaterialTreeDropdownComponent> viewFactory_MaterialTreeDropdownComponent5(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeDropdownComponent5(parentView, parentIndex);
}

const List<dynamic> styles$MaterialTreeDropdownComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeDropdownComponentHost0 = [
  new StaticNodeDebugInfo([import13.MaterialTreeDropdownComponent, import39.Focusable, import36.MaterialTreeRoot], import13.MaterialTreeDropdownComponent, <String, dynamic>{})
];

class _ViewMaterialTreeDropdownComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialTreeDropdownComponent0 _compView_0;
  import13.MaterialTreeDropdownComponent _MaterialTreeDropdownComponent_0_4;
  static RenderComponentType _renderType;
  _ViewMaterialTreeDropdownComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import20.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeDropdownComponentHost0) {
    _renderType ??= import22.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialTreeDropdownComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialTreeDropdownComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _MaterialTreeDropdownComponent_0_4 = new import13.MaterialTreeDropdownComponent(this.injectorGet(import24.DomService, viewData.parentIndex));
    _compView_0.create(_MaterialTreeDropdownComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialTreeDropdownComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((((identical(token, import13.MaterialTreeDropdownComponent) || identical(token, import39.Focusable)) || identical(token, import36.MaterialTreeRoot)) && (0 == nodeIndex))) {
      return _MaterialTreeDropdownComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = (this.cdState == 0);
    if ((firstCheck && !import22.AppViewUtils.throwOnChanges)) {
      _MaterialTreeDropdownComponent_0_4.ngOnInit();
    }
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
  }
}

AppView viewFactory_MaterialTreeDropdownComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeDropdownComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialTreeDropdownComponentNgFactory = const ComponentFactory('material-tree-dropdown', viewFactory_MaterialTreeDropdownComponentHost0, import13.MaterialTreeDropdownComponent, _MaterialTreeDropdownComponentMetadata);
final ComponentFactory MaterialTreeDropdownComponentNgFactory = _MaterialTreeDropdownComponentNgFactory;
const _MaterialTreeDropdownComponentMetadata = const [];
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
  _ref14.initReflector();
  _ref15.initReflector();
  _ref16.initReflector();
  _ngRef.registerComponent(
    MaterialTreeDropdownComponent,
    MaterialTreeDropdownComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialTreeDropdownComponent,
    (DomService p0) => new MaterialTreeDropdownComponent(p0),
  );
  _ngRef.registerDependencies(
    MaterialTreeDropdownComponent,
    const [
      const [
        DomService,
      ],
    ],
  );
}
