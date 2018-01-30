// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_auto_suggest_input.dart';
export 'material_auto_suggest_input.dart';
import 'dart:async';
import 'dart:html' as html;
import 'package:angular/angular.dart';
import 'package:angular_components/button_decorator/button_decorator.dart';
import 'package:angular_components/content/deferred_content.dart';
import 'package:angular_components/dynamic_component/dynamic_component.dart';
import 'package:angular_components/focus/focus.dart';
import 'package:angular_components/focus/keyboard_only_focus_indicator.dart';
import 'package:angular_components/glyph/glyph.dart';
import 'package:angular_components/laminate/enums/alignment.dart';
import 'package:angular_components/laminate/popup/popup.dart';
import 'package:angular_components/material_input/input_wrapper.dart';
import 'package:angular_components/material_list/material_list.dart';
import 'package:angular_components/material_popup/material_popup.dart';
import 'package:angular_components/material_select/material_select_base.dart';
import 'package:angular_components/material_select/material_select_dropdown_item.dart';
import 'package:angular_components/material_spinner/material_spinner.dart';
import 'package:angular_components/mixins/highlight_assistant_mixin.dart';
import 'package:angular_components/mixins/material_dropdown_base.dart';
import 'package:angular_components/model/a11y/active_item.dart';
import 'package:angular_components/model/a11y/keyboard_handler_mixin.dart';
import 'package:angular_components/model/selection/select.dart';
import 'package:angular_components/model/selection/selection_container.dart';
import 'package:angular_components/model/selection/selection_model.dart';
import 'package:angular_components/model/selection/selection_options.dart';
import 'package:angular_components/model/selection/string_selection_options.dart';
import 'package:angular_components/model/ui/has_renderer.dart';
import 'package:angular_components/model/ui/highlight_provider.dart';
import 'package:angular_components/model/ui/template_support.dart';
import 'package:angular_components/stop_propagation/stop_propagation.dart';
import 'package:angular_components/utils/angular/properties/properties.dart';
import 'package:angular_components/utils/async/async.dart';
import 'package:angular_components/utils/id_generator/id_generator.dart';
import 'package:angular_forms/angular_forms.dart';
import 'material_input.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'material_input.template.dart' as _ref0;
import 'package:angular/angular.template.dart' as _ref1;
import 'package:angular_components/button_decorator/button_decorator.template.dart' as _ref2;
import 'package:angular_components/content/deferred_content.template.dart' as _ref3;
import 'package:angular_components/dynamic_component/dynamic_component.template.dart' as _ref4;
import 'package:angular_components/focus/focus.template.dart' as _ref5;
import 'package:angular_components/focus/keyboard_only_focus_indicator.template.dart' as _ref6;
import 'package:angular_components/glyph/glyph.template.dart' as _ref7;
import 'package:angular_components/laminate/enums/alignment.template.dart' as _ref8;
import 'package:angular_components/laminate/popup/popup.template.dart' as _ref9;
import 'package:angular_components/material_input/input_wrapper.template.dart' as _ref10;
import 'package:angular_components/material_list/material_list.template.dart' as _ref11;
import 'package:angular_components/material_popup/material_popup.template.dart' as _ref12;
import 'package:angular_components/material_select/material_select_base.template.dart' as _ref13;
import 'package:angular_components/material_select/material_select_dropdown_item.template.dart' as _ref14;
import 'package:angular_components/material_spinner/material_spinner.template.dart' as _ref15;
import 'package:angular_components/mixins/highlight_assistant_mixin.template.dart' as _ref16;
import 'package:angular_components/mixins/material_dropdown_base.template.dart' as _ref17;
import 'package:angular_components/model/a11y/active_item.template.dart' as _ref18;
import 'package:angular_components/model/a11y/keyboard_handler_mixin.template.dart' as _ref19;
import 'package:angular_components/model/selection/select.template.dart' as _ref20;
import 'package:angular_components/model/selection/selection_container.template.dart' as _ref21;
import 'package:angular_components/model/selection/selection_model.template.dart' as _ref22;
import 'package:angular_components/model/selection/selection_options.template.dart' as _ref23;
import 'package:angular_components/model/selection/string_selection_options.template.dart' as _ref24;
import 'package:angular_components/model/ui/has_renderer.template.dart' as _ref25;
import 'package:angular_components/model/ui/highlight_provider.template.dart' as _ref26;
import 'package:angular_components/model/ui/template_support.template.dart' as _ref27;
import 'package:angular_components/stop_propagation/stop_propagation.template.dart' as _ref28;
import 'package:angular_components/utils/angular/properties/properties.template.dart' as _ref29;
import 'package:angular_components/utils/async/async.template.dart' as _ref30;
import 'package:angular_components/utils/id_generator/id_generator.template.dart' as _ref31;
import 'package:angular_forms/angular_forms.template.dart' as _ref32;

import 'package:angular_components/material_input/material_auto_suggest_input.scss.css.shim.dart' as import0;
import 'package:angular_components/material_input/material_input_wrapper.scss.css.shim.dart' as import1;
import 'package:angular/src/debug/debug_context.dart';
import 'deferred_validator.dart' as import3;
import 'package:angular_forms/src/directives/ng_model.dart' as import4;
import 'package:angular_forms/src/directives/ng_control.dart' as import5;
import 'material_input.dart' as import6;
import 'base_material_input.dart' as import7;
import 'material_input_default_value_accessor.dart' as import8;
import '../utils/angular/reference/reference.dart' as import9;
import '../src/laminate/popup/popup_source_directive.dart' as import10;
import '../focus/focus.dart' as import11;
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/common/directives/ng_if.dart';
import '../material_popup/material_popup.dart' as import14;
import '../content/deferred_content_aware.dart' as import15;
import '../mixins/material_dropdown_base.dart' as import16;
import '../src/laminate/popup/popup_hierarchy.dart' as import17;
import '../src/laminate/popup/popup_ref.dart' as import18;
import '../focus/keyboard_only_focus_indicator.dart' as import19;
import '../content/deferred_content.dart' as import20;
import 'package:angular/src/debug/debug_app_view.dart';
import 'material_auto_suggest_input.dart' as import22;
import 'package:angular/src/core/linker/query_list.dart' as import23;
import 'dart:html' as import24;
import 'material_input.template.dart' as import25;
import 'package:angular_forms/src/directives/ng_model.template.dart' as import26;
import 'package:angular/src/core/linker/view_container.dart';
import '../material_popup/material_popup.template.dart' as import28;
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import31;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import33;
import 'package:angular/angular.dart';
import '../src/laminate/popup/dom_popup_source.dart' as import35;
import 'package:angular/src/core/zone/ng_zone.dart' as import36;
import '../src/laminate/overlay/overlay_service.dart' as import37;
import '../laminate/overlay/zindexer.dart' as import38;
import '../src/laminate/popup/popup_size_provider.dart' as import39;
import 'package:angular/src/core/linker/element_ref.dart';
import '../utils/browser/dom_service/dom_service.dart' as import41;
import '../button_decorator/button_decorator.dart' as import42;
import '../glyph/glyph.dart' as import43;
import '../stop_propagation/stop_propagation.dart' as import44;
import '../glyph/glyph.template.dart' as import45;
import '../button_decorator/button_decorator.template.dart' as import46;
import '../material_spinner/material_spinner.dart' as import47;
import '../material_spinner/material_spinner.template.dart' as import48;
import '../material_list/material_list.dart' as import49;
import 'package:angular/src/common/directives/ng_for.dart' as import50;
import '../material_list/material_list.template.dart' as import51;
import '../dynamic_component/dynamic_component.dart' as import52;
import '../dynamic_component/dynamic_component.template.dart' as import53;
import 'package:angular/src/core/linker/dynamic_component_loader.dart' as import54;
import '../material_select/material_select_dropdown_item.dart' as import55;
import '../model/selection/selection_container.dart' as import56;
import '../model/ui/has_renderer.dart' as import57;
import '../material_select/material_select_dropdown_item.template.dart' as import58;
import '../material_select/activation_handler.dart' as import59;
import '../model/ui/highlight_provider.dart' as import60;
import '../utils/id_generator/id_generator.dart' as import61;

const List<dynamic> styles$MaterialAutoSuggestInputComponent = const [import0.styles, import1.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialAutoSuggestInputComponent0 = [
  new StaticNodeDebugInfo([import3.DeferredValidator, const OpaqueToken('NgValidators'), import4.NgModel, import5.NgControl, import6.MaterialInputComponent, import7.BaseMaterialInput, import8.MaterialInputDefaultValueAccessor, import9.ReferenceDirective, import10.PopupSourceDirective, import11.Focusable], import6.MaterialInputComponent, <String, dynamic>{'input': import10.PopupSourceDirective}),
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([import14.MaterialPopupComponent, import15.DeferredContentAware, import16.DropdownHandle, import17.PopupHierarchy, import18.PopupRef], import14.MaterialPopupComponent, <String, dynamic>{}),
  new StaticNodeDebugInfo([import19.KeyboardOnlyFocusIndicatorDirective], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, import20.CachingDeferredContentDirective], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([import19.KeyboardOnlyFocusIndicatorDirective], null, <String, dynamic>{})
];

class ViewMaterialAutoSuggestInputComponent0 extends DebugAppView<import22.MaterialAutoSuggestInputComponent> {
  import23.QueryList _viewQuery_MaterialInputComponent_0;
  import24.Element _el_0;
  import25.ViewMaterialInputComponent0 _compView_0;
  import3.DeferredValidator _DeferredValidator_0_4;
  List<dynamic> _const_OpaqueToken__NgValidators___0_5;
  import26.NgModelNgCd _NgModel_0_6;
  import4.NgModel _NgControl_0_7;
  import6.MaterialInputComponent _MaterialInputComponent_0_8;
  dynamic _BaseMaterialInput_0_9;
  import8.MaterialInputDefaultValueAccessor _MaterialInputDefaultValueAccessor_0_10;
  dynamic _ReferenceDirective_0_11;
  import10.PopupSourceDirective _PopupSourceDirective_0_12;
  import24.Element _el_1;
  ViewContainer _appEl_2;
  NgIf _NgIf_2_7;
  import24.Element _el_3;
  import28.ViewMaterialPopupComponent0 _compView_3;
  ViewContainer _appEl_3;
  import14.MaterialPopupComponent _MaterialPopupComponent_3_6;
  dynamic _DeferredContentAware_3_7;
  dynamic __PopupHierarchy_3_9;
  dynamic __PopupRef_3_10;
  import24.DivElement _el_4;
  import19.KeyboardOnlyFocusIndicatorDirective _KeyboardOnlyFocusIndicatorDirective_4_4;
  ViewContainer _appEl_5;
  import20.CachingDeferredContentDirective _CachingDeferredContentDirective_5_7;
  import24.DivElement _el_6;
  import19.KeyboardOnlyFocusIndicatorDirective _KeyboardOnlyFocusIndicatorDirective_6_4;
  var _expr_2;
  var _expr_3;
  var _expr_4;
  String _expr_5;
  int _expr_6;
  bool _expr_7;
  bool _expr_8;
  bool _expr_9;
  String _expr_10;
  var _expr_11;
  String _expr_12;
  var _expr_13;
  var _expr_14;
  bool _expr_15;
  bool _expr_16;
  String _expr_17;
  String _expr_18;
  String _expr_19;
  String _expr_20;
  bool _expr_21;
  String _expr_24;
  bool _expr_25;
  bool _expr_27;
  var _expr_28;
  var _expr_29;
  bool _expr_31;
  String _expr_32;
  static RenderComponentType _renderType;
  ViewMaterialAutoSuggestInputComponent0(AppView<dynamic> parentView, num parentIndex) : super(import31.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialAutoSuggestInputComponent0) {
    rootEl = import24.document.createElement('material-auto-suggest-input');
    _renderType ??= import33.appViewUtils.createRenderType('package:angular_components/material_input/material_auto_suggest_input.html', ViewEncapsulation.Emulated, styles$MaterialAutoSuggestInputComponent);
    setupComponentType(_renderType);
  }
  dynamic get _PopupHierarchy_3_9 {
    dbg(3, 52, 0);
    if ((this.__PopupHierarchy_3_9 == null)) {
      (__PopupHierarchy_3_9 = import14.getHierarchy(this._MaterialPopupComponent_3_6));
    }
    return this.__PopupHierarchy_3_9;
  }

  dynamic get _PopupRef_3_10 {
    dbg(3, 52, 0);
    if ((this.__PopupRef_3_10 == null)) {
      (__PopupRef_3_10 = import14.getResolvedPopupRef(this._MaterialPopupComponent_3_6));
    }
    return this.__PopupRef_3_10;
  }

  @override
  ComponentRef build() {
    final import24.HtmlElement parentRenderNode = initViewRoot(rootEl);
    _viewQuery_MaterialInputComponent_0 = new import23.QueryList();
    _compView_0 = new import25.ViewMaterialInputComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    parentRenderNode.append(_el_0);
    dbgElm(this, _el_0, 0, 5, 0);
    createAttr(_el_0, 'alignPositionY', 'after');
    createAttr(_el_0, 'aria-autocomplete', 'list');
    createAttr(_el_0, 'popupSource', '');
    createAttr(_el_0, 'role', 'combobox');
    addShimC(_el_0);
    _DeferredValidator_0_4 = new import3.DeferredValidator();
    _const_OpaqueToken__NgValidators___0_5 = [_DeferredValidator_0_4];
    _NgModel_0_6 = new import26.NgModelNgCd(new import4.NgModel(_const_OpaqueToken__NgValidators___0_5, null));
    _NgControl_0_7 = _NgModel_0_6.instance;
    _MaterialInputComponent_0_8 = new import6.MaterialInputComponent(null, null, _NgControl_0_7, _compView_0.ref, _DeferredValidator_0_4);
    _BaseMaterialInput_0_9 = _MaterialInputComponent_0_8;
    _MaterialInputDefaultValueAccessor_0_10 = new import8.MaterialInputDefaultValueAccessor(_BaseMaterialInput_0_9, _NgControl_0_7);
    _ReferenceDirective_0_11 = _MaterialInputComponent_0_8;
    _PopupSourceDirective_0_12 = new import10.PopupSourceDirective(parentView.injectorGet(import35.DomPopupSourceFactory, viewData.parentIndex), _el_0, _ReferenceDirective_0_11);
    var doc = import24.document;
    _el_1 = doc.createElement('span');
    dbgElm(this, _el_1, 1, 39, 2);
    createAttr(_el_1, 'trailing', '');
    addShimE(_el_1);
    var _anchor_2 = ngAnchor.clone(false);
    _el_1.append(_anchor_2);
    dbgElm(this, _anchor_2, 2, 40, 4);
    _appEl_2 = new ViewContainer(2, 1, this, _anchor_2);
    TemplateRef _TemplateRef_2_6 = new TemplateRef(_appEl_2, viewFactory_MaterialAutoSuggestInputComponent1);
    _NgIf_2_7 = new NgIf(_appEl_2, _TemplateRef_2_6);
    dbg(null, 49, 4);
    project(_el_1, 0);
    _compView_0.create(_MaterialInputComponent_0_8, [
      [_el_1]
    ]);
    _compView_3 = new import28.ViewMaterialPopupComponent0(this, 3);
    _el_3 = _compView_3.rootEl;
    parentRenderNode.append(_el_3);
    dbgElm(this, _el_3, 3, 52, 0);
    createAttr(_el_3, 'enforceSpaceConstraints', '');
    createAttr(_el_3, 'trackLayoutChanges', '');
    addShimC(_el_3);
    _appEl_3 = new ViewContainer(3, null, this, _el_3);
    _MaterialPopupComponent_3_6 = new import14.MaterialPopupComponent(parentView.injectorGet(import17.PopupHierarchy, viewData.parentIndex, null), parentView.injectorGet(import14.MaterialPopupComponent, viewData.parentIndex, null), null, parentView.injectorGet(import36.NgZone, viewData.parentIndex), parentView.injectorGet(import37.OverlayService, viewData.parentIndex), parentView.injectorGet(import38.ZIndexer, viewData.parentIndex), parentView.injectorGet(const OpaqueToken('defaultPopupPositions'), viewData.parentIndex), parentView.injectorGet(const OpaqueToken('overlayRepositionLoop'), viewData.parentIndex), parentView.injectorGet(import39.PopupSizeProvider, viewData.parentIndex, null), _compView_3.ref, _appEl_3, new ElementRef(_el_3));
    _DeferredContentAware_3_7 = _MaterialPopupComponent_3_6;
    _el_4 = doc.createElement('div');
    dbgElm(this, _el_4, 4, 62, 2);
    createAttr(_el_4, 'header', '');
    createAttr(_el_4, 'keyboardOnlyFocusIndicator', '');
    createAttr(_el_4, 'tabIndex', '-1');
    addShimC(_el_4);
    _KeyboardOnlyFocusIndicatorDirective_4_4 = new import19.KeyboardOnlyFocusIndicatorDirective(_el_4, parentView.injectorGet(import41.DomService, viewData.parentIndex));
    dbg(null, 65, 4);
    project(_el_4, 1);
    var _anchor_5 = ngAnchor.clone(false);
    dbgElm(this, _anchor_5, 5, 68, 2);
    _appEl_5 = new ViewContainer(5, 3, this, _anchor_5);
    TemplateRef _TemplateRef_5_6 = new TemplateRef(_appEl_5, viewFactory_MaterialAutoSuggestInputComponent2);
    _CachingDeferredContentDirective_5_7 = new import20.CachingDeferredContentDirective(_appEl_5, _TemplateRef_5_6, _DeferredContentAware_3_7);
    _el_6 = doc.createElement('div');
    dbgElm(this, _el_6, 6, 124, 2);
    createAttr(_el_6, 'footer', '');
    createAttr(_el_6, 'keyboardOnlyFocusIndicator', '');
    createAttr(_el_6, 'tabIndex', '-1');
    addShimC(_el_6);
    _KeyboardOnlyFocusIndicatorDirective_6_4 = new import19.KeyboardOnlyFocusIndicatorDirective(_el_6, parentView.injectorGet(import41.DomService, viewData.parentIndex));
    dbg(null, 127, 4);
    project(_el_6, 2);
    _compView_3.create(_MaterialPopupComponent_3_6, [
      [_el_4],
      [_appEl_5],
      [_el_6]
    ]);
    _el_0.addEventListener('click', eventHandler1(_handle_click_0_1));
    _el_0.addEventListener('keydown', eventHandler1(ctx.onKeyDown));
    _el_0.addEventListener('keypress', eventHandler1(ctx.onKeyPress));
    _el_0.addEventListener('keyup', eventHandler1(ctx.onKeyUp));
    final subscription_0 = _NgModel_0_6.instance.update.listen(eventHandler1(_handle_ngModelChange_0_0));
    final subscription_1 = _MaterialInputComponent_0_8.onFocus.listen(eventHandler1(ctx.handleFocus));
    final subscription_2 = _MaterialInputComponent_0_8.onBlur.listen(eventHandler1(ctx.handleBlur));
    final subscription_3 = _MaterialPopupComponent_3_6.onVisible.listen(eventHandler1(_handle_visibleChange_3_0));
    _el_4.addEventListener('keyup', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_4_4.resetOutline));
    _el_4.addEventListener('blur', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_4_4.resetOutline));
    _el_4.addEventListener('mousedown', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_4_4.hideOutline));
    _el_4.addEventListener('click', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_4_4.hideOutline));
    _el_6.addEventListener('keyup', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_6_4.resetOutline));
    _el_6.addEventListener('blur', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_6_4.resetOutline));
    _el_6.addEventListener('mousedown', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_6_4.hideOutline));
    _el_6.addEventListener('click', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_6_4.hideOutline));
    _viewQuery_MaterialInputComponent_0.reset([_MaterialInputComponent_0_8]);
    ctx.input = _viewQuery_MaterialInputComponent_0.first;
    init(const [], [subscription_0, subscription_1, subscription_2, subscription_3], [_el_0, _el_1, _anchor_2, _el_3, _el_4, _anchor_5, _el_6]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import3.DeferredValidator) && ((0 <= nodeIndex) && (nodeIndex <= 2)))) {
      return _DeferredValidator_0_4;
    }
    if ((identical(token, const OpaqueToken('NgValidators')) && ((0 <= nodeIndex) && (nodeIndex <= 2)))) {
      return _const_OpaqueToken__NgValidators___0_5;
    }
    if ((identical(token, import4.NgModel) && ((0 <= nodeIndex) && (nodeIndex <= 2)))) {
      return _NgModel_0_6.instance;
    }
    if ((identical(token, import5.NgControl) && ((0 <= nodeIndex) && (nodeIndex <= 2)))) {
      return _NgControl_0_7;
    }
    if (((identical(token, import6.MaterialInputComponent) || identical(token, import11.Focusable)) && ((0 <= nodeIndex) && (nodeIndex <= 2)))) {
      return _MaterialInputComponent_0_8;
    }
    if ((identical(token, import7.BaseMaterialInput) && ((0 <= nodeIndex) && (nodeIndex <= 2)))) {
      return _BaseMaterialInput_0_9;
    }
    if ((identical(token, import8.MaterialInputDefaultValueAccessor) && ((0 <= nodeIndex) && (nodeIndex <= 2)))) {
      return _MaterialInputDefaultValueAccessor_0_10;
    }
    if ((identical(token, import9.ReferenceDirective) && ((0 <= nodeIndex) && (nodeIndex <= 2)))) {
      return _ReferenceDirective_0_11;
    }
    if ((identical(token, import10.PopupSourceDirective) && ((0 <= nodeIndex) && (nodeIndex <= 2)))) {
      return _PopupSourceDirective_0_12;
    }
    if ((identical(token, import19.KeyboardOnlyFocusIndicatorDirective) && (4 == nodeIndex))) {
      return _KeyboardOnlyFocusIndicatorDirective_4_4;
    }
    if ((identical(token, import20.CachingDeferredContentDirective) && (5 == nodeIndex))) {
      return _CachingDeferredContentDirective_5_7;
    }
    if ((identical(token, import19.KeyboardOnlyFocusIndicatorDirective) && (6 == nodeIndex))) {
      return _KeyboardOnlyFocusIndicatorDirective_6_4;
    }
    if (((identical(token, import14.MaterialPopupComponent) || identical(token, import16.DropdownHandle)) && ((3 <= nodeIndex) && (nodeIndex <= 6)))) {
      return _MaterialPopupComponent_3_6;
    }
    if ((identical(token, import15.DeferredContentAware) && ((3 <= nodeIndex) && (nodeIndex <= 6)))) {
      return _DeferredContentAware_3_7;
    }
    if ((identical(token, import17.PopupHierarchy) && ((3 <= nodeIndex) && (nodeIndex <= 6)))) {
      return _PopupHierarchy_3_9;
    }
    if ((identical(token, import18.PopupRef) && ((3 <= nodeIndex) && (nodeIndex <= 6)))) {
      return _PopupRef_3_10;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import22.MaterialAutoSuggestInputComponent _ctx = ctx;
    bool changed = true;
    Map<String, SimpleChange> changes;
    bool firstCheck = (this.cdState == 0);
    changes = null;
    dbg(0, 10, 4);
    final currVal_4 = _ctx.inputText;
    if (import33.checkBinding(_expr_4, currVal_4)) {
      _NgModel_0_6.instance.model = currVal_4;
      changes ??= <String, SimpleChange>{};
      changes['model'] = new SimpleChange(_expr_4, currVal_4);
      _expr_4 = currVal_4;
    }
    if (!identical(changes, null)) {
      _NgModel_0_6.instance.ngOnChanges(changes);
    }
    if ((firstCheck && !import33.AppViewUtils.throwOnChanges)) {
      _NgModel_0_6.instance.ngOnInit();
    }
    changed = false;
    dbg(0, 9, 4);
    final currVal_5 = _ctx.label;
    if (import33.checkBinding(_expr_5, currVal_5)) {
      _MaterialInputComponent_0_8.label = currVal_5;
      changed = true;
      _expr_5 = currVal_5;
    }
    dbg(0, 25, 4);
    final currVal_6 = _ctx.maxCount;
    if (import33.checkBinding(_expr_6, currVal_6)) {
      _MaterialInputComponent_0_8.maxCount = currVal_6;
      changed = true;
      _expr_6 = currVal_6;
    }
    dbg(0, 20, 4);
    final currVal_7 = _ctx.displayBottomPanel;
    if (import33.checkBinding(_expr_7, currVal_7)) {
      _MaterialInputComponent_0_8.displayBottomPanel = currVal_7;
      changed = true;
      _expr_7 = currVal_7;
    }
    dbg(0, 22, 4);
    final currVal_8 = _ctx.floatingLabel;
    if (import33.checkBinding(_expr_8, currVal_8)) {
      _MaterialInputComponent_0_8.floatingLabel = currVal_8;
      changed = true;
      _expr_8 = currVal_8;
    }
    dbg(0, 19, 4);
    final currVal_9 = _ctx.disabled;
    if (import33.checkBinding(_expr_9, currVal_9)) {
      _MaterialInputComponent_0_8.disabled = currVal_9;
      changed = true;
      _expr_9 = currVal_9;
    }
    dbg(0, 21, 4);
    final currVal_10 = _ctx.errorText;
    if (import33.checkBinding(_expr_10, currVal_10)) {
      _MaterialInputComponent_0_8.error = currVal_10;
      changed = true;
      _expr_10 = currVal_10;
    }
    dbg(0, 11, 4);
    final currVal_11 = _ctx.hintText;
    if (import33.checkBinding(_expr_11, currVal_11)) {
      _MaterialInputComponent_0_8.hintText = currVal_11;
      changed = true;
      _expr_11 = currVal_11;
    }
    dbg(0, 27, 4);
    final currVal_12 = _ctx.requiredErrorMsg;
    if (import33.checkBinding(_expr_12, currVal_12)) {
      _MaterialInputComponent_0_8.requiredErrorMsg = currVal_12;
      changed = true;
      _expr_12 = currVal_12;
    }
    dbg(0, 18, 4);
    final currVal_13 = _ctx.checkValid;
    if (import33.checkBinding(_expr_13, currVal_13)) {
      _MaterialInputComponent_0_8.checkValid = currVal_13;
      changed = true;
      _expr_13 = currVal_13;
    }
    dbg(0, 17, 4);
    final currVal_14 = _ctx.characterCounter;
    if (import33.checkBinding(_expr_14, currVal_14)) {
      _MaterialInputComponent_0_8.characterCounter = currVal_14;
      changed = true;
      _expr_14 = currVal_14;
    }
    dbg(0, 12, 4);
    final currVal_15 = _ctx.showHintOnlyOnFocus;
    if (import33.checkBinding(_expr_15, currVal_15)) {
      _MaterialInputComponent_0_8.showHintOnlyOnFocus = currVal_15;
      changed = true;
      _expr_15 = currVal_15;
    }
    dbg(0, 26, 4);
    final currVal_16 = _ctx.required;
    if (import33.checkBinding(_expr_16, currVal_16)) {
      _MaterialInputComponent_0_8.required = currVal_16;
      changed = true;
      _expr_16 = currVal_16;
    }
    dbg(0, 23, 4);
    final currVal_17 = _ctx.leadingText;
    if (import33.checkBinding(_expr_17, currVal_17)) {
      _MaterialInputComponent_0_8.leadingText = currVal_17;
      changed = true;
      _expr_17 = currVal_17;
    }
    dbg(0, 24, 4);
    final currVal_18 = _ctx.leadingGlyph;
    if (import33.checkBinding(_expr_18, currVal_18)) {
      _MaterialInputComponent_0_8.leadingGlyph = currVal_18;
      changed = true;
      _expr_18 = currVal_18;
    }
    dbg(0, 30, 4);
    final currVal_19 = _ctx.trailingText;
    if (import33.checkBinding(_expr_19, currVal_19)) {
      _MaterialInputComponent_0_8.trailingText = currVal_19;
      changed = true;
      _expr_19 = currVal_19;
    }
    dbg(0, 29, 4);
    final currVal_20 = _ctx.trailingGlyph;
    if (import33.checkBinding(_expr_20, currVal_20)) {
      _MaterialInputComponent_0_8.trailingGlyph = currVal_20;
      changed = true;
      _expr_20 = currVal_20;
    }
    dbg(0, 28, 4);
    final currVal_21 = _ctx.rightAlign;
    if (import33.checkBinding(_expr_21, currVal_21)) {
      _MaterialInputComponent_0_8.rightAlign = currVal_21;
      changed = true;
      _expr_21 = currVal_21;
    }
    if (changed) {
      _compView_0.markAsCheckOnce();
    }
    if (firstCheck) {
      (_PopupSourceDirective_0_12.alignY = 'after');
    }
    dbg(2, 41, 8);
    _NgIf_2_7.ngIf = _ctx.showClearIcon;
    if (firstCheck) {
      _MaterialPopupComponent_3_6.enforceSpaceConstraints = true;
      _MaterialPopupComponent_3_6.trackLayoutChanges = true;
    }
    dbg(3, 55, 4);
    final currVal_25 = _ctx.autoDismiss;
    if (import33.checkBinding(_expr_25, currVal_25)) {
      _MaterialPopupComponent_3_6.autoDismiss = currVal_25;
      _expr_25 = currVal_25;
    }
    dbg(3, 56, 4);
    final currVal_27 = _ctx.popupMatchInputWidth;
    if (import33.checkBinding(_expr_27, currVal_27)) {
      _MaterialPopupComponent_3_6.matchMinSourceWidth = currVal_27;
      _expr_27 = currVal_27;
    }
    dbg(3, 57, 4);
    final currVal_28 = _ctx.popupPositions;
    if (import33.checkBinding(_expr_28, currVal_28)) {
      _MaterialPopupComponent_3_6.preferredPositions = currVal_28;
      _expr_28 = currVal_28;
    }
    dbg(3, 59, 4);
    final currVal_29 = _PopupSourceDirective_0_12;
    if (import33.checkBinding(_expr_29, currVal_29)) {
      _MaterialPopupComponent_3_6.source = currVal_29;
      _expr_29 = currVal_29;
    }
    dbg(3, 60, 4);
    final currVal_31 = _ctx.showPopup;
    if (import33.checkBinding(_expr_31, currVal_31)) {
      _MaterialPopupComponent_3_6.visible = currVal_31;
      _expr_31 = currVal_31;
    }
    dbg(3, 58, 4);
    final currVal_32 = _ctx.slide;
    if (import33.checkBinding(_expr_32, currVal_32)) {
      _MaterialPopupComponent_3_6.slide = currVal_32;
      _expr_32 = currVal_32;
    }
    _appEl_2.detectChangesInNestedViews();
    _appEl_3.detectChangesInNestedViews();
    _appEl_5.detectChangesInNestedViews();
    if (firstCheck) {
      if (!identical(_ctx.inputId, null)) {
        setProp(_el_0, 'id', _ctx.inputId);
      }
      if (!identical(_ctx.popupId, null)) {
        setAttr(_el_0, 'aria-owns', _ctx.popupId?.toString());
      }
    }
    final currVal_2 = _ctx.activeModel.activeId;
    if (import33.checkBinding(_expr_2, currVal_2)) {
      setAttr(_el_0, 'aria-activedescendant', currVal_2?.toString());
      _expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.showPopup;
    if (import33.checkBinding(_expr_3, currVal_3)) {
      setAttr(_el_0, 'aria-expanded', currVal_3?.toString());
      _expr_3 = currVal_3;
    }
    final currVal_24 = (_ctx.popupShadowCssClass ?? '');
    if (import33.checkBinding(_expr_24, currVal_24)) {
      _compView_3.updateChildClass(_el_3, currVal_24);
      _expr_24 = currVal_24;
    }
    _compView_3.detectHostChanges(firstCheck);
    _compView_0.detectChanges();
    _compView_3.detectChanges();
    if (!import33.AppViewUtils.throwOnChanges) {
      dbg(0, 5, 0);
      if (firstCheck) {
        _MaterialInputComponent_0_8.ngAfterViewInit();
      }
      if (firstCheck) {
        _PopupSourceDirective_0_12.ngAfterViewInit();
      }
      dbg(3, 52, 0);
      if (firstCheck) {
        _MaterialPopupComponent_3_6.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    _appEl_2.destroyNestedViews();
    _appEl_3.destroyNestedViews();
    _appEl_5.destroyNestedViews();
    _compView_0.destroy();
    _compView_3.destroy();
    dbg(0, 5, 0);
    _MaterialInputComponent_0_8.ngOnDestroy();
    _MaterialInputDefaultValueAccessor_0_10.ngOnDestroy();
    _PopupSourceDirective_0_12.ngOnDestroy();
    dbg(5, 68, 2);
    _CachingDeferredContentDirective_5_7.ngOnDestroy();
    dbg(3, 52, 0);
    _MaterialPopupComponent_3_6.ngOnDestroy();
  }

  void _handle_ngModelChange_0_0($event) {
    dbg(0, 13, 4);
    ctx.inputText = $event;
    ctx.showPopup = true;
  }

  void _handle_click_0_1($event) {
    dbg(0, 14, 4);
    ctx.showPopup = true;
    $event.stopPropagation();
  }

  void _handle_visibleChange_3_0($event) {
    dbg(3, 61, 4);
    ctx.showPopup = $event;
  }
}

AppView<import22.MaterialAutoSuggestInputComponent> viewFactory_MaterialAutoSuggestInputComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialAutoSuggestInputComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialAutoSuggestInputComponent1 = [
  new StaticNodeDebugInfo([import42.ButtonDirective, import43.GlyphComponent, import19.KeyboardOnlyFocusIndicatorDirective, import44.StopPropagationDirective], import43.GlyphComponent, <String, dynamic>{})
];

class _ViewMaterialAutoSuggestInputComponent1 extends DebugAppView<import22.MaterialAutoSuggestInputComponent> {
  import24.Element _el_0;
  import45.ViewGlyphComponent0 _compView_0;
  import46.ButtonDirectiveNgCd _ButtonDirective_0_4;
  import43.GlyphComponent _GlyphComponent_0_5;
  import19.KeyboardOnlyFocusIndicatorDirective _KeyboardOnlyFocusIndicatorDirective_0_6;
  import44.StopPropagationDirective _StopPropagationDirective_0_7;
  _ViewMaterialAutoSuggestInputComponent1(AppView<dynamic> parentView, num parentIndex) : super(import31.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialAutoSuggestInputComponent1) {
    componentType = ViewMaterialAutoSuggestInputComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import45.ViewGlyphComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 40, 4);
    createAttr(_el_0, 'buttonDecorator', '');
    _el_0.className = 'clear-icon';
    createAttr(_el_0, 'icon', 'clear');
    createAttr(_el_0, 'keyboardOnlyFocusIndicator', '');
    createAttr(_el_0, 'role', 'button');
    createAttr(_el_0, 'stopPropagation', '');
    addShimC(_el_0);
    _ButtonDirective_0_4 = new import46.ButtonDirectiveNgCd(new import42.ButtonDirective(_el_0));
    _GlyphComponent_0_5 = new import43.GlyphComponent(_el_0);
    _KeyboardOnlyFocusIndicatorDirective_0_6 = new import19.KeyboardOnlyFocusIndicatorDirective(_el_0, parentView.parentView.injectorGet(import41.DomService, parentView.viewData.parentIndex));
    _StopPropagationDirective_0_7 = new import44.StopPropagationDirective(_el_0);
    _compView_0.create(_GlyphComponent_0_5, []);
    _el_0.addEventListener('click', eventHandler1(_handle_click_0_1));
    _el_0.addEventListener('keypress', eventHandler1(_ButtonDirective_0_4.instance.handleKeyPress));
    _el_0.addEventListener('keyup', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_6.resetOutline));
    _el_0.addEventListener('blur', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_6.resetOutline));
    _el_0.addEventListener('mousedown', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_6.hideOutline));
    final subscription_0 = _ButtonDirective_0_4.instance.trigger.listen(eventHandler0(ctx.onClearIcon));
    init([_el_0], [subscription_0], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import42.ButtonDirective) && (0 == nodeIndex))) {
      return _ButtonDirective_0_4.instance;
    }
    if ((identical(token, import43.GlyphComponent) && (0 == nodeIndex))) {
      return _GlyphComponent_0_5;
    }
    if ((identical(token, import19.KeyboardOnlyFocusIndicatorDirective) && (0 == nodeIndex))) {
      return _KeyboardOnlyFocusIndicatorDirective_0_6;
    }
    if ((identical(token, import44.StopPropagationDirective) && (0 == nodeIndex))) {
      return _StopPropagationDirective_0_7;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool changed = true;
    bool firstCheck = (this.cdState == 0);
    changed = false;
    if (firstCheck) {
      _GlyphComponent_0_5.icon = 'clear';
      changed = true;
    }
    if (changed) {
      _compView_0.markAsCheckOnce();
    }
    _ButtonDirective_0_4.detectHostChanges(_compView_0, _el_0, firstCheck);
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
    dbg(0, 40, 4);
    _StopPropagationDirective_0_7.ngOnDestroy();
  }

  void _handle_click_0_1($event) {
    dbg(0, 40, 4);
    _ButtonDirective_0_4.instance.handleClick($event);
    _KeyboardOnlyFocusIndicatorDirective_0_6.hideOutline();
  }
}

AppView<import22.MaterialAutoSuggestInputComponent> viewFactory_MaterialAutoSuggestInputComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialAutoSuggestInputComponent1(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialAutoSuggestInputComponent2 = [
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{})
];

class _ViewMaterialAutoSuggestInputComponent2 extends DebugAppView<import22.MaterialAutoSuggestInputComponent> {
  ViewContainer _appEl_0;
  NgIf _NgIf_0_7;
  ViewContainer _appEl_1;
  NgIf _NgIf_1_7;
  ViewContainer _appEl_2;
  NgIf _NgIf_2_7;
  _ViewMaterialAutoSuggestInputComponent2(AppView<dynamic> parentView, num parentIndex) : super(import31.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialAutoSuggestInputComponent2) {
    componentType = ViewMaterialAutoSuggestInputComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var _anchor_0 = ngAnchor.clone(false);
    dbgElm(this, _anchor_0, 0, 69, 4);
    _appEl_0 = new ViewContainer(0, null, this, _anchor_0);
    TemplateRef _TemplateRef_0_6 = new TemplateRef(_appEl_0, viewFactory_MaterialAutoSuggestInputComponent3);
    _NgIf_0_7 = new NgIf(_appEl_0, _TemplateRef_0_6);
    var _anchor_1 = ngAnchor.clone(false);
    dbgElm(this, _anchor_1, 1, 72, 4);
    _appEl_1 = new ViewContainer(1, null, this, _anchor_1);
    TemplateRef _TemplateRef_1_6 = new TemplateRef(_appEl_1, viewFactory_MaterialAutoSuggestInputComponent4);
    _NgIf_1_7 = new NgIf(_appEl_1, _TemplateRef_1_6);
    var _anchor_2 = ngAnchor.clone(false);
    dbgElm(this, _anchor_2, 2, 75, 4);
    _appEl_2 = new ViewContainer(2, null, this, _anchor_2);
    TemplateRef _TemplateRef_2_6 = new TemplateRef(_appEl_2, viewFactory_MaterialAutoSuggestInputComponent5);
    _NgIf_2_7 = new NgIf(_appEl_2, _TemplateRef_2_6);
    init([_appEl_0, _appEl_1, _appEl_2], const [], [_anchor_0, _anchor_1, _anchor_2]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import22.MaterialAutoSuggestInputComponent _ctx = ctx;
    dbg(0, 69, 9);
    _NgIf_0_7.ngIf = _ctx.showLoadingSpinner;
    dbg(1, 72, 9);
    _NgIf_1_7.ngIf = _ctx.showEmptyPlaceholder;
    dbg(2, 75, 19);
    _NgIf_2_7.ngIf = _ctx.hasOptions;
    _appEl_0.detectChangesInNestedViews();
    _appEl_1.detectChangesInNestedViews();
    _appEl_2.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    _appEl_0.destroyNestedViews();
    _appEl_1.destroyNestedViews();
    _appEl_2.destroyNestedViews();
  }
}

AppView<import22.MaterialAutoSuggestInputComponent> viewFactory_MaterialAutoSuggestInputComponent2(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialAutoSuggestInputComponent2(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialAutoSuggestInputComponent3 = [
  null,
  new StaticNodeDebugInfo([import47.MaterialSpinnerComponent], import47.MaterialSpinnerComponent, <String, dynamic>{})
];

class _ViewMaterialAutoSuggestInputComponent3 extends DebugAppView<import22.MaterialAutoSuggestInputComponent> {
  import24.DivElement _el_0;
  import24.Element _el_1;
  import48.ViewMaterialSpinnerComponent0 _compView_1;
  import47.MaterialSpinnerComponent _MaterialSpinnerComponent_1_4;
  _ViewMaterialAutoSuggestInputComponent3(AppView<dynamic> parentView, num parentIndex) : super(import31.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialAutoSuggestInputComponent3) {
    componentType = ViewMaterialAutoSuggestInputComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import24.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 69, 4);
    _el_0.className = 'loading';
    addShimC(_el_0);
    _compView_1 = new import48.ViewMaterialSpinnerComponent0(this, 1);
    _el_1 = _compView_1.rootEl;
    _el_0.append(_el_1);
    dbgElm(this, _el_1, 1, 70, 6);
    addShimC(_el_1);
    _MaterialSpinnerComponent_1_4 = new import47.MaterialSpinnerComponent();
    _compView_1.create(_MaterialSpinnerComponent_1_4, []);
    init([_el_0], const [], [_el_0, _el_1]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import47.MaterialSpinnerComponent) && (1 == nodeIndex))) {
      return _MaterialSpinnerComponent_1_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    _compView_1.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_1.destroy();
  }
}

AppView<import22.MaterialAutoSuggestInputComponent> viewFactory_MaterialAutoSuggestInputComponent3(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialAutoSuggestInputComponent3(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialAutoSuggestInputComponent4 = [null, null];

class _ViewMaterialAutoSuggestInputComponent4 extends DebugAppView<import22.MaterialAutoSuggestInputComponent> {
  import24.DivElement _el_0;
  import24.Text _text_1;
  var _expr_0;
  _ViewMaterialAutoSuggestInputComponent4(AppView<dynamic> parentView, num parentIndex) : super(import31.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialAutoSuggestInputComponent4) {
    componentType = ViewMaterialAutoSuggestInputComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import24.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 72, 4);
    _el_0.className = 'empty';
    addShimC(_el_0);
    _text_1 = new import24.Text('');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 72, 52);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import22.MaterialAutoSuggestInputComponent _ctx = ctx;
    dbg(1, 72, 52);
    final currVal_0 = import33.interpolate0(_ctx.emptyPlaceholder);
    if (import33.checkBinding(_expr_0, currVal_0)) {
      _text_1.text = currVal_0;
      _expr_0 = currVal_0;
    }
  }
}

AppView<import22.MaterialAutoSuggestInputComponent> viewFactory_MaterialAutoSuggestInputComponent4(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialAutoSuggestInputComponent4(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialAutoSuggestInputComponent5 = [
  new StaticNodeDebugInfo([import19.KeyboardOnlyFocusIndicatorDirective, import49.MaterialListComponent], import49.MaterialListComponent, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, import50.NgFor], null, <String, dynamic>{})
];

class _ViewMaterialAutoSuggestInputComponent5 extends DebugAppView<import22.MaterialAutoSuggestInputComponent> {
  import24.Element _el_0;
  import51.ViewMaterialListComponent0 _compView_0;
  import19.KeyboardOnlyFocusIndicatorDirective _KeyboardOnlyFocusIndicatorDirective_0_4;
  import49.MaterialListComponent _MaterialListComponent_0_5;
  ViewContainer _appEl_1;
  import50.NgFor _NgFor_1_7;
  var _expr_0;
  var _expr_3;
  var _expr_5;
  _ViewMaterialAutoSuggestInputComponent5(AppView<dynamic> parentView, num parentIndex) : super(import31.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialAutoSuggestInputComponent5) {
    componentType = ViewMaterialAutoSuggestInputComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import51.ViewMaterialListComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 75, 4);
    _el_0.className = 'suggestion-list';
    createAttr(_el_0, 'keyboardOnlyFocusIndicator', '');
    createAttr(_el_0, 'role', 'listbox');
    createAttr(_el_0, 'tabIndex', '-1');
    addShimC(_el_0);
    _KeyboardOnlyFocusIndicatorDirective_0_4 = new import19.KeyboardOnlyFocusIndicatorDirective(_el_0, parentView.parentView.parentView.injectorGet(import41.DomService, parentView.parentView.viewData.parentIndex));
    _MaterialListComponent_0_5 = new import49.MaterialListComponent();
    var _anchor_1 = ngAnchor.clone(false);
    dbgElm(this, _anchor_1, 1, 85, 6);
    _appEl_1 = new ViewContainer(1, 0, this, _anchor_1);
    TemplateRef _TemplateRef_1_6 = new TemplateRef(_appEl_1, viewFactory_MaterialAutoSuggestInputComponent6);
    _NgFor_1_7 = new import50.NgFor(_appEl_1, _TemplateRef_1_6);
    _compView_0.create(_MaterialListComponent_0_5, [
      [_appEl_1]
    ]);
    _el_0.addEventListener('mouseleave', eventHandler1(_handle_mouseleave_0_0));
    _el_0.addEventListener('keyup', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_4.resetOutline));
    _el_0.addEventListener('blur', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_4.resetOutline));
    _el_0.addEventListener('mousedown', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_4.hideOutline));
    _el_0.addEventListener('click', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_4.hideOutline));
    init([_el_0], const [], [_el_0, _anchor_1]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import19.KeyboardOnlyFocusIndicatorDirective) && ((0 <= nodeIndex) && (nodeIndex <= 1)))) {
      return _KeyboardOnlyFocusIndicatorDirective_0_4;
    }
    if ((identical(token, import49.MaterialListComponent) && ((0 <= nodeIndex) && (nodeIndex <= 1)))) {
      return _MaterialListComponent_0_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import22.MaterialAutoSuggestInputComponent _ctx = ctx;
    bool changed = true;
    bool firstCheck = (this.cdState == 0);
    changed = false;
    dbg(0, 83, 8);
    final currVal_3 = _ctx.width;
    if (import33.checkBinding(_expr_3, currVal_3)) {
      _MaterialListComponent_0_5.width = currVal_3;
      changed = true;
      _expr_3 = currVal_3;
    }
    if (changed) {
      _compView_0.markAsCheckOnce();
    }
    if (firstCheck) {
      if (!identical(_ctx.trackByIndexFn, null)) {
        (_NgFor_1_7.ngForTrackBy = _ctx.trackByIndexFn);
      }
    }
    dbg(1, 86, 10);
    final currVal_5 = _ctx.visibleSuggestionGroups;
    if (import33.checkBinding(_expr_5, currVal_5)) {
      _NgFor_1_7.ngForOf = currVal_5;
      _expr_5 = currVal_5;
    }
    if (!import33.AppViewUtils.throwOnChanges) {
      _NgFor_1_7.ngDoCheck();
    }
    _appEl_1.detectChangesInNestedViews();
    if (firstCheck) {
      if (!identical(_ctx.inputId, null)) {
        setAttr(_el_0, 'aria-labelledby', _ctx.inputId?.toString());
      }
      if (!identical(_ctx.popupId, null)) {
        setProp(_el_0, 'id', _ctx.popupId);
      }
    }
    final currVal_0 = _ctx.isMultiSelect;
    if (import33.checkBinding(_expr_0, currVal_0)) {
      setAttr(_el_0, 'aria-multiselectable', currVal_0?.toString());
      _expr_0 = currVal_0;
    }
    _compView_0.detectHostChanges(firstCheck);
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _appEl_1.destroyNestedViews();
    _compView_0.destroy();
  }

  void _handle_mouseleave_0_0($event) {
    dbg(0, 84, 8);
    ctx.activeModel.activate(null);
  }
}

AppView<import22.MaterialAutoSuggestInputComponent> viewFactory_MaterialAutoSuggestInputComponent5(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialAutoSuggestInputComponent5(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialAutoSuggestInputComponent6 = [
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, import50.NgFor], null, <String, dynamic>{})
];

class _ViewMaterialAutoSuggestInputComponent6 extends DebugAppView<import22.MaterialAutoSuggestInputComponent> {
  import24.DivElement _el_0;
  ViewContainer _appEl_1;
  NgIf _NgIf_1_7;
  ViewContainer _appEl_2;
  NgIf _NgIf_2_7;
  ViewContainer _appEl_3;
  NgIf _NgIf_3_7;
  ViewContainer _appEl_4;
  import50.NgFor _NgFor_4_7;
  var _expr_3;
  _ViewMaterialAutoSuggestInputComponent6(AppView<dynamic> parentView, num parentIndex) : super(import31.ViewType.EMBEDDED, {'\$implicit': null}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialAutoSuggestInputComponent6) {
    componentType = ViewMaterialAutoSuggestInputComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import24.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 85, 6);
    _el_0.className = 'list-group';
    createAttr(_el_0, 'group', '');
    addShimC(_el_0);
    var _anchor_1 = ngAnchor.clone(false);
    _el_0.append(_anchor_1);
    dbgElm(this, _anchor_1, 1, 89, 8);
    _appEl_1 = new ViewContainer(1, 0, this, _anchor_1);
    TemplateRef _TemplateRef_1_6 = new TemplateRef(_appEl_1, viewFactory_MaterialAutoSuggestInputComponent7);
    _NgIf_1_7 = new NgIf(_appEl_1, _TemplateRef_1_6);
    var _anchor_2 = ngAnchor.clone(false);
    _el_0.append(_anchor_2);
    dbgElm(this, _anchor_2, 2, 95, 8);
    _appEl_2 = new ViewContainer(2, 0, this, _anchor_2);
    TemplateRef _TemplateRef_2_6 = new TemplateRef(_appEl_2, viewFactory_MaterialAutoSuggestInputComponent8);
    _NgIf_2_7 = new NgIf(_appEl_2, _TemplateRef_2_6);
    var _anchor_3 = ngAnchor.clone(false);
    _el_0.append(_anchor_3);
    dbgElm(this, _anchor_3, 3, 100, 8);
    _appEl_3 = new ViewContainer(3, 0, this, _anchor_3);
    TemplateRef _TemplateRef_3_6 = new TemplateRef(_appEl_3, viewFactory_MaterialAutoSuggestInputComponent9);
    _NgIf_3_7 = new NgIf(_appEl_3, _TemplateRef_3_6);
    var _anchor_4 = ngAnchor.clone(false);
    _el_0.append(_anchor_4);
    dbgElm(this, _anchor_4, 4, 106, 8);
    _appEl_4 = new ViewContainer(4, 0, this, _anchor_4);
    TemplateRef _TemplateRef_4_6 = new TemplateRef(_appEl_4, viewFactory_MaterialAutoSuggestInputComponent10);
    _NgFor_4_7 = new import50.NgFor(_appEl_4, _TemplateRef_4_6);
    init([_el_0], const [], [_el_0, _anchor_1, _anchor_2, _anchor_3, _anchor_4]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import22.MaterialAutoSuggestInputComponent _ctx = ctx;
    dbg(1, 89, 14);
    _NgIf_1_7.ngIf = (locals['\$implicit'].hasLabel && (_ctx.labelRenderer == null));
    dbg(2, 95, 27);
    _NgIf_2_7.ngIf = (_ctx.labelRenderer != null);
    dbg(3, 101, 12);
    _NgIf_3_7.ngIf = (locals['\$implicit'].isEmpty && locals['\$implicit'].hasEmptyLabel);
    dbg(4, 107, 12);
    final currVal_3 = locals['\$implicit'];
    if (import33.checkBinding(_expr_3, currVal_3)) {
      _NgFor_4_7.ngForOf = currVal_3;
      _expr_3 = currVal_3;
    }
    if (!import33.AppViewUtils.throwOnChanges) {
      _NgFor_4_7.ngDoCheck();
    }
    _appEl_1.detectChangesInNestedViews();
    _appEl_2.detectChangesInNestedViews();
    _appEl_3.detectChangesInNestedViews();
    _appEl_4.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    _appEl_1.destroyNestedViews();
    _appEl_2.destroyNestedViews();
    _appEl_3.destroyNestedViews();
    _appEl_4.destroyNestedViews();
  }
}

AppView<import22.MaterialAutoSuggestInputComponent> viewFactory_MaterialAutoSuggestInputComponent6(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialAutoSuggestInputComponent6(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialAutoSuggestInputComponent7 = [null, null];

class _ViewMaterialAutoSuggestInputComponent7 extends DebugAppView<import22.MaterialAutoSuggestInputComponent> {
  import24.Element _el_0;
  import24.Text _text_1;
  var _expr_0;
  _ViewMaterialAutoSuggestInputComponent7(AppView<dynamic> parentView, num parentIndex) : super(import31.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialAutoSuggestInputComponent7) {
    componentType = ViewMaterialAutoSuggestInputComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import24.document;
    _el_0 = doc.createElement('span');
    dbgElm(this, _el_0, 0, 89, 8);
    _el_0.className = 'list-group-label';
    createAttr(_el_0, 'label', '');
    addShimE(_el_0);
    _text_1 = new import24.Text('');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 92, 54);
    _el_0.addEventListener('mouseenter', eventHandler1(_handle_mouseenter_0_0));
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    dbg(1, 92, 54);
    final currVal_0 = import33.interpolate0(parentView.locals['\$implicit'].uiDisplayName);
    if (import33.checkBinding(_expr_0, currVal_0)) {
      _text_1.text = currVal_0;
      _expr_0 = currVal_0;
    }
  }

  void _handle_mouseenter_0_0($event) {
    dbg(0, 92, 12);
    ctx.activeModel.activate(null);
  }
}

AppView<import22.MaterialAutoSuggestInputComponent> viewFactory_MaterialAutoSuggestInputComponent7(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialAutoSuggestInputComponent7(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialAutoSuggestInputComponent8 = [
  new StaticNodeDebugInfo([import52.DynamicComponent], import52.DynamicComponent, <String, dynamic>{})
];

class _ViewMaterialAutoSuggestInputComponent8 extends DebugAppView<import22.MaterialAutoSuggestInputComponent> {
  import24.Element _el_0;
  import53.ViewDynamicComponent0 _compView_0;
  ViewContainer _appEl_0;
  import52.DynamicComponent _DynamicComponent_0_6;
  var _expr_0;
  var _expr_1;
  _ViewMaterialAutoSuggestInputComponent8(AppView<dynamic> parentView, num parentIndex) : super(import31.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialAutoSuggestInputComponent8) {
    componentType = ViewMaterialAutoSuggestInputComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import53.ViewDynamicComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 95, 8);
    addShimC(_el_0);
    _appEl_0 = new ViewContainer(0, null, this, _el_0);
    _DynamicComponent_0_6 = new import52.DynamicComponent(parentView.parentView.parentView.parentView.parentView.injectorGet(import54.SlowComponentLoader, parentView.parentView.parentView.parentView.viewData.parentIndex), _compView_0.ref, _appEl_0);
    _compView_0.create(_DynamicComponent_0_6, []);
    _el_0.addEventListener('mouseenter', eventHandler1(_handle_mouseenter_0_0));
    init([_appEl_0], const [], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import52.DynamicComponent) && (0 == nodeIndex))) {
      return _DynamicComponent_0_6;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import22.MaterialAutoSuggestInputComponent _ctx = ctx;
    dbg(0, 96, 12);
    final currVal_0 = _ctx.labelRenderer(parentView.locals['\$implicit']);
    if (import33.checkBinding(_expr_0, currVal_0)) {
      _DynamicComponent_0_6.componentType = currVal_0;
      _expr_0 = currVal_0;
    }
    dbg(0, 97, 12);
    final currVal_1 = parentView.locals['\$implicit'];
    if (import33.checkBinding(_expr_1, currVal_1)) {
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
    dbg(0, 95, 8);
    _DynamicComponent_0_6.ngOnDestroy();
  }

  void _handle_mouseenter_0_0($event) {
    dbg(0, 98, 12);
    ctx.activeModel.activate(null);
  }
}

AppView<import22.MaterialAutoSuggestInputComponent> viewFactory_MaterialAutoSuggestInputComponent8(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialAutoSuggestInputComponent8(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialAutoSuggestInputComponent9 = [
  new StaticNodeDebugInfo([import19.KeyboardOnlyFocusIndicatorDirective, import55.MaterialSelectDropdownItemComponent, import56.SelectionItem, import57.HasRenderer], import55.MaterialSelectDropdownItemComponent, <String, dynamic>{})
];

class _ViewMaterialAutoSuggestInputComponent9 extends DebugAppView<import22.MaterialAutoSuggestInputComponent> {
  import24.Element _el_0;
  import58.ViewMaterialSelectDropdownItemComponent0 _compView_0;
  import19.KeyboardOnlyFocusIndicatorDirective _KeyboardOnlyFocusIndicatorDirective_0_4;
  import55.MaterialSelectDropdownItemComponent _MaterialSelectDropdownItemComponent_0_5;
  var _expr_1;
  _ViewMaterialAutoSuggestInputComponent9(AppView<dynamic> parentView, num parentIndex) : super(import31.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialAutoSuggestInputComponent9) {
    componentType = ViewMaterialAutoSuggestInputComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import58.ViewMaterialSelectDropdownItemComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 100, 8);
    createAttr(_el_0, 'keyboardOnlyFocusIndicator', '');
    addShimC(_el_0);
    _KeyboardOnlyFocusIndicatorDirective_0_4 = new import19.KeyboardOnlyFocusIndicatorDirective(_el_0, parentView.parentView.parentView.parentView.parentView.injectorGet(import41.DomService, parentView.parentView.parentView.parentView.viewData.parentIndex));
    _MaterialSelectDropdownItemComponent_0_5 = new import55.MaterialSelectDropdownItemComponent(_el_0, parentView.parentView.parentView.parentView.parentView.injectorGet(import41.DomService, parentView.parentView.parentView.parentView.viewData.parentIndex), (parentView.parentView.parentView.parentView as ViewMaterialAutoSuggestInputComponent0)._MaterialPopupComponent_3_6, parentView.parentView.parentView.parentView.parentView.injectorGet(import59.ActivationHandler, parentView.parentView.parentView.parentView.viewData.parentIndex, null), _compView_0.ref);
    _compView_0.create(_MaterialSelectDropdownItemComponent_0_5, [const []]);
    _el_0.addEventListener('keyup', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_4.resetOutline));
    _el_0.addEventListener('blur', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_4.resetOutline));
    _el_0.addEventListener('mousedown', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_4.hideOutline));
    _el_0.addEventListener('click', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_4.hideOutline));
    init([_el_0], const [], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import19.KeyboardOnlyFocusIndicatorDirective) && (0 == nodeIndex))) {
      return _KeyboardOnlyFocusIndicatorDirective_0_4;
    }
    if ((((identical(token, import55.MaterialSelectDropdownItemComponent) || identical(token, import56.SelectionItem)) || identical(token, import57.HasRenderer)) && (0 == nodeIndex))) {
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
    dbg(0, 104, 12);
    final currVal_1 = parentView.locals['\$implicit'].emptyLabel;
    if (import33.checkBinding(_expr_1, currVal_1)) {
      _MaterialSelectDropdownItemComponent_0_5.value = currVal_1;
      _expr_1 = currVal_1;
    }
    _compView_0.detectHostChanges(firstCheck);
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
    dbg(0, 100, 8);
    _MaterialSelectDropdownItemComponent_0_5.ngOnDestroy();
  }
}

AppView<import22.MaterialAutoSuggestInputComponent> viewFactory_MaterialAutoSuggestInputComponent9(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialAutoSuggestInputComponent9(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialAutoSuggestInputComponent10 = [
  new StaticNodeDebugInfo([import19.KeyboardOnlyFocusIndicatorDirective, import55.MaterialSelectDropdownItemComponent, import56.SelectionItem, import57.HasRenderer], import55.MaterialSelectDropdownItemComponent, <String, dynamic>{})
];

class _ViewMaterialAutoSuggestInputComponent10 extends DebugAppView<import22.MaterialAutoSuggestInputComponent> {
  import24.Element _el_0;
  import58.ViewMaterialSelectDropdownItemComponent0 _compView_0;
  import19.KeyboardOnlyFocusIndicatorDirective _KeyboardOnlyFocusIndicatorDirective_0_4;
  import55.MaterialSelectDropdownItemComponent _MaterialSelectDropdownItemComponent_0_5;
  var _expr_0;
  bool _expr_1;
  bool _expr_2;
  var _expr_3;
  var _expr_4;
  var _expr_5;
  var _expr_6;
  var _expr_7;
  var _expr_8;
  _ViewMaterialAutoSuggestInputComponent10(AppView<dynamic> parentView, num parentIndex) : super(import31.ViewType.EMBEDDED, {'\$implicit': null}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialAutoSuggestInputComponent10) {
    componentType = ViewMaterialAutoSuggestInputComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import58.ViewMaterialSelectDropdownItemComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 106, 8);
    _el_0.className = 'list-item item';
    createAttr(_el_0, 'keyboardOnlyFocusIndicator', '');
    addShimC(_el_0);
    _KeyboardOnlyFocusIndicatorDirective_0_4 = new import19.KeyboardOnlyFocusIndicatorDirective(_el_0, parentView.parentView.parentView.parentView.parentView.injectorGet(import41.DomService, parentView.parentView.parentView.parentView.viewData.parentIndex));
    _MaterialSelectDropdownItemComponent_0_5 = new import55.MaterialSelectDropdownItemComponent(_el_0, parentView.parentView.parentView.parentView.parentView.injectorGet(import41.DomService, parentView.parentView.parentView.parentView.viewData.parentIndex), (parentView.parentView.parentView.parentView as ViewMaterialAutoSuggestInputComponent0)._MaterialPopupComponent_3_6, parentView.parentView.parentView.parentView.parentView.injectorGet(import59.ActivationHandler, parentView.parentView.parentView.parentView.viewData.parentIndex, null), _compView_0.ref);
    _compView_0.create(_MaterialSelectDropdownItemComponent_0_5, [const []]);
    _el_0.addEventListener('mouseenter', eventHandler1(_handle_mouseenter_0_0));
    _el_0.addEventListener('keyup', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_4.resetOutline));
    _el_0.addEventListener('blur', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_4.resetOutline));
    _el_0.addEventListener('mousedown', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_4.hideOutline));
    _el_0.addEventListener('click', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_0_4.hideOutline));
    init([_el_0], const [], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import19.KeyboardOnlyFocusIndicatorDirective) && (0 == nodeIndex))) {
      return _KeyboardOnlyFocusIndicatorDirective_0_4;
    }
    if ((((identical(token, import55.MaterialSelectDropdownItemComponent) || identical(token, import56.SelectionItem)) || identical(token, import57.HasRenderer)) && (0 == nodeIndex))) {
      return _MaterialSelectDropdownItemComponent_0_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import22.MaterialAutoSuggestInputComponent _ctx = ctx;
    bool firstCheck = (this.cdState == 0);
    dbg(0, 113, 12);
    final currVal_1 = _ctx.isOptionDisabled(locals['\$implicit']);
    if (import33.checkBinding(_expr_1, currVal_1)) {
      _MaterialSelectDropdownItemComponent_0_5.disabled = currVal_1;
      _expr_1 = currVal_1;
    }
    dbg(0, 117, 12);
    final currVal_2 = _ctx.activeModel.isActive(locals['\$implicit']);
    if (import33.checkBinding(_expr_2, currVal_2)) {
      _MaterialSelectDropdownItemComponent_0_5.active = currVal_2;
      _expr_2 = currVal_2;
    }
    dbg(0, 111, 12);
    final currVal_3 = _ctx.componentRenderer;
    if (import33.checkBinding(_expr_3, currVal_3)) {
      _MaterialSelectDropdownItemComponent_0_5.componentRenderer = currVal_3;
      _expr_3 = currVal_3;
    }
    dbg(0, 114, 12);
    final currVal_4 = locals['\$implicit'];
    if (import33.checkBinding(_expr_4, currVal_4)) {
      _MaterialSelectDropdownItemComponent_0_5.value = currVal_4;
      _expr_4 = currVal_4;
    }
    dbg(0, 116, 12);
    final currVal_5 = _ctx.hideCheckbox;
    if (import33.checkBinding(_expr_5, currVal_5)) {
      _MaterialSelectDropdownItemComponent_0_5.hideCheckbox = currVal_5;
      _expr_5 = currVal_5;
    }
    dbg(0, 110, 12);
    final currVal_6 = _ctx.itemRenderer;
    if (import33.checkBinding(_expr_6, currVal_6)) {
      _MaterialSelectDropdownItemComponent_0_5.itemRenderer = currVal_6;
      _expr_6 = currVal_6;
    }
    dbg(0, 112, 12);
    final currVal_7 = _ctx.selection;
    if (import33.checkBinding(_expr_7, currVal_7)) {
      _MaterialSelectDropdownItemComponent_0_5.selection = currVal_7;
      _expr_7 = currVal_7;
    }
    dbg(0, 115, 12);
    final currVal_8 = _ctx.closeOnActivate;
    if (import33.checkBinding(_expr_8, currVal_8)) {
      _MaterialSelectDropdownItemComponent_0_5.closeOnActivate = currVal_8;
      _expr_8 = currVal_8;
    }
    final currVal_0 = _ctx.activeModel.id(locals['\$implicit']);
    if (import33.checkBinding(_expr_0, currVal_0)) {
      setAttr(_el_0, 'id', currVal_0?.toString());
      _expr_0 = currVal_0;
    }
    _compView_0.detectHostChanges(firstCheck);
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
    dbg(0, 106, 8);
    _MaterialSelectDropdownItemComponent_0_5.ngOnDestroy();
  }

  void _handle_mouseenter_0_0($event) {
    dbg(0, 119, 12);
    ctx.activeModel.activate(locals['\$implicit']);
  }
}

AppView<import22.MaterialAutoSuggestInputComponent> viewFactory_MaterialAutoSuggestInputComponent10(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialAutoSuggestInputComponent10(parentView, parentIndex);
}

const List<dynamic> styles$MaterialAutoSuggestInputComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialAutoSuggestInputComponentHost0 = [
  new StaticNodeDebugInfo([import22.MaterialAutoSuggestInputComponent, import57.HasRenderer, import56.SelectionContainer, import60.HighlightProvider, import16.DropdownHandle, import57.HasComponentRenderer, import11.Focusable, import39.PopupSizeProvider], import22.MaterialAutoSuggestInputComponent, <String, dynamic>{})
];

class _ViewMaterialAutoSuggestInputComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialAutoSuggestInputComponent0 _compView_0;
  import22.MaterialAutoSuggestInputComponent _MaterialAutoSuggestInputComponent_0_4;
  static RenderComponentType _renderType;
  _ViewMaterialAutoSuggestInputComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import31.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialAutoSuggestInputComponentHost0) {
    _renderType ??= import33.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialAutoSuggestInputComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialAutoSuggestInputComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _MaterialAutoSuggestInputComponent_0_4 = new import22.MaterialAutoSuggestInputComponent(null, this.injectorGet(import61.IdGenerator, viewData.parentIndex, null), this.injectorGet(import39.PopupSizeProvider, viewData.parentIndex, null));
    _compView_0.create(_MaterialAutoSuggestInputComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialAutoSuggestInputComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((((((((identical(token, import22.MaterialAutoSuggestInputComponent) || identical(token, import57.HasRenderer)) || identical(token, import56.SelectionContainer)) || identical(token, import60.HighlightProvider)) || identical(token, import16.DropdownHandle)) || identical(token, import57.HasComponentRenderer)) || identical(token, import11.Focusable)) || identical(token, import39.PopupSizeProvider)) && (0 == nodeIndex))) {
      return _MaterialAutoSuggestInputComponent_0_4;
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
    _MaterialAutoSuggestInputComponent_0_4.ngOnDestroy();
  }
}

AppView viewFactory_MaterialAutoSuggestInputComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialAutoSuggestInputComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialAutoSuggestInputComponentNgFactory = const ComponentFactory('material-auto-suggest-input', viewFactory_MaterialAutoSuggestInputComponentHost0, import22.MaterialAutoSuggestInputComponent, _MaterialAutoSuggestInputComponentMetadata);
final ComponentFactory MaterialAutoSuggestInputComponentNgFactory = _MaterialAutoSuggestInputComponentNgFactory;
const _MaterialAutoSuggestInputComponentMetadata = const [];
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
  _ref27.initReflector();
  _ref28.initReflector();
  _ref29.initReflector();
  _ref30.initReflector();
  _ref31.initReflector();
  _ref32.initReflector();
  _ngRef.registerComponent(
    MaterialAutoSuggestInputComponent,
    MaterialAutoSuggestInputComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialAutoSuggestInputComponent,
    (NgControl p0, IdGenerator p1, PopupSizeProvider p2) => new MaterialAutoSuggestInputComponent(p0, p1, p2),
  );
  _ngRef.registerDependencies(
    MaterialAutoSuggestInputComponent,
    const [
      const [
        NgControl,
        const _ngRef.Optional(),
        const _ngRef.Self(),
      ],
      const [
        IdGenerator,
        const _ngRef.Optional(),
      ],
      const [
        PopupSizeProvider,
        const _ngRef.SkipSelf(),
        const _ngRef.Optional(),
      ],
    ],
  );
}
