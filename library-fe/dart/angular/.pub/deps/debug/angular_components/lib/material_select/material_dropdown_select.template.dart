// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_dropdown_select.dart';
export 'material_dropdown_select.dart';
import 'dart:async';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/annotations/rtl_annotation.dart';
import 'package:angular_components/content/deferred_content.dart';
import 'package:angular_components/content/deferred_content_aware.dart';
import 'package:angular_components/dynamic_component/dynamic_component.dart';
import 'package:angular_components/focus/keyboard_only_focus_indicator.dart';
import 'package:angular_components/laminate/enums/alignment.dart';
import 'package:angular_components/laminate/popup/popup.dart';
import 'package:angular_components/material_list/material_list.dart';
import 'package:angular_components/material_popup/material_popup.dart';
import 'package:angular_components/material_select/activation_handler.dart';
import 'package:angular_components/material_select/dropdown_button.dart';
import 'package:angular_components/material_select/material_select_base.dart';
import 'package:angular_components/material_select/material_select_dropdown_item.dart';
import 'package:angular_components/material_select/shift_click_selection.dart';
import 'package:angular_components/mixins/button_wrapper.dart';
import 'package:angular_components/mixins/material_dropdown_base.dart';
import 'package:angular_components/mixins/track_layout_changes.dart';
import 'package:angular_components/model/a11y/active_item.dart';
import 'package:angular_components/model/a11y/keyboard_handler_mixin.dart';
import 'package:angular_components/model/selection/select.dart';
import 'package:angular_components/model/selection/selection_container.dart';
import 'package:angular_components/model/selection/selection_model.dart';
import 'package:angular_components/model/selection/selection_options.dart';
import 'package:angular_components/model/ui/has_renderer.dart';
import 'package:angular_components/model/ui/template_support.dart';
import 'package:angular_components/utils/id_generator/id_generator.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/annotations/rtl_annotation.template.dart' as _ref1;
import 'package:angular_components/content/deferred_content.template.dart' as _ref2;
import 'package:angular_components/content/deferred_content_aware.template.dart' as _ref3;
import 'package:angular_components/dynamic_component/dynamic_component.template.dart' as _ref4;
import 'package:angular_components/focus/keyboard_only_focus_indicator.template.dart' as _ref5;
import 'package:angular_components/laminate/enums/alignment.template.dart' as _ref6;
import 'package:angular_components/laminate/popup/popup.template.dart' as _ref7;
import 'package:angular_components/material_list/material_list.template.dart' as _ref8;
import 'package:angular_components/material_popup/material_popup.template.dart' as _ref9;
import 'package:angular_components/material_select/activation_handler.template.dart' as _ref10;
import 'package:angular_components/material_select/dropdown_button.template.dart' as _ref11;
import 'package:angular_components/material_select/material_select_base.template.dart' as _ref12;
import 'package:angular_components/material_select/material_select_dropdown_item.template.dart' as _ref13;
import 'package:angular_components/material_select/shift_click_selection.template.dart' as _ref14;
import 'package:angular_components/mixins/button_wrapper.template.dart' as _ref15;
import 'package:angular_components/mixins/material_dropdown_base.template.dart' as _ref16;
import 'package:angular_components/mixins/track_layout_changes.template.dart' as _ref17;
import 'package:angular_components/model/a11y/active_item.template.dart' as _ref18;
import 'package:angular_components/model/a11y/keyboard_handler_mixin.template.dart' as _ref19;
import 'package:angular_components/model/selection/select.template.dart' as _ref20;
import 'package:angular_components/model/selection/selection_container.template.dart' as _ref21;
import 'package:angular_components/model/selection/selection_model.template.dart' as _ref22;
import 'package:angular_components/model/selection/selection_options.template.dart' as _ref23;
import 'package:angular_components/model/ui/has_renderer.template.dart' as _ref24;
import 'package:angular_components/model/ui/template_support.template.dart' as _ref25;
import 'package:angular_components/utils/id_generator/id_generator.template.dart' as _ref26;

import 'package:angular_components/material_select/material_dropdown_select.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'dropdown_button.dart' as import2;
import '../src/laminate/popup/popup_source_directive.dart' as import3;
import '../material_popup/material_popup.dart' as import4;
import '../mixins/material_dropdown_base.dart' as import5;
import '../content/deferred_content_aware.dart' as import6;
import '../src/laminate/popup/popup_hierarchy.dart' as import7;
import '../src/laminate/popup/popup_ref.dart' as import8;
import 'package:angular/src/core/linker/template_ref.dart';
import '../content/deferred_content.dart' as import10;
import 'package:angular/src/debug/debug_app_view.dart';
import 'material_dropdown_select.dart' as import12;
import 'dart:html' as import13;
import 'dropdown_button.template.dart' as import14;
import '../material_popup/material_popup.template.dart' as import15;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import19;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import21;
import 'package:angular/angular.dart';
import '../src/laminate/popup/dom_popup_source.dart' as import23;
import '../utils/angular/reference/reference.dart' as import24;
import 'package:angular/src/core/zone/ng_zone.dart' as import25;
import '../src/laminate/overlay/overlay_service.dart' as import26;
import '../laminate/overlay/zindexer.dart' as import27;
import '../src/laminate/popup/popup_size_provider.dart' as import28;
import 'package:angular/src/core/linker/element_ref.dart';
import '../material_list/material_list.dart' as import30;
import 'package:angular/src/common/directives/ng_if.dart';
import '../material_list/material_list.template.dart' as import32;
import 'package:angular/src/common/directives/ng_for.dart' as import33;
import '../focus/keyboard_only_focus_indicator.dart' as import34;
import 'material_select_dropdown_item.dart' as import35;
import '../model/selection/selection_container.dart' as import36;
import '../model/ui/has_renderer.dart' as import37;
import 'material_select_dropdown_item.template.dart' as import38;
import '../utils/browser/dom_service/dom_service.dart' as import39;
import 'activation_handler.dart' as import40;
import '../dynamic_component/dynamic_component.dart' as import41;
import '../dynamic_component/dynamic_component.template.dart' as import42;
import 'package:angular/src/core/linker/dynamic_component_loader.dart' as import43;
import '../utils/id_generator/id_generator.dart' as import44;

const List<dynamic> styles$MaterialDropdownSelectComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialDropdownSelectComponent0 = [
  null,
  new StaticNodeDebugInfo([import2.DropdownButtonComponent, import3.PopupSourceDirective], import2.DropdownButtonComponent, <String, dynamic>{'source': import3.PopupSourceDirective}),
  null,
  null,
  null,
  new StaticNodeDebugInfo([import4.MaterialPopupComponent, import5.DropdownHandle, import6.DeferredContentAware, import7.PopupHierarchy, import8.PopupRef], import4.MaterialPopupComponent, <String, dynamic>{}),
  null,
  null,
  null,
  null,
  null,
  new StaticNodeDebugInfo([TemplateRef, import10.DeferredContentDirective], null, <String, dynamic>{}),
  null,
  null,
  null,
  null,
  null,
  null
];

class ViewMaterialDropdownSelectComponent0 extends DebugAppView<import12.MaterialDropdownSelectComponent> {
  import13.Element _el_1;
  import14.ViewDropdownButtonComponent0 _compView_1;
  import2.DropdownButtonComponent _DropdownButtonComponent_1_4;
  import3.PopupSourceDirective _PopupSourceDirective_1_5;
  import13.Element _el_5;
  import15.ViewMaterialPopupComponent0 _compView_5;
  ViewContainer _appEl_5;
  import4.MaterialPopupComponent _MaterialPopupComponent_5_6;
  dynamic _DeferredContentAware_5_8;
  dynamic __PopupHierarchy_5_9;
  dynamic __PopupRef_5_10;
  import13.DivElement _el_7;
  ViewContainer _appEl_11;
  import10.DeferredContentDirective _DeferredContentDirective_11_7;
  import13.DivElement _el_13;
  String _expr_0;
  String _expr_1;
  bool _expr_2;
  var _expr_3;
  String _expr_4;
  bool _expr_5;
  String _expr_6;
  bool _expr_7;
  bool _expr_9;
  var _expr_10;
  var _expr_11;
  bool _expr_12;
  bool _expr_13;
  String _expr_14;
  static RenderComponentType _renderType;
  ViewMaterialDropdownSelectComponent0(AppView<dynamic> parentView, num parentIndex) : super(import19.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialDropdownSelectComponent0) {
    rootEl = import13.document.createElement('material-dropdown-select');
    _renderType ??= import21.appViewUtils.createRenderType('package:angular_components/material_select/material_dropdown_select.html', ViewEncapsulation.Emulated, styles$MaterialDropdownSelectComponent);
    setupComponentType(_renderType);
  }
  dynamic get _PopupHierarchy_5_9 {
    dbg(5, 23, 0);
    if ((this.__PopupHierarchy_5_9 == null)) {
      (__PopupHierarchy_5_9 = import4.getHierarchy(this._MaterialPopupComponent_5_6));
    }
    return this.__PopupHierarchy_5_9;
  }

  dynamic get _PopupRef_5_10 {
    dbg(5, 23, 0);
    if ((this.__PopupRef_5_10 == null)) {
      (__PopupRef_5_10 = import4.getResolvedPopupRef(this._MaterialPopupComponent_5_6));
    }
    return this.__PopupRef_5_10;
  }

  @override
  ComponentRef build() {
    final import13.HtmlElement parentRenderNode = initViewRoot(rootEl);
    import13.Text _text_0 = new import13.Text('\n');
    parentRenderNode.append(_text_0);
    dbgElm(this, _text_0, 0, 4, 3);
    _compView_1 = new import14.ViewDropdownButtonComponent0(this, 1);
    _el_1 = _compView_1.rootEl;
    parentRenderNode.append(_el_1);
    dbgElm(this, _el_1, 1, 5, 0);
    createAttr(_el_1, 'popupSource', '');
    addShimC(_el_1);
    _DropdownButtonComponent_1_4 = new import2.DropdownButtonComponent();
    _PopupSourceDirective_1_5 = new import3.PopupSourceDirective(parentView.injectorGet(import23.DomPopupSourceFactory, viewData.parentIndex), _el_1, parentView.injectorGet(import24.ReferenceDirective, viewData.parentIndex, null));
    import13.Text _text_2 = new import13.Text('\n  ');
    dbgElm(this, _text_2, 2, 20, 26);
    dbg(null, 21, 2);
    import13.Text _text_3 = new import13.Text('\n');
    dbgElm(this, _text_3, 3, 21, 52);
    _compView_1.create(_DropdownButtonComponent_1_4, [
      <dynamic>[_text_2]..addAll(projectableNodes[0])..addAll([_text_3])
    ]);
    import13.Text _text_4 = new import13.Text('\n');
    parentRenderNode.append(_text_4);
    dbgElm(this, _text_4, 4, 22, 18);
    _compView_5 = new import15.ViewMaterialPopupComponent0(this, 5);
    _el_5 = _compView_5.rootEl;
    parentRenderNode.append(_el_5);
    dbgElm(this, _el_5, 5, 23, 0);
    createAttr(_el_5, 'enforceSpaceConstraints', '');
    addShimC(_el_5);
    _appEl_5 = new ViewContainer(5, null, this, _el_5);
    _MaterialPopupComponent_5_6 = new import4.MaterialPopupComponent(parentView.injectorGet(import7.PopupHierarchy, viewData.parentIndex, null), parentView.injectorGet(import4.MaterialPopupComponent, viewData.parentIndex, null), null, parentView.injectorGet(import25.NgZone, viewData.parentIndex), parentView.injectorGet(import26.OverlayService, viewData.parentIndex), parentView.injectorGet(import27.ZIndexer, viewData.parentIndex), parentView.injectorGet(const OpaqueToken('defaultPopupPositions'), viewData.parentIndex), parentView.injectorGet(const OpaqueToken('overlayRepositionLoop'), viewData.parentIndex), parentView.injectorGet(import28.PopupSizeProvider, viewData.parentIndex, null), _compView_5.ref, _appEl_5, new ElementRef(_el_5));
    _DeferredContentAware_5_8 = _MaterialPopupComponent_5_6;
    import13.Text _text_6 = new import13.Text('\n  ');
    dbgElm(this, _text_6, 6, 31, 40);
    var doc = import13.document;
    _el_7 = doc.createElement('div');
    dbgElm(this, _el_7, 7, 32, 2);
    createAttr(_el_7, 'header', '');
    addShimC(_el_7);
    import13.Text _text_8 = new import13.Text('\n    ');
    _el_7.append(_text_8);
    dbgElm(this, _text_8, 8, 35, 32);
    dbg(null, 36, 4);
    project(_el_7, 1);
    import13.Text _text_9 = new import13.Text('\n  ');
    _el_7.append(_text_9);
    dbgElm(this, _text_9, 9, 36, 47);
    import13.Text _text_10 = new import13.Text('\n  ');
    dbgElm(this, _text_10, 10, 37, 8);
    var _anchor_11 = ngAnchor.clone(false);
    dbgElm(this, _anchor_11, 11, 38, 2);
    _appEl_11 = new ViewContainer(11, 5, this, _anchor_11);
    TemplateRef _TemplateRef_11_6 = new TemplateRef(_appEl_11, viewFactory_MaterialDropdownSelectComponent1);
    _DeferredContentDirective_11_7 = new import10.DeferredContentDirective(_appEl_11, _TemplateRef_11_6, _DeferredContentAware_5_8);
    import13.Text _text_12 = new import13.Text('\n  ');
    dbgElm(this, _text_12, 12, 94, 18);
    _el_13 = doc.createElement('div');
    dbgElm(this, _el_13, 13, 95, 2);
    createAttr(_el_13, 'footer', '');
    addShimC(_el_13);
    import13.Text _text_14 = new import13.Text('\n    ');
    _el_13.append(_text_14);
    dbgElm(this, _text_14, 14, 98, 32);
    dbg(null, 99, 4);
    project(_el_13, 3);
    import13.Text _text_15 = new import13.Text('\n  ');
    _el_13.append(_text_15);
    dbgElm(this, _text_15, 15, 99, 47);
    import13.Text _text_16 = new import13.Text('\n');
    dbgElm(this, _text_16, 16, 100, 8);
    _compView_5.create(_MaterialPopupComponent_5_6, [
      [_el_7],
      [_text_6, _text_10, _appEl_11, _text_12, _text_16],
      [_el_13]
    ]);
    import13.Text _text_17 = new import13.Text('\n');
    parentRenderNode.append(_text_17);
    dbgElm(this, _text_17, 17, 101, 17);
    _el_1.addEventListener('keydown', eventHandler1(ctx.onKeyDown));
    _el_1.addEventListener('keypress', eventHandler1(ctx.onKeyPress));
    _el_1.addEventListener('keyup', eventHandler1(ctx.onKeyUp));
    final subscription_0 = _DropdownButtonComponent_1_4.blur.listen(eventHandler1(ctx.onBlur));
    final subscription_1 = _DropdownButtonComponent_1_4.focus.listen(eventHandler1(ctx.onFocus));
    final subscription_2 = _DropdownButtonComponent_1_4.trigger.listen(eventHandler1(ctx.handleClick));
    final subscription_3 = _MaterialPopupComponent_5_6.onVisible.listen(eventHandler1(ctx.onVisible));
    _el_7.addEventListener('keydown', eventHandler1(ctx.onKeyDown));
    _el_7.addEventListener('keypress', eventHandler1(ctx.onKeyPress));
    _el_7.addEventListener('keyup', eventHandler1(ctx.onKeyUp));
    _el_13.addEventListener('keydown', eventHandler1(ctx.onKeyDown));
    _el_13.addEventListener('keypress', eventHandler1(ctx.onKeyPress));
    _el_13.addEventListener('keyup', eventHandler1(ctx.onKeyUp));
    init(const [], [subscription_0, subscription_1, subscription_2, subscription_3], [_text_0, _el_1, _text_2, _text_3, _text_4, _el_5, _text_6, _el_7, _text_8, _text_9, _text_10, _anchor_11, _text_12, _el_13, _text_14, _text_15, _text_16, _text_17]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import2.DropdownButtonComponent) && ((1 <= nodeIndex) && (nodeIndex <= 3)))) {
      return _DropdownButtonComponent_1_4;
    }
    if ((identical(token, import3.PopupSourceDirective) && ((1 <= nodeIndex) && (nodeIndex <= 3)))) {
      return _PopupSourceDirective_1_5;
    }
    if ((identical(token, import10.DeferredContentDirective) && (11 == nodeIndex))) {
      return _DeferredContentDirective_11_7;
    }
    if (((identical(token, import4.MaterialPopupComponent) || identical(token, import5.DropdownHandle)) && ((5 <= nodeIndex) && (nodeIndex <= 16)))) {
      return _MaterialPopupComponent_5_6;
    }
    if ((identical(token, import6.DeferredContentAware) && ((5 <= nodeIndex) && (nodeIndex <= 16)))) {
      return _DeferredContentAware_5_8;
    }
    if ((identical(token, import7.PopupHierarchy) && ((5 <= nodeIndex) && (nodeIndex <= 16)))) {
      return _PopupHierarchy_5_9;
    }
    if ((identical(token, import8.PopupRef) && ((5 <= nodeIndex) && (nodeIndex <= 16)))) {
      return _PopupRef_5_10;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import12.MaterialDropdownSelectComponent _ctx = ctx;
    bool changed = true;
    bool firstCheck = (this.cdState == 0);
    changed = false;
    dbg(1, 7, 4);
    final currVal_0 = _ctx.buttonText;
    if (import21.checkBinding(_expr_0, currVal_0)) {
      _DropdownButtonComponent_1_4.buttonText = currVal_0;
      changed = true;
      _expr_0 = currVal_0;
    }
    dbg(1, 6, 4);
    final currVal_1 = _ctx.buttonAriaLabel;
    if (import21.checkBinding(_expr_1, currVal_1)) {
      _DropdownButtonComponent_1_4.buttonAriaLabel = currVal_1;
      changed = true;
      _expr_1 = currVal_1;
    }
    dbg(1, 9, 4);
    final currVal_2 = _ctx.disabled;
    if (import21.checkBinding(_expr_2, currVal_2)) {
      _DropdownButtonComponent_1_4.disabled = currVal_2;
      changed = true;
      _expr_2 = currVal_2;
    }
    dbg(1, 11, 4);
    final currVal_3 = _ctx.icon;
    if (import21.checkBinding(_expr_3, currVal_3)) {
      _DropdownButtonComponent_1_4.icon = currVal_3;
      changed = true;
      _expr_3 = currVal_3;
    }
    dbg(1, 10, 4);
    final currVal_4 = _ctx.iconName;
    if (import21.checkBinding(_expr_4, currVal_4)) {
      _DropdownButtonComponent_1_4.iconName = currVal_4;
      changed = true;
      _expr_4 = currVal_4;
    }
    dbg(1, 12, 4);
    final currVal_5 = _ctx.raised;
    if (import21.checkBinding(_expr_5, currVal_5)) {
      _DropdownButtonComponent_1_4.raised = currVal_5;
      changed = true;
      _expr_5 = currVal_5;
    }
    dbg(1, 8, 4);
    final currVal_6 = _ctx.error;
    if (import21.checkBinding(_expr_6, currVal_6)) {
      _DropdownButtonComponent_1_4.error = currVal_6;
      changed = true;
      _expr_6 = currVal_6;
    }
    if (changed) {
      _compView_1.markAsCheckOnce();
    }
    if (firstCheck) {
      (_MaterialPopupComponent_5_6.enforceSpaceConstraints = true);
    }
    dbg(5, 28, 4);
    final currVal_7 = _ctx.autoDismiss;
    if (import21.checkBinding(_expr_7, currVal_7)) {
      _MaterialPopupComponent_5_6.autoDismiss = currVal_7;
      _expr_7 = currVal_7;
    }
    dbg(5, 25, 4);
    final currVal_9 = _ctx.popupMatchInputWidth;
    if (import21.checkBinding(_expr_9, currVal_9)) {
      _MaterialPopupComponent_5_6.matchMinSourceWidth = currVal_9;
      _expr_9 = currVal_9;
    }
    dbg(5, 24, 4);
    final currVal_10 = _ctx.preferredPositions;
    if (import21.checkBinding(_expr_10, currVal_10)) {
      _MaterialPopupComponent_5_6.preferredPositions = currVal_10;
      _expr_10 = currVal_10;
    }
    dbg(5, 27, 4);
    final currVal_11 = _PopupSourceDirective_1_5;
    if (import21.checkBinding(_expr_11, currVal_11)) {
      _MaterialPopupComponent_5_6.source = currVal_11;
      _expr_11 = currVal_11;
    }
    dbg(5, 29, 4);
    final currVal_12 = _ctx.trackLayoutChanges;
    if (import21.checkBinding(_expr_12, currVal_12)) {
      _MaterialPopupComponent_5_6.trackLayoutChanges = currVal_12;
      _expr_12 = currVal_12;
    }
    dbg(5, 30, 4);
    final currVal_13 = _ctx.visible;
    if (import21.checkBinding(_expr_13, currVal_13)) {
      _MaterialPopupComponent_5_6.visible = currVal_13;
      _expr_13 = currVal_13;
    }
    dbg(5, 26, 4);
    final currVal_14 = _ctx.slide;
    if (import21.checkBinding(_expr_14, currVal_14)) {
      _MaterialPopupComponent_5_6.slide = currVal_14;
      _expr_14 = currVal_14;
    }
    if (firstCheck) {
      (_DeferredContentDirective_11_7.preserveDimensions = true);
    }
    _appEl_5.detectChangesInNestedViews();
    _appEl_11.detectChangesInNestedViews();
    _compView_5.detectHostChanges(firstCheck);
    _compView_1.detectChanges();
    _compView_5.detectChanges();
    if (!import21.AppViewUtils.throwOnChanges) {
      dbg(1, 5, 0);
      if (firstCheck) {
        _PopupSourceDirective_1_5.ngAfterViewInit();
      }
      dbg(5, 23, 0);
      if (firstCheck) {
        _MaterialPopupComponent_5_6.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    _appEl_5.destroyNestedViews();
    _appEl_11.destroyNestedViews();
    _compView_1.destroy();
    _compView_5.destroy();
    dbg(1, 5, 0);
    _PopupSourceDirective_1_5.ngOnDestroy();
    dbg(11, 38, 2);
    _DeferredContentDirective_11_7.ngOnDestroy();
    dbg(5, 23, 0);
    _MaterialPopupComponent_5_6.ngOnDestroy();
  }
}

AppView<import12.MaterialDropdownSelectComponent> viewFactory_MaterialDropdownSelectComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialDropdownSelectComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialDropdownSelectComponent1 = [
  new StaticNodeDebugInfo([import30.MaterialListComponent], import30.MaterialListComponent, <String, dynamic>{}),
  null,
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null
];

class _ViewMaterialDropdownSelectComponent1 extends DebugAppView<import12.MaterialDropdownSelectComponent> {
  import13.Element _el_0;
  import32.ViewMaterialListComponent0 _compView_0;
  import30.MaterialListComponent _MaterialListComponent_0_4;
  ViewContainer _appEl_3;
  NgIf _NgIf_3_7;
  var _expr_0;
  _ViewMaterialDropdownSelectComponent1(AppView<dynamic> parentView, num parentIndex) : super(import19.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialDropdownSelectComponent1) {
    componentType = ViewMaterialDropdownSelectComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import32.ViewMaterialListComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 38, 2);
    _el_0.className = 'options-list';
    createAttr(_el_0, 'tabIndex', '-1');
    addShimC(_el_0);
    _MaterialListComponent_0_4 = new import30.MaterialListComponent();
    import13.Text _text_1 = new import13.Text('\n    ');
    dbgElm(this, _text_1, 1, 46, 46);
    dbg(null, 47, 4);
    import13.Text _text_2 = new import13.Text('\n    ');
    dbgElm(this, _text_2, 2, 47, 29);
    var _anchor_3 = ngAnchor.clone(false);
    dbgElm(this, _anchor_3, 3, 48, 4);
    _appEl_3 = new ViewContainer(3, 0, this, _anchor_3);
    TemplateRef _TemplateRef_3_6 = new TemplateRef(_appEl_3, viewFactory_MaterialDropdownSelectComponent2);
    _NgIf_3_7 = new NgIf(_appEl_3, _TemplateRef_3_6);
    import13.Text _text_4 = new import13.Text('\n  ');
    dbgElm(this, _text_4, 4, 93, 10);
    _compView_0.create(_MaterialListComponent_0_4, [
      <dynamic>[_text_1]..addAll(projectableNodes[2])..addAll([_text_2, _appEl_3, _text_4])
    ]);
    _el_0.addEventListener('keydown', eventHandler1(ctx.onKeyDown));
    _el_0.addEventListener('keypress', eventHandler1(ctx.onKeyPress));
    _el_0.addEventListener('keyup', eventHandler1(ctx.onKeyUp));
    _el_0.addEventListener('mouseout', eventHandler1(_handle_mouseout_0_3));
    init([_el_0], const [], [_el_0, _text_1, _text_2, _anchor_3, _text_4]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import30.MaterialListComponent) && ((0 <= nodeIndex) && (nodeIndex <= 4)))) {
      return _MaterialListComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import12.MaterialDropdownSelectComponent _ctx = ctx;
    bool changed = true;
    bool firstCheck = (this.cdState == 0);
    changed = false;
    dbg(0, 40, 6);
    final currVal_0 = _ctx.width;
    if (import21.checkBinding(_expr_0, currVal_0)) {
      _MaterialListComponent_0_4.width = currVal_0;
      changed = true;
      _expr_0 = currVal_0;
    }
    if (changed) {
      _compView_0.markAsCheckOnce();
    }
    dbg(3, 48, 33);
    _NgIf_3_7.ngIf = (_ctx.options != null);
    _appEl_3.detectChangesInNestedViews();
    _compView_0.detectHostChanges(firstCheck);
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _appEl_3.destroyNestedViews();
    _compView_0.destroy();
  }

  void _handle_mouseout_0_3($event) {
    dbg(0, 46, 6);
    ctx.activeModel.activate(null);
  }
}

AppView<import12.MaterialDropdownSelectComponent> viewFactory_MaterialDropdownSelectComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialDropdownSelectComponent1(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialDropdownSelectComponent2 = [
  null,
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  new StaticNodeDebugInfo([TemplateRef, import33.NgFor], null, <String, dynamic>{}),
  null
];

class _ViewMaterialDropdownSelectComponent2 extends DebugAppView<import12.MaterialDropdownSelectComponent> {
  import13.DivElement _el_0;
  ViewContainer _appEl_2;
  NgIf _NgIf_2_7;
  ViewContainer _appEl_4;
  import33.NgFor _NgFor_4_7;
  var _expr_2;
  _ViewMaterialDropdownSelectComponent2(AppView<dynamic> parentView, num parentIndex) : super(import19.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialDropdownSelectComponent2) {
    componentType = ViewMaterialDropdownSelectComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import13.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 48, 4);
    _el_0.className = 'options-wrapper';
    addShimC(_el_0);
    import13.Text _text_1 = new import13.Text('\n      ');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 48, 57);
    var _anchor_2 = ngAnchor.clone(false);
    _el_0.append(_anchor_2);
    dbgElm(this, _anchor_2, 2, 49, 6);
    _appEl_2 = new ViewContainer(2, 0, this, _anchor_2);
    TemplateRef _TemplateRef_2_6 = new TemplateRef(_appEl_2, viewFactory_MaterialDropdownSelectComponent3);
    _NgIf_2_7 = new NgIf(_appEl_2, _TemplateRef_2_6);
    import13.Text _text_3 = new import13.Text('\n      ');
    _el_0.append(_text_3);
    dbgElm(this, _text_3, 3, 59, 38);
    var _anchor_4 = ngAnchor.clone(false);
    _el_0.append(_anchor_4);
    dbgElm(this, _anchor_4, 4, 60, 6);
    _appEl_4 = new ViewContainer(4, 0, this, _anchor_4);
    TemplateRef _TemplateRef_4_6 = new TemplateRef(_appEl_4, viewFactory_MaterialDropdownSelectComponent4);
    _NgFor_4_7 = new import33.NgFor(_appEl_4, _TemplateRef_4_6);
    import13.Text _text_5 = new import13.Text('\n    ');
    _el_0.append(_text_5);
    dbgElm(this, _text_5, 5, 92, 12);
    init([_el_0], const [], [_el_0, _text_1, _anchor_2, _text_3, _anchor_4, _text_5]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import12.MaterialDropdownSelectComponent _ctx = ctx;
    bool firstCheck = (this.cdState == 0);
    dbg(2, 50, 10);
    _NgIf_2_7.ngIf = _ctx.showDeselectItem;
    if (firstCheck) {
      if (!identical(_ctx.trackByIndexFn, null)) {
        (_NgFor_4_7.ngForTrackBy = _ctx.trackByIndexFn);
      }
    }
    dbg(4, 60, 11);
    final currVal_2 = _ctx.options.optionGroups;
    if (import21.checkBinding(_expr_2, currVal_2)) {
      _NgFor_4_7.ngForOf = currVal_2;
      _expr_2 = currVal_2;
    }
    if (!import21.AppViewUtils.throwOnChanges) {
      _NgFor_4_7.ngDoCheck();
    }
    _appEl_2.detectChangesInNestedViews();
    _appEl_4.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    _appEl_2.destroyNestedViews();
    _appEl_4.destroyNestedViews();
  }
}

AppView<import12.MaterialDropdownSelectComponent> viewFactory_MaterialDropdownSelectComponent2(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialDropdownSelectComponent2(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialDropdownSelectComponent3 = [
  new StaticNodeDebugInfo([import34.KeyboardOnlyFocusIndicatorDirective, import35.MaterialSelectDropdownItemComponent, import36.SelectionItem, import37.HasRenderer], import35.MaterialSelectDropdownItemComponent, <String, dynamic>{}),
  null
];

class _ViewMaterialDropdownSelectComponent3 extends DebugAppView<import12.MaterialDropdownSelectComponent> {
  import13.Element _el_0;
  import38.ViewMaterialSelectDropdownItemComponent0 _compView_0;
  import34.KeyboardOnlyFocusIndicatorDirective _KeyboardOnlyFocusIndicatorDirective_0_4;
  import35.MaterialSelectDropdownItemComponent _MaterialSelectDropdownItemComponent_0_5;
  bool _expr_0;
  var _expr_1;
  bool _expr_2;
  var _expr_3;
  var _expr_4;
  _ViewMaterialDropdownSelectComponent3(AppView<dynamic> parentView, num parentIndex) : super(import19.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialDropdownSelectComponent3) {
    componentType = ViewMaterialDropdownSelectComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import38.ViewMaterialSelectDropdownItemComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 49, 6);
    createAttr(_el_0, 'keyboardOnlyFocusIndicator', '');
    addShimC(_el_0);
    _KeyboardOnlyFocusIndicatorDirective_0_4 = new import34.KeyboardOnlyFocusIndicatorDirective(_el_0, parentView.parentView.parentView.parentView.injectorGet(import39.DomService, parentView.parentView.parentView.viewData.parentIndex));
    _MaterialSelectDropdownItemComponent_0_5 = new import35.MaterialSelectDropdownItemComponent(_el_0, parentView.parentView.parentView.parentView.injectorGet(import39.DomService, parentView.parentView.parentView.viewData.parentIndex), (parentView.parentView.parentView as ViewMaterialDropdownSelectComponent0)._MaterialPopupComponent_5_6, parentView.parentView.parentView.parentView.injectorGet(import40.ActivationHandler, parentView.parentView.parentView.viewData.parentIndex, null), _compView_0.ref);
    import13.Text _text_1 = new import13.Text('\n      ');
    dbgElm(this, _text_1, 1, 58, 61);
    _compView_0.create(_MaterialSelectDropdownItemComponent_0_5, [
      [_text_1]
    ]);
    _el_0.addEventListener('mouseenter', eventHandler1(_handle_mouseenter_0_1));
    _el_0.addEventListener('keyup', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_4.resetOutline));
    _el_0.addEventListener('blur', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_4.resetOutline));
    _el_0.addEventListener('mousedown', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_4.hideOutline));
    _el_0.addEventListener('click', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_4.hideOutline));
    final subscription_0 = _MaterialSelectDropdownItemComponent_0_5.trigger.listen(eventHandler0(ctx.deselectCurrentSelection));
    init([_el_0], [subscription_0], [_el_0, _text_1]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import34.KeyboardOnlyFocusIndicatorDirective) && ((0 <= nodeIndex) && (nodeIndex <= 1)))) {
      return _KeyboardOnlyFocusIndicatorDirective_0_4;
    }
    if ((((identical(token, import35.MaterialSelectDropdownItemComponent) || identical(token, import36.SelectionItem)) || identical(token, import37.HasRenderer)) && ((0 <= nodeIndex) && (nodeIndex <= 1)))) {
      return _MaterialSelectDropdownItemComponent_0_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import12.MaterialDropdownSelectComponent _ctx = ctx;
    bool firstCheck = (this.cdState == 0);
    dbg(0, 56, 10);
    final currVal_2 = _ctx.activeModel.isActive(_ctx.deselectLabel);
    if (import21.checkBinding(_expr_2, currVal_2)) {
      _MaterialSelectDropdownItemComponent_0_5.active = currVal_2;
      _expr_2 = currVal_2;
    }
    dbg(0, 54, 10);
    final currVal_3 = _ctx.deselectLabel;
    if (import21.checkBinding(_expr_3, currVal_3)) {
      _MaterialSelectDropdownItemComponent_0_5.value = currVal_3;
      _expr_3 = currVal_3;
    }
    dbg(0, 53, 10);
    final currVal_4 = _ctx.isDeselectItemSelected;
    if (import21.checkBinding(_expr_4, currVal_4)) {
      _MaterialSelectDropdownItemComponent_0_5.selected = currVal_4;
      _expr_4 = currVal_4;
    }
    final currVal_0 = (_ctx.options.optionGroups.length == 1);
    if (import21.checkBinding(_expr_0, currVal_0)) {
      updateElemClass(_el_0, 'empty', currVal_0);
      _expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.activeModel.id(_ctx.deselectLabel);
    if (import21.checkBinding(_expr_1, currVal_1)) {
      setAttr(_el_0, 'id', currVal_1?.toString());
      _expr_1 = currVal_1;
    }
    _compView_0.detectHostChanges(firstCheck);
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
    dbg(0, 49, 6);
    _MaterialSelectDropdownItemComponent_0_5.ngOnDestroy();
  }

  void _handle_mouseenter_0_1($event) {
    dbg(0, 58, 10);
    ctx.activeModel.activate(ctx.deselectLabel);
  }
}

AppView<import12.MaterialDropdownSelectComponent> viewFactory_MaterialDropdownSelectComponent3(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialDropdownSelectComponent3(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialDropdownSelectComponent4 = [
  null,
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null
];

class _ViewMaterialDropdownSelectComponent4 extends DebugAppView<import12.MaterialDropdownSelectComponent> {
  import13.DivElement _el_0;
  ViewContainer _appEl_2;
  NgIf _NgIf_2_7;
  bool _expr_0;
  _ViewMaterialDropdownSelectComponent4(AppView<dynamic> parentView, num parentIndex) : super(import19.ViewType.EMBEDDED, {'\$implicit': null}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialDropdownSelectComponent4) {
    componentType = ViewMaterialDropdownSelectComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import13.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 60, 6);
    createAttr(_el_0, 'group', '');
    addShimC(_el_0);
    import13.Text _text_1 = new import13.Text('\n        ');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 62, 64);
    var _anchor_2 = ngAnchor.clone(false);
    _el_0.append(_anchor_2);
    dbgElm(this, _anchor_2, 2, 63, 8);
    _appEl_2 = new ViewContainer(2, 0, this, _anchor_2);
    TemplateRef _TemplateRef_2_6 = new TemplateRef(_appEl_2, viewFactory_MaterialDropdownSelectComponent5);
    _NgIf_2_7 = new NgIf(_appEl_2, _TemplateRef_2_6);
    import13.Text _text_3 = new import13.Text('\n      ');
    _el_0.append(_text_3);
    dbgElm(this, _text_3, 3, 91, 19);
    init([_el_0], const [], [_el_0, _text_1, _anchor_2, _text_3]);
    return null;
  }

  @override
  void detectChangesInternal() {
    dbg(2, 63, 18);
    _NgIf_2_7.ngIf = (locals['\$implicit'].isNotEmpty || locals['\$implicit'].hasEmptyLabel);
    _appEl_2.detectChangesInNestedViews();
    final currVal_0 = (locals['\$implicit'].isEmpty && !locals['\$implicit'].hasEmptyLabel);
    if (import21.checkBinding(_expr_0, currVal_0)) {
      updateClass(_el_0, 'empty', currVal_0);
      _expr_0 = currVal_0;
    }
  }

  @override
  void destroyInternal() {
    _appEl_2.destroyNestedViews();
  }
}

AppView<import12.MaterialDropdownSelectComponent> viewFactory_MaterialDropdownSelectComponent4(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialDropdownSelectComponent4(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialDropdownSelectComponent5 = [
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null
];

class _ViewMaterialDropdownSelectComponent5 extends DebugAppView<import12.MaterialDropdownSelectComponent> {
  ViewContainer _appEl_1;
  NgIf _NgIf_1_7;
  ViewContainer _appEl_3;
  NgIf _NgIf_3_7;
  ViewContainer _appEl_5;
  NgIf _NgIf_5_7;
  ViewContainer _appEl_7;
  NgIf _NgIf_7_7;
  _ViewMaterialDropdownSelectComponent5(AppView<dynamic> parentView, num parentIndex) : super(import19.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialDropdownSelectComponent5) {
    componentType = ViewMaterialDropdownSelectComponent0._renderType;
  }
  @override
  ComponentRef build() {
    import13.Text _text_0 = new import13.Text('\n          ');
    dbgElm(this, _text_0, 0, 63, 67);
    var _anchor_1 = ngAnchor.clone(false);
    dbgElm(this, _anchor_1, 1, 64, 10);
    _appEl_1 = new ViewContainer(1, null, this, _anchor_1);
    TemplateRef _TemplateRef_1_6 = new TemplateRef(_appEl_1, viewFactory_MaterialDropdownSelectComponent6);
    _NgIf_1_7 = new NgIf(_appEl_1, _TemplateRef_1_6);
    import13.Text _text_2 = new import13.Text('\n          ');
    dbgElm(this, _text_2, 2, 66, 17);
    var _anchor_3 = ngAnchor.clone(false);
    dbgElm(this, _anchor_3, 3, 67, 10);
    _appEl_3 = new ViewContainer(3, null, this, _anchor_3);
    TemplateRef _TemplateRef_3_6 = new TemplateRef(_appEl_3, viewFactory_MaterialDropdownSelectComponent7);
    _NgIf_3_7 = new NgIf(_appEl_3, _TemplateRef_3_6);
    import13.Text _text_4 = new import13.Text('\n          ');
    dbgElm(this, _text_4, 4, 71, 30);
    var _anchor_5 = ngAnchor.clone(false);
    dbgElm(this, _anchor_5, 5, 72, 10);
    _appEl_5 = new ViewContainer(5, null, this, _anchor_5);
    TemplateRef _TemplateRef_5_6 = new TemplateRef(_appEl_5, viewFactory_MaterialDropdownSelectComponent8);
    _NgIf_5_7 = new NgIf(_appEl_5, _TemplateRef_5_6);
    import13.Text _text_6 = new import13.Text('\n          ');
    dbgElm(this, _text_6, 6, 84, 21);
    var _anchor_7 = ngAnchor.clone(false);
    dbgElm(this, _anchor_7, 7, 85, 10);
    _appEl_7 = new ViewContainer(7, null, this, _anchor_7);
    TemplateRef _TemplateRef_7_6 = new TemplateRef(_appEl_7, viewFactory_MaterialDropdownSelectComponent10);
    _NgIf_7_7 = new NgIf(_appEl_7, _TemplateRef_7_6);
    import13.Text _text_8 = new import13.Text('\n        ');
    dbgElm(this, _text_8, 8, 90, 42);
    init([_text_0, _appEl_1, _text_2, _appEl_3, _text_4, _appEl_5, _text_6, _appEl_7, _text_8], const [], [_text_0, _anchor_1, _text_2, _anchor_3, _text_4, _anchor_5, _text_6, _anchor_7, _text_8]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import12.MaterialDropdownSelectComponent _ctx = ctx;
    dbg(1, 64, 16);
    _NgIf_1_7.ngIf = (parentView.locals['\$implicit'].hasLabel && (_ctx.labelRenderer == null));
    dbg(3, 68, 14);
    _NgIf_3_7.ngIf = (_ctx.labelRenderer != null);
    dbg(5, 72, 20);
    _NgIf_5_7.ngIf = parentView.locals['\$implicit'].isNotEmpty;
    dbg(7, 86, 14);
    _NgIf_7_7.ngIf = (parentView.locals['\$implicit'].isEmpty && parentView.locals['\$implicit'].hasEmptyLabel);
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
}

AppView<import12.MaterialDropdownSelectComponent> viewFactory_MaterialDropdownSelectComponent5(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialDropdownSelectComponent5(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialDropdownSelectComponent6 = [null, null];

class _ViewMaterialDropdownSelectComponent6 extends DebugAppView<import12.MaterialDropdownSelectComponent> {
  import13.Element _el_0;
  import13.Text _text_1;
  var _expr_0;
  _ViewMaterialDropdownSelectComponent6(AppView<dynamic> parentView, num parentIndex) : super(import19.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialDropdownSelectComponent6) {
    componentType = ViewMaterialDropdownSelectComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import13.document;
    _el_0 = doc.createElement('span');
    dbgElm(this, _el_0, 0, 64, 10);
    createAttr(_el_0, 'label', '');
    addShimE(_el_0);
    _text_1 = new import13.Text('');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 64, 70);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    dbg(1, 64, 70);
    final currVal_0 = import21.interpolate1('\n            ', parentView.parentView.locals['\$implicit'].uiDisplayName, '\n          ');
    if (import21.checkBinding(_expr_0, currVal_0)) {
      _text_1.text = currVal_0;
      _expr_0 = currVal_0;
    }
  }
}

AppView<import12.MaterialDropdownSelectComponent> viewFactory_MaterialDropdownSelectComponent6(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialDropdownSelectComponent6(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialDropdownSelectComponent7 = [
  new StaticNodeDebugInfo([import41.DynamicComponent], import41.DynamicComponent, <String, dynamic>{}),
  null
];

class _ViewMaterialDropdownSelectComponent7 extends DebugAppView<import12.MaterialDropdownSelectComponent> {
  import13.Element _el_0;
  import42.ViewDynamicComponent0 _compView_0;
  ViewContainer _appEl_0;
  import41.DynamicComponent _DynamicComponent_0_6;
  var _expr_0;
  var _expr_1;
  _ViewMaterialDropdownSelectComponent7(AppView<dynamic> parentView, num parentIndex) : super(import19.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialDropdownSelectComponent7) {
    componentType = ViewMaterialDropdownSelectComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import42.ViewDynamicComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 67, 10);
    addShimC(_el_0);
    _appEl_0 = new ViewContainer(0, null, this, _el_0);
    _DynamicComponent_0_6 = new import41.DynamicComponent(parentView.parentView.parentView.parentView.parentView.parentView.injectorGet(import43.SlowComponentLoader, parentView.parentView.parentView.parentView.parentView.viewData.parentIndex), _compView_0.ref, _appEl_0);
    import13.Text _text_1 = new import13.Text('\n          ');
    dbgElm(this, _text_1, 1, 70, 30);
    _compView_0.create(_DynamicComponent_0_6, []);
    init([_appEl_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import41.DynamicComponent) && ((0 <= nodeIndex) && (nodeIndex <= 1)))) {
      return _DynamicComponent_0_6;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import12.MaterialDropdownSelectComponent _ctx = ctx;
    dbg(0, 69, 14);
    final currVal_0 = _ctx.labelRenderer(parentView.parentView.locals['\$implicit']);
    if (import21.checkBinding(_expr_0, currVal_0)) {
      _DynamicComponent_0_6.componentType = currVal_0;
      _expr_0 = currVal_0;
    }
    dbg(0, 70, 14);
    final currVal_1 = parentView.parentView.locals['\$implicit'];
    if (import21.checkBinding(_expr_1, currVal_1)) {
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
    dbg(0, 67, 10);
    _DynamicComponent_0_6.ngOnDestroy();
  }
}

AppView<import12.MaterialDropdownSelectComponent> viewFactory_MaterialDropdownSelectComponent7(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialDropdownSelectComponent7(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialDropdownSelectComponent8 = [
  null,
  new StaticNodeDebugInfo([TemplateRef, import33.NgFor], null, <String, dynamic>{}),
  null
];

class _ViewMaterialDropdownSelectComponent8 extends DebugAppView<import12.MaterialDropdownSelectComponent> {
  ViewContainer _appEl_1;
  import33.NgFor _NgFor_1_7;
  var _expr_0;
  _ViewMaterialDropdownSelectComponent8(AppView<dynamic> parentView, num parentIndex) : super(import19.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialDropdownSelectComponent8) {
    componentType = ViewMaterialDropdownSelectComponent0._renderType;
  }
  @override
  ComponentRef build() {
    import13.Text _text_0 = new import13.Text('\n            ');
    dbgElm(this, _text_0, 0, 72, 46);
    var _anchor_1 = ngAnchor.clone(false);
    dbgElm(this, _anchor_1, 1, 73, 12);
    _appEl_1 = new ViewContainer(1, null, this, _anchor_1);
    TemplateRef _TemplateRef_1_6 = new TemplateRef(_appEl_1, viewFactory_MaterialDropdownSelectComponent9);
    _NgFor_1_7 = new import33.NgFor(_appEl_1, _TemplateRef_1_6);
    import13.Text _text_2 = new import13.Text('\n          ');
    dbgElm(this, _text_2, 2, 83, 44);
    init([_text_0, _appEl_1, _text_2], const [], [_text_0, _anchor_1, _text_2]);
    return null;
  }

  @override
  void detectChangesInternal() {
    dbg(1, 73, 43);
    final currVal_0 = parentView.parentView.locals['\$implicit'];
    if (import21.checkBinding(_expr_0, currVal_0)) {
      _NgFor_1_7.ngForOf = currVal_0;
      _expr_0 = currVal_0;
    }
    if (!import21.AppViewUtils.throwOnChanges) {
      _NgFor_1_7.ngDoCheck();
    }
    _appEl_1.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    _appEl_1.destroyNestedViews();
  }
}

AppView<import12.MaterialDropdownSelectComponent> viewFactory_MaterialDropdownSelectComponent8(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialDropdownSelectComponent8(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialDropdownSelectComponent9 = [
  new StaticNodeDebugInfo([import34.KeyboardOnlyFocusIndicatorDirective, import35.MaterialSelectDropdownItemComponent, import36.SelectionItem, import37.HasRenderer], import35.MaterialSelectDropdownItemComponent, <String, dynamic>{}),
  null
];

class _ViewMaterialDropdownSelectComponent9 extends DebugAppView<import12.MaterialDropdownSelectComponent> {
  import13.Element _el_0;
  import38.ViewMaterialSelectDropdownItemComponent0 _compView_0;
  import34.KeyboardOnlyFocusIndicatorDirective _KeyboardOnlyFocusIndicatorDirective_0_4;
  import35.MaterialSelectDropdownItemComponent _MaterialSelectDropdownItemComponent_0_5;
  var _expr_0;
  bool _expr_1;
  bool _expr_2;
  var _expr_3;
  var _expr_4;
  var _expr_5;
  var _expr_6;
  _ViewMaterialDropdownSelectComponent9(AppView<dynamic> parentView, num parentIndex) : super(import19.ViewType.EMBEDDED, {'\$implicit': null}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialDropdownSelectComponent9) {
    componentType = ViewMaterialDropdownSelectComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import38.ViewMaterialSelectDropdownItemComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 73, 12);
    createAttr(_el_0, 'keyboardOnlyFocusIndicator', '');
    addShimC(_el_0);
    _KeyboardOnlyFocusIndicatorDirective_0_4 = new import34.KeyboardOnlyFocusIndicatorDirective(_el_0, parentView.parentView.parentView.parentView.parentView.parentView.parentView.injectorGet(import39.DomService, parentView.parentView.parentView.parentView.parentView.parentView.viewData.parentIndex));
    _MaterialSelectDropdownItemComponent_0_5 = new import35.MaterialSelectDropdownItemComponent(_el_0, parentView.parentView.parentView.parentView.parentView.parentView.parentView.injectorGet(import39.DomService, parentView.parentView.parentView.parentView.parentView.parentView.viewData.parentIndex), (parentView.parentView.parentView.parentView.parentView.parentView as ViewMaterialDropdownSelectComponent0)._MaterialPopupComponent_5_6, parentView.parentView.parentView.parentView.parentView.parentView.parentView.injectorGet(import40.ActivationHandler, parentView.parentView.parentView.parentView.parentView.parentView.viewData.parentIndex, null), _compView_0.ref);
    import13.Text _text_1 = new import13.Text('\n            ');
    dbgElm(this, _text_1, 1, 82, 58);
    _compView_0.create(_MaterialSelectDropdownItemComponent_0_5, [
      [_text_1]
    ]);
    _el_0.addEventListener('mouseenter', eventHandler1(_handle_mouseenter_0_0));
    _el_0.addEventListener('keyup', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_4.resetOutline));
    _el_0.addEventListener('blur', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_4.resetOutline));
    _el_0.addEventListener('mousedown', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_4.hideOutline));
    _el_0.addEventListener('click', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_4.hideOutline));
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import34.KeyboardOnlyFocusIndicatorDirective) && ((0 <= nodeIndex) && (nodeIndex <= 1)))) {
      return _KeyboardOnlyFocusIndicatorDirective_0_4;
    }
    if ((((identical(token, import35.MaterialSelectDropdownItemComponent) || identical(token, import36.SelectionItem)) || identical(token, import37.HasRenderer)) && ((0 <= nodeIndex) && (nodeIndex <= 1)))) {
      return _MaterialSelectDropdownItemComponent_0_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import12.MaterialDropdownSelectComponent _ctx = ctx;
    bool firstCheck = (this.cdState == 0);
    dbg(0, 78, 16);
    final currVal_1 = _ctx.isOptionDisabled(locals['\$implicit']);
    if (import21.checkBinding(_expr_1, currVal_1)) {
      _MaterialSelectDropdownItemComponent_0_5.disabled = currVal_1;
      _expr_1 = currVal_1;
    }
    dbg(0, 80, 16);
    final currVal_2 = _ctx.activeModel.isActive(locals['\$implicit']);
    if (import21.checkBinding(_expr_2, currVal_2)) {
      _MaterialSelectDropdownItemComponent_0_5.active = currVal_2;
      _expr_2 = currVal_2;
    }
    dbg(0, 76, 16);
    final currVal_3 = _ctx.componentRenderer;
    if (import21.checkBinding(_expr_3, currVal_3)) {
      _MaterialSelectDropdownItemComponent_0_5.componentRenderer = currVal_3;
      _expr_3 = currVal_3;
    }
    dbg(0, 79, 16);
    final currVal_4 = locals['\$implicit'];
    if (import21.checkBinding(_expr_4, currVal_4)) {
      _MaterialSelectDropdownItemComponent_0_5.value = currVal_4;
      _expr_4 = currVal_4;
    }
    dbg(0, 75, 16);
    final currVal_5 = _ctx.itemRenderer;
    if (import21.checkBinding(_expr_5, currVal_5)) {
      _MaterialSelectDropdownItemComponent_0_5.itemRenderer = currVal_5;
      _expr_5 = currVal_5;
    }
    dbg(0, 77, 16);
    final currVal_6 = _ctx.selection;
    if (import21.checkBinding(_expr_6, currVal_6)) {
      _MaterialSelectDropdownItemComponent_0_5.selection = currVal_6;
      _expr_6 = currVal_6;
    }
    final currVal_0 = _ctx.activeModel.id(locals['\$implicit']);
    if (import21.checkBinding(_expr_0, currVal_0)) {
      setAttr(_el_0, 'id', currVal_0?.toString());
      _expr_0 = currVal_0;
    }
    _compView_0.detectHostChanges(firstCheck);
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
    dbg(0, 73, 12);
    _MaterialSelectDropdownItemComponent_0_5.ngOnDestroy();
  }

  void _handle_mouseenter_0_0($event) {
    dbg(0, 82, 16);
    ctx.activeModel.activate(locals['\$implicit']);
  }
}

AppView<import12.MaterialDropdownSelectComponent> viewFactory_MaterialDropdownSelectComponent9(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialDropdownSelectComponent9(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialDropdownSelectComponent10 = [
  new StaticNodeDebugInfo([import34.KeyboardOnlyFocusIndicatorDirective, import35.MaterialSelectDropdownItemComponent, import36.SelectionItem, import37.HasRenderer], import35.MaterialSelectDropdownItemComponent, <String, dynamic>{}),
  null
];

class _ViewMaterialDropdownSelectComponent10 extends DebugAppView<import12.MaterialDropdownSelectComponent> {
  import13.Element _el_0;
  import38.ViewMaterialSelectDropdownItemComponent0 _compView_0;
  import34.KeyboardOnlyFocusIndicatorDirective _KeyboardOnlyFocusIndicatorDirective_0_4;
  import35.MaterialSelectDropdownItemComponent _MaterialSelectDropdownItemComponent_0_5;
  var _expr_1;
  _ViewMaterialDropdownSelectComponent10(AppView<dynamic> parentView, num parentIndex) : super(import19.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialDropdownSelectComponent10) {
    componentType = ViewMaterialDropdownSelectComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import38.ViewMaterialSelectDropdownItemComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 85, 10);
    createAttr(_el_0, 'keyboardOnlyFocusIndicator', '');
    addShimC(_el_0);
    _KeyboardOnlyFocusIndicatorDirective_0_4 = new import34.KeyboardOnlyFocusIndicatorDirective(_el_0, parentView.parentView.parentView.parentView.parentView.parentView.injectorGet(import39.DomService, parentView.parentView.parentView.parentView.parentView.viewData.parentIndex));
    _MaterialSelectDropdownItemComponent_0_5 = new import35.MaterialSelectDropdownItemComponent(_el_0, parentView.parentView.parentView.parentView.parentView.parentView.injectorGet(import39.DomService, parentView.parentView.parentView.parentView.parentView.viewData.parentIndex), (parentView.parentView.parentView.parentView.parentView as ViewMaterialDropdownSelectComponent0)._MaterialPopupComponent_5_6, parentView.parentView.parentView.parentView.parentView.parentView.injectorGet(import40.ActivationHandler, parentView.parentView.parentView.parentView.parentView.viewData.parentIndex, null), _compView_0.ref);
    import13.Text _text_1 = new import13.Text('\n          ');
    dbgElm(this, _text_1, 1, 89, 41);
    _compView_0.create(_MaterialSelectDropdownItemComponent_0_5, [
      [_text_1]
    ]);
    _el_0.addEventListener('keyup', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_4.resetOutline));
    _el_0.addEventListener('blur', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_4.resetOutline));
    _el_0.addEventListener('mousedown', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_4.hideOutline));
    _el_0.addEventListener('click', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_4.hideOutline));
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import34.KeyboardOnlyFocusIndicatorDirective) && ((0 <= nodeIndex) && (nodeIndex <= 1)))) {
      return _KeyboardOnlyFocusIndicatorDirective_0_4;
    }
    if ((((identical(token, import35.MaterialSelectDropdownItemComponent) || identical(token, import36.SelectionItem)) || identical(token, import37.HasRenderer)) && ((0 <= nodeIndex) && (nodeIndex <= 1)))) {
      return _MaterialSelectDropdownItemComponent_0_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = (this.cdState == 0);
    if (firstCheck) {
      (_MaterialSelectDropdownItemComponent_0_5.disabled = true);
    }
    dbg(0, 89, 14);
    final currVal_1 = parentView.parentView.locals['\$implicit'].emptyLabel;
    if (import21.checkBinding(_expr_1, currVal_1)) {
      _MaterialSelectDropdownItemComponent_0_5.value = currVal_1;
      _expr_1 = currVal_1;
    }
    _compView_0.detectHostChanges(firstCheck);
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
    dbg(0, 85, 10);
    _MaterialSelectDropdownItemComponent_0_5.ngOnDestroy();
  }
}

AppView<import12.MaterialDropdownSelectComponent> viewFactory_MaterialDropdownSelectComponent10(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialDropdownSelectComponent10(parentView, parentIndex);
}

const List<dynamic> styles$MaterialDropdownSelectComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialDropdownSelectComponentHost0 = [
  new StaticNodeDebugInfo([import12.MaterialDropdownSelectComponent, import5.DropdownHandle, import37.HasRenderer, import6.DeferredContentAware, import36.SelectionContainer, import28.PopupSizeProvider, import40.ActivationHandler], import12.MaterialDropdownSelectComponent, <String, dynamic>{})
];

class _ViewMaterialDropdownSelectComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialDropdownSelectComponent0 _compView_0;
  import12.MaterialDropdownSelectComponent _MaterialDropdownSelectComponent_0_4;
  static RenderComponentType _renderType;
  _ViewMaterialDropdownSelectComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import19.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialDropdownSelectComponentHost0) {
    _renderType ??= import21.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialDropdownSelectComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialDropdownSelectComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _MaterialDropdownSelectComponent_0_4 = new import12.MaterialDropdownSelectComponent(this.injectorGet(import44.IdGenerator, viewData.parentIndex, null), this.injectorGet(import28.PopupSizeProvider, viewData.parentIndex, null), this.injectorGet(const OpaqueToken('isRtl'), viewData.parentIndex, null));
    _compView_0.create(_MaterialDropdownSelectComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialDropdownSelectComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((((((((identical(token, import12.MaterialDropdownSelectComponent) || identical(token, import5.DropdownHandle)) || identical(token, import37.HasRenderer)) || identical(token, import6.DeferredContentAware)) || identical(token, import36.SelectionContainer)) || identical(token, import28.PopupSizeProvider)) || identical(token, import40.ActivationHandler)) && (0 == nodeIndex))) {
      return _MaterialDropdownSelectComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    Map<String, SimpleChange> changes;
    changes = null;
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
    dbg(0, 0, 0);
    _MaterialDropdownSelectComponent_0_4.ngOnDestroy();
  }
}

AppView viewFactory_MaterialDropdownSelectComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialDropdownSelectComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialDropdownSelectComponentNgFactory = const ComponentFactory('material-dropdown-select', viewFactory_MaterialDropdownSelectComponentHost0, import12.MaterialDropdownSelectComponent, _MaterialDropdownSelectComponentMetadata);
final ComponentFactory MaterialDropdownSelectComponentNgFactory = _MaterialDropdownSelectComponentNgFactory;
const _MaterialDropdownSelectComponentMetadata = const [];
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
  _ref17.initReflector();
  _ref18.initReflector();
  _ref19.initReflector();
  _ref20.initReflector();
  _ref21.initReflector();
  _ref22.initReflector();
  _ref23.initReflector();
  _ref24.initReflector();
  _ref25.initReflector();
  _ref26.initReflector();
  _ngRef.registerComponent(
    MaterialDropdownSelectComponent,
    MaterialDropdownSelectComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialDropdownSelectComponent,
    (IdGenerator p0, PopupSizeProvider p1, bool p2) => new MaterialDropdownSelectComponent(p0, p1, p2),
  );
  _ngRef.registerDependencies(
    MaterialDropdownSelectComponent,
    const [
      const [
        IdGenerator,
        const _ngRef.Optional(),
      ],
      const [
        PopupSizeProvider,
        const _ngRef.SkipSelf(),
        const _ngRef.Optional(),
      ],
      const [
        const _ngRef.Inject(const _ngRef.OpaqueToken(r'isRtl')),
        const _ngRef.Optional(),
      ],
    ],
  );
}
