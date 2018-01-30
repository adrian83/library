// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_input_multiline.dart';
export 'material_input_multiline.dart';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/focus/focus.dart';
import 'package:angular_components/utils/angular/properties/properties.dart';
import 'package:angular_components/utils/angular/reference/reference.dart';
import 'package:angular_components/utils/browser/dom_service/angular_2.dart';
import 'package:angular_forms/angular_forms.dart';
import 'base_material_input.dart';
import 'deferred_validator.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'base_material_input.template.dart' as _ref0;
import 'base_material_input.template.dart' as _ref1;
import 'deferred_validator.template.dart' as _ref2;
import 'package:angular/angular.template.dart' as _ref3;
import 'package:angular_components/focus/focus.template.dart' as _ref4;
import 'package:angular_components/utils/angular/properties/properties.template.dart' as _ref5;
import 'package:angular_components/utils/angular/reference/reference.template.dart' as _ref6;
import 'package:angular_components/utils/browser/dom_service/angular_2.template.dart' as _ref7;
import 'package:angular_forms/angular_forms.template.dart' as _ref8;

import 'package:angular_components/material_input/material_input.scss.css.shim.dart' as import0;
import 'package:angular_components/material_input/material_input_multiline.scss.css.shim.dart' as import1;
import 'package:angular/src/debug/debug_context.dart';
import 'package:angular_forms/src/directives/default_value_accessor.dart' as import3;
import '../focus/focus.dart' as import4;
import 'package:angular_forms/src/directives/ng_model.dart' as import5;
import 'package:angular_forms/src/directives/ng_control.dart' as import6;
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/common/directives/ng_if.dart';
import 'package:angular/src/debug/debug_app_view.dart';
import 'material_input_multiline.dart' as import10;
import 'package:angular/src/core/linker/query_list.dart' as import11;
import 'dart:html' as import12;
import 'package:angular_forms/src/directives/ng_model.template.dart' as import13;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import17;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import19;
import 'package:angular/angular.dart';
import 'package:angular/src/core/linker/element_ref.dart';
import 'package:angular/src/common/directives/ng_switch.dart' as import22;
import 'deferred_validator.dart' as import23;
import '../utils/angular/reference/reference.dart' as import24;
import 'base_material_input.dart' as import25;
import '../utils/browser/dom_service/dom_service.dart' as import26;

const List<dynamic> styles$MaterialMultilineInputComponent = const [import0.styles, import1.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialMultilineInputComponent0 = [
  new StaticNodeDebugInfo([], null, <String, dynamic>{'popupSourceEl': null}),
  null,
  null,
  null,
  null,
  null,
  null,
  null,
  null,
  new StaticNodeDebugInfo([], null, <String, dynamic>{'lineHeightMeasure': null}),
  null,
  new StaticNodeDebugInfo([import3.DefaultValueAccessor, import4.FocusableDirective, const OpaqueToken('NgValueAccessor'), import5.NgModel, import6.NgControl], null, <String, dynamic>{'textareaEl': null}),
  null,
  null,
  null,
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{})
];

class ViewMaterialMultilineInputComponent0 extends DebugAppView<import10.MaterialMultilineInputComponent> {
  import11.QueryList _viewQuery_FocusableDirective_0;
  import11.QueryList _viewQuery_lineHeightMeasure_1;
  import11.QueryList _viewQuery_textareaEl_2;
  import11.QueryList _viewQuery_popupSourceEl_3;
  import12.DivElement _el_0;
  import12.DivElement _el_1;
  import12.DivElement _el_2;
  import12.DivElement _el_3;
  import12.Element _el_4;
  import12.Text _text_5;
  import12.DivElement _el_6;
  import12.DivElement _el_7;
  import12.Text _text_8;
  import12.DivElement _el_9;
  import12.Element _el_10;
  import12.TextAreaElement _el_11;
  import3.DefaultValueAccessor _DefaultValueAccessor_11_4;
  import4.FocusableDirective _FocusableDirective_11_5;
  List<dynamic> _const_OpaqueToken__NgValueAccessor___11_6;
  import13.NgModelNgCd _NgModel_11_7;
  import12.DivElement _el_12;
  import12.DivElement _el_13;
  import12.DivElement _el_14;
  import12.DivElement _el_15;
  ViewContainer _appEl_16;
  NgIf _NgIf_16_7;
  bool _expr_0;
  bool _expr_1;
  bool _expr_2;
  bool _expr_3;
  bool _expr_4;
  bool _expr_5;
  bool _expr_6;
  var _expr_7;
  var _expr_8;
  var _expr_9;
  var _expr_10;
  bool _expr_11;
  var _expr_12;
  var _expr_13;
  var _expr_14;
  var _expr_15;
  bool _expr_16;
  bool _expr_17;
  bool _expr_18;
  bool _expr_19;
  bool _expr_20;
  bool _expr_21;
  static RenderComponentType _renderType;
  ViewMaterialMultilineInputComponent0(AppView<dynamic> parentView, num parentIndex) : super(import17.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckOnce, nodeDebugInfos_MaterialMultilineInputComponent0) {
    rootEl = import12.document.createElement('material-input');
    this.rootEl.className = 'themeable';
    createAttr(rootEl, 'tabIndex', '-1');
    _renderType ??= import19.appViewUtils.createRenderType('package:angular_components/material_input/material_input_multiline.html', ViewEncapsulation.Emulated, styles$MaterialMultilineInputComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import10.MaterialMultilineInputComponent _ctx = ctx;
    final import12.HtmlElement parentRenderNode = initViewRoot(rootEl);
    _viewQuery_FocusableDirective_0 = new import11.QueryList();
    _viewQuery_lineHeightMeasure_1 = new import11.QueryList();
    _viewQuery_textareaEl_2 = new import11.QueryList();
    _viewQuery_popupSourceEl_3 = new import11.QueryList();
    var doc = import12.document;
    _el_0 = createAndAppendDbg(this, doc, 'div', parentRenderNode, 0, 5, 0);
    _el_0.className = 'baseline';
    addShimC(_el_0);
    _el_1 = createAndAppendDbg(this, doc, 'div', _el_0, 1, 6, 2);
    _el_1.className = 'top-section';
    addShimC(_el_1);
    _el_2 = createAndAppendDbg(this, doc, 'div', _el_1, 2, 7, 4);
    _el_2.className = 'input-container';
    addShimC(_el_2);
    _el_3 = createAndAppendDbg(this, doc, 'div', _el_2, 3, 9, 6);
    createAttr(_el_3, 'aria-hidden', 'true');
    _el_3.className = 'label';
    addShimC(_el_3);
    _el_4 = createAndAppendDbg(this, doc, 'span', _el_3, 4, 11, 8);
    _el_4.className = 'label-text';
    addShimE(_el_4);
    _text_5 = new import12.Text('');
    _el_4.append(_text_5);
    dbgElm(this, _text_5, 5, 17, 64);
    _el_6 = createAndAppendDbg(this, doc, 'div', _el_2, 6, 21, 6);
    addShimC(_el_6);
    _el_7 = createAndAppendDbg(this, doc, 'div', _el_6, 7, 24, 8);
    createAttr(_el_7, 'aria-hidden', 'true');
    _el_7.className = 'mirror-text';
    addShimC(_el_7);
    _text_8 = new import12.Text('');
    _el_7.append(_text_8);
    dbgElm(this, _text_8, 8, 27, 51);
    _el_9 = createAndAppendDbg(this, doc, 'div', _el_6, 9, 32, 8);
    createAttr(_el_9, 'aria-hidden', 'true');
    _el_9.className = 'line-height-measure';
    addShimC(_el_9);
    _el_10 = createAndAppendDbg(this, doc, 'br', _el_9, 10, 35, 10);
    addShimE(_el_10);
    _el_11 = createAndAppendDbg(this, doc, 'textarea', _el_6, 11, 38, 8);
    _el_11.className = 'textarea';
    createAttr(_el_11, 'focusableElement', '');
    addShimC(_el_11);
    _DefaultValueAccessor_11_4 = new import3.DefaultValueAccessor(_el_11);
    _FocusableDirective_11_5 = new import4.FocusableDirective(_el_11);
    _const_OpaqueToken__NgValueAccessor___11_6 = [_DefaultValueAccessor_11_4];
    _NgModel_11_7 = new import13.NgModelNgCd(new import5.NgModel(null, _const_OpaqueToken__NgValueAccessor___11_6));
    dbg(null, 52, 4);
    project(_el_1, 0);
    _el_12 = createAndAppendDbg(this, doc, 'div', _el_0, 12, 55, 2);
    _el_12.className = 'underline';
    addShimC(_el_12);
    _el_13 = createAndAppendDbg(this, doc, 'div', _el_12, 13, 56, 4);
    _el_13.className = 'disabled-underline';
    addShimC(_el_13);
    _el_14 = createAndAppendDbg(this, doc, 'div', _el_12, 14, 58, 4);
    _el_14.className = 'unfocused-underline';
    addShimC(_el_14);
    _el_15 = createAndAppendDbg(this, doc, 'div', _el_12, 15, 60, 4);
    _el_15.className = 'focused-underline';
    addShimC(_el_15);
    var _anchor_16 = ngAnchor.clone(false);
    parentRenderNode.append(_anchor_16);
    dbgElm(this, _anchor_16, 16, 66, 0);
    _appEl_16 = new ViewContainer(16, null, this, _anchor_16);
    TemplateRef _TemplateRef_16_6 = new TemplateRef(_appEl_16, viewFactory_MaterialMultilineInputComponent1);
    _NgIf_16_7 = new NgIf(_appEl_16, _TemplateRef_16_6);
    _el_11.addEventListener('blur', eventHandler1(_handle_blur_11_0));
    _el_11.addEventListener('change', eventHandler1(_handle_change_11_1));
    _el_11.addEventListener('focus', eventHandler1(ctx.inputFocusAction));
    _el_11.addEventListener('input', eventHandler1(_handle_input_11_3));
    _viewQuery_FocusableDirective_0.reset([_FocusableDirective_11_5]);
    ctx.focusable = _viewQuery_FocusableDirective_0.first;
    _viewQuery_lineHeightMeasure_1.reset([new ElementRef(_el_9)]);
    ctx.lineHeightMeasure = _viewQuery_lineHeightMeasure_1.first;
    _viewQuery_textareaEl_2.reset([new ElementRef(_el_11)]);
    ctx.textareaEl = _viewQuery_textareaEl_2.first;
    _viewQuery_popupSourceEl_3.reset([new ElementRef(_el_0)]);
    ctx.popupSourceEl = _viewQuery_popupSourceEl_3.first;
    init(const [], const [], [_el_0, _el_1, _el_2, _el_3, _el_4, _text_5, _el_6, _el_7, _text_8, _el_9, _el_10, _el_11, _el_12, _el_13, _el_14, _el_15, _anchor_16]);
    rootEl.addEventListener('focus', eventHandler0(_ctx.focus));
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import3.DefaultValueAccessor) && (11 == nodeIndex))) {
      return _DefaultValueAccessor_11_4;
    }
    if ((identical(token, import4.FocusableDirective) && (11 == nodeIndex))) {
      return _FocusableDirective_11_5;
    }
    if ((identical(token, const OpaqueToken('NgValueAccessor')) && (11 == nodeIndex))) {
      return _const_OpaqueToken__NgValueAccessor___11_6;
    }
    if (((identical(token, import5.NgModel) || identical(token, import6.NgControl)) && (11 == nodeIndex))) {
      return _NgModel_11_7.instance;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import10.MaterialMultilineInputComponent _ctx = ctx;
    Map<String, SimpleChange> changes;
    bool firstCheck = (this.cdState == 0);
    changes = null;
    dbg(11, 45, 18);
    final currVal_15 = _ctx.inputText;
    if (import19.checkBinding(_expr_15, currVal_15)) {
      _NgModel_11_7.instance.model = currVal_15;
      changes ??= <String, SimpleChange>{};
      changes['model'] = new SimpleChange(_expr_15, currVal_15);
      _expr_15 = currVal_15;
    }
    if (!identical(changes, null)) {
      _NgModel_11_7.instance.ngOnChanges(changes);
    }
    if ((firstCheck && !import19.AppViewUtils.throwOnChanges)) {
      _NgModel_11_7.instance.ngOnInit();
    }
    dbg(16, 66, 28);
    _NgIf_16_7.ngIf = _ctx.displayBottomPanel;
    _appEl_16.detectChangesInNestedViews();
    final currVal_0 = _ctx.floatingLabel;
    if (import19.checkBinding(_expr_0, currVal_0)) {
      updateClass(_el_2, 'floated-label', currVal_0);
      _expr_0 = currVal_0;
    }
    final currVal_1 = (_ctx.rows > 1);
    if (import19.checkBinding(_expr_1, currVal_1)) {
      updateClass(_el_4, 'multiline', currVal_1);
      _expr_1 = currVal_1;
    }
    final bool currVal_2 = !_ctx.labelVisible;
    if (import19.checkBinding(_expr_2, currVal_2)) {
      updateClass(_el_4, 'invisible', currVal_2);
      _expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.labelAnimated;
    if (import19.checkBinding(_expr_3, currVal_3)) {
      updateClass(_el_4, 'animated', currVal_3);
      _expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.labelAnimationReset;
    if (import19.checkBinding(_expr_4, currVal_4)) {
      updateClass(_el_4, 'reset', currVal_4);
      _expr_4 = currVal_4;
    }
    final currVal_5 = (_ctx.focused && _ctx.floatingLabelVisible);
    if (import19.checkBinding(_expr_5, currVal_5)) {
      updateClass(_el_4, 'focused', currVal_5);
      _expr_5 = currVal_5;
    }
    final currVal_6 = (_ctx.invalid && _ctx.floatingLabelVisible);
    if (import19.checkBinding(_expr_6, currVal_6)) {
      updateClass(_el_4, 'invalid', currVal_6);
      _expr_6 = currVal_6;
    }
    dbg(5, 17, 64);
    final currVal_7 = import19.interpolate0(_ctx.label);
    if (import19.checkBinding(_expr_7, currVal_7)) {
      _text_5.text = currVal_7;
      _expr_7 = currVal_7;
    }
    final currVal_8 = _ctx.minInputHeight;
    if (import19.checkBinding(_expr_8, currVal_8)) {
      _el_7.style.setProperty('min-height', ((currVal_8?.toString() == null) ? null : (currVal_8?.toString() + 'px')));
      _expr_8 = currVal_8;
    }
    final currVal_9 = _ctx.maxInputHeight;
    if (import19.checkBinding(_expr_9, currVal_9)) {
      _el_7.style.setProperty('max-height', ((currVal_9?.toString() == null) ? null : (currVal_9?.toString() + 'px')));
      _expr_9 = currVal_9;
    }
    dbg(8, 27, 51);
    final currVal_10 = import19.interpolate0(_ctx.mirrorText);
    if (import19.checkBinding(_expr_10, currVal_10)) {
      _text_8.text = currVal_10;
      _expr_10 = currVal_10;
    }
    final currVal_11 = _ctx.disabled;
    if (import19.checkBinding(_expr_11, currVal_11)) {
      updateClass(_el_11, 'disabledInput', currVal_11);
      _expr_11 = currVal_11;
    }
    final currVal_12 = import19.interpolate0(_ctx.invalid);
    if (import19.checkBinding(_expr_12, currVal_12)) {
      setAttr(_el_11, 'aria-invalid', currVal_12?.toString());
      _expr_12 = currVal_12;
    }
    final currVal_13 = _ctx.ariaLabel;
    if (import19.checkBinding(_expr_13, currVal_13)) {
      setAttr(_el_11, 'aria-label', currVal_13?.toString());
      _expr_13 = currVal_13;
    }
    final currVal_14 = _ctx.disabled;
    if (import19.checkBinding(_expr_14, currVal_14)) {
      setProp(_el_11, 'disabled', currVal_14);
      _expr_14 = currVal_14;
    }
    final bool currVal_16 = !_ctx.disabled;
    if (import19.checkBinding(_expr_16, currVal_16)) {
      updateClass(_el_13, 'invisible', currVal_16);
      _expr_16 = currVal_16;
    }
    final currVal_17 = _ctx.disabled;
    if (import19.checkBinding(_expr_17, currVal_17)) {
      updateClass(_el_14, 'invisible', currVal_17);
      _expr_17 = currVal_17;
    }
    final currVal_18 = _ctx.invalid;
    if (import19.checkBinding(_expr_18, currVal_18)) {
      updateClass(_el_14, 'invalid', currVal_18);
      _expr_18 = currVal_18;
    }
    final bool currVal_19 = !_ctx.focused;
    if (import19.checkBinding(_expr_19, currVal_19)) {
      updateClass(_el_15, 'invisible', currVal_19);
      _expr_19 = currVal_19;
    }
    final currVal_20 = _ctx.invalid;
    if (import19.checkBinding(_expr_20, currVal_20)) {
      updateClass(_el_15, 'invalid', currVal_20);
      _expr_20 = currVal_20;
    }
    final currVal_21 = _ctx.underlineAnimated;
    if (import19.checkBinding(_expr_21, currVal_21)) {
      updateClass(_el_15, 'animated', currVal_21);
      _expr_21 = currVal_21;
    }
  }

  @override
  void destroyInternal() {
    _appEl_16.destroyNestedViews();
  }

  void _handle_blur_11_0($event) {
    dbg(11, 46, 18);
    ctx.inputBlurAction($event, _el_11.validity.valid, _el_11.validationMessage);
    dbg(11, 38, 8);
    _DefaultValueAccessor_11_4.touchHandler();
  }

  void _handle_change_11_1($event) {
    dbg(11, 47, 18);
    ctx.inputChange(_el_11.value, _el_11.validity.valid, _el_11.validationMessage);
    $event.stopPropagation();
  }

  void _handle_input_11_3($event) {
    dbg(11, 49, 18);
    ctx.inputKeypress(_el_11.value, _el_11.validity.valid, _el_11.validationMessage);
    dbg(11, 38, 8);
    _DefaultValueAccessor_11_4.onChange($event.target.value);
  }
}

AppView<import10.MaterialMultilineInputComponent> viewFactory_MaterialMultilineInputComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialMultilineInputComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialMultilineInputComponent1 = [
  new StaticNodeDebugInfo([import22.NgSwitch], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, import22.NgSwitchWhen], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, import22.NgSwitchWhen], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, import22.NgSwitchWhen], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{})
];

class _ViewMaterialMultilineInputComponent1 extends DebugAppView<import10.MaterialMultilineInputComponent> {
  import12.DivElement _el_0;
  import22.NgSwitch _NgSwitch_0_4;
  ViewContainer _appEl_1;
  import22.NgSwitchWhen _NgSwitchWhen_1_7;
  ViewContainer _appEl_2;
  import22.NgSwitchWhen _NgSwitchWhen_2_7;
  ViewContainer _appEl_3;
  import22.NgSwitchWhen _NgSwitchWhen_3_7;
  ViewContainer _appEl_4;
  NgIf _NgIf_4_7;
  var _expr_0;
  var _expr_1;
  var _expr_2;
  var _expr_3;
  _ViewMaterialMultilineInputComponent1(AppView<dynamic> parentView, num parentIndex) : super(import17.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialMultilineInputComponent1) {
    componentType = ViewMaterialMultilineInputComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import12.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 66, 0);
    _el_0.className = 'bottom-section';
    addShimC(_el_0);
    _NgSwitch_0_4 = new import22.NgSwitch();
    var _anchor_1 = ngAnchor.clone(false);
    _el_0.append(_anchor_1);
    dbgElm(this, _anchor_1, 1, 67, 2);
    _appEl_1 = new ViewContainer(1, 0, this, _anchor_1);
    TemplateRef _TemplateRef_1_6 = new TemplateRef(_appEl_1, viewFactory_MaterialMultilineInputComponent2);
    _NgSwitchWhen_1_7 = new import22.NgSwitchWhen(_appEl_1, _TemplateRef_1_6, _NgSwitch_0_4);
    var _anchor_2 = ngAnchor.clone(false);
    _el_0.append(_anchor_2);
    dbgElm(this, _anchor_2, 2, 75, 2);
    _appEl_2 = new ViewContainer(2, 0, this, _anchor_2);
    TemplateRef _TemplateRef_2_6 = new TemplateRef(_appEl_2, viewFactory_MaterialMultilineInputComponent3);
    _NgSwitchWhen_2_7 = new import22.NgSwitchWhen(_appEl_2, _TemplateRef_2_6, _NgSwitch_0_4);
    var _anchor_3 = ngAnchor.clone(false);
    _el_0.append(_anchor_3);
    dbgElm(this, _anchor_3, 3, 78, 2);
    _appEl_3 = new ViewContainer(3, 0, this, _anchor_3);
    TemplateRef _TemplateRef_3_6 = new TemplateRef(_appEl_3, viewFactory_MaterialMultilineInputComponent4);
    _NgSwitchWhen_3_7 = new import22.NgSwitchWhen(_appEl_3, _TemplateRef_3_6, _NgSwitch_0_4);
    var _anchor_4 = ngAnchor.clone(false);
    _el_0.append(_anchor_4);
    dbgElm(this, _anchor_4, 4, 84, 2);
    _appEl_4 = new ViewContainer(4, 0, this, _anchor_4);
    TemplateRef _TemplateRef_4_6 = new TemplateRef(_appEl_4, viewFactory_MaterialMultilineInputComponent5);
    _NgIf_4_7 = new NgIf(_appEl_4, _TemplateRef_4_6);
    init([_el_0], const [], [_el_0, _anchor_1, _anchor_2, _anchor_3, _anchor_4]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import22.NgSwitch) && ((0 <= nodeIndex) && (nodeIndex <= 4)))) {
      return _NgSwitch_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import10.MaterialMultilineInputComponent _ctx = ctx;
    dbg(0, 66, 55);
    final currVal_0 = _ctx.bottomPanelState;
    if (import19.checkBinding(_expr_0, currVal_0)) {
      _NgSwitch_0_4.ngSwitch = currVal_0;
      _expr_0 = currVal_0;
    }
    dbg(1, 72, 7);
    final currVal_1 = _ctx.errorState;
    if (import19.checkBinding(_expr_1, currVal_1)) {
      _NgSwitchWhen_1_7.ngSwitchWhen = currVal_1;
      _expr_1 = currVal_1;
    }
    dbg(2, 75, 25);
    final currVal_2 = _ctx.hintState;
    if (import19.checkBinding(_expr_2, currVal_2)) {
      _NgSwitchWhen_2_7.ngSwitchWhen = currVal_2;
      _expr_2 = currVal_2;
    }
    dbg(3, 79, 7);
    final currVal_3 = _ctx.emptyState;
    if (import19.checkBinding(_expr_3, currVal_3)) {
      _NgSwitchWhen_3_7.ngSwitchWhen = currVal_3;
      _expr_3 = currVal_3;
    }
    dbg(4, 84, 7);
    _NgIf_4_7.ngIf = (_ctx.maxCount != null);
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

AppView<import10.MaterialMultilineInputComponent> viewFactory_MaterialMultilineInputComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialMultilineInputComponent1(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialMultilineInputComponent2 = [null, null];

class _ViewMaterialMultilineInputComponent2 extends DebugAppView<import10.MaterialMultilineInputComponent> {
  import12.DivElement _el_0;
  import12.Text _text_1;
  var _expr_0;
  bool _expr_1;
  bool _expr_2;
  var _expr_3;
  _ViewMaterialMultilineInputComponent2(AppView<dynamic> parentView, num parentIndex) : super(import17.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialMultilineInputComponent2) {
    componentType = ViewMaterialMultilineInputComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import12.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 67, 2);
    _el_0.className = 'error-text';
    createAttr(_el_0, 'role', 'alert');
    addShimC(_el_0);
    _text_1 = new import12.Text('');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 72, 34);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import10.MaterialMultilineInputComponent _ctx = ctx;
    final currVal_0 = import19.interpolate0(!_ctx.invalid);
    if (import19.checkBinding(_expr_0, currVal_0)) {
      setAttr(_el_0, 'aria-hidden', currVal_0?.toString());
      _expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.focused;
    if (import19.checkBinding(_expr_1, currVal_1)) {
      updateClass(_el_0, 'focused', currVal_1);
      _expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.invalid;
    if (import19.checkBinding(_expr_2, currVal_2)) {
      updateClass(_el_0, 'invalid', currVal_2);
      _expr_2 = currVal_2;
    }
    dbg(1, 72, 34);
    final currVal_3 = import19.interpolate0(_ctx.errorMessage);
    if (import19.checkBinding(_expr_3, currVal_3)) {
      _text_1.text = currVal_3;
      _expr_3 = currVal_3;
    }
  }
}

AppView<import10.MaterialMultilineInputComponent> viewFactory_MaterialMultilineInputComponent2(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialMultilineInputComponent2(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialMultilineInputComponent3 = [null, null];

class _ViewMaterialMultilineInputComponent3 extends DebugAppView<import10.MaterialMultilineInputComponent> {
  import12.DivElement _el_0;
  import12.Text _text_1;
  var _expr_0;
  _ViewMaterialMultilineInputComponent3(AppView<dynamic> parentView, num parentIndex) : super(import17.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialMultilineInputComponent3) {
    componentType = ViewMaterialMultilineInputComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import12.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 75, 2);
    _el_0.className = 'hint-text';
    addShimC(_el_0);
    _text_1 = new import12.Text('');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 75, 51);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import10.MaterialMultilineInputComponent _ctx = ctx;
    dbg(1, 75, 51);
    final currVal_0 = import19.interpolate0(_ctx.hintText);
    if (import19.checkBinding(_expr_0, currVal_0)) {
      _text_1.text = currVal_0;
      _expr_0 = currVal_0;
    }
  }
}

AppView<import10.MaterialMultilineInputComponent> viewFactory_MaterialMultilineInputComponent3(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialMultilineInputComponent3(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialMultilineInputComponent4 = [null, null];

class _ViewMaterialMultilineInputComponent4 extends DebugAppView<import10.MaterialMultilineInputComponent> {
  import12.DivElement _el_0;
  _ViewMaterialMultilineInputComponent4(AppView<dynamic> parentView, num parentIndex) : super(import17.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialMultilineInputComponent4) {
    componentType = ViewMaterialMultilineInputComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import12.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 78, 2);
    _el_0.className = 'spaceholder';
    _el_0.tabIndex = -1;
    addShimC(_el_0);
    import12.Text _text_1 = new import12.Text('\n     \n  ');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 81, 42);
    _el_0.addEventListener('focus', eventHandler1(_handle_focus_0_0));
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  void _handle_focus_0_0($event) {
    dbg(0, 81, 7);
    $event.stopPropagation();
  }
}

AppView<import10.MaterialMultilineInputComponent> viewFactory_MaterialMultilineInputComponent4(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialMultilineInputComponent4(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialMultilineInputComponent5 = [null, null];

class _ViewMaterialMultilineInputComponent5 extends DebugAppView<import10.MaterialMultilineInputComponent> {
  import12.DivElement _el_0;
  import12.Text _text_1;
  bool _expr_0;
  var _expr_1;
  _ViewMaterialMultilineInputComponent5(AppView<dynamic> parentView, num parentIndex) : super(import17.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialMultilineInputComponent5) {
    componentType = ViewMaterialMultilineInputComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import12.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 84, 2);
    createAttr(_el_0, 'aria-hidden', 'true');
    _el_0.className = 'counter';
    addShimC(_el_0);
    _text_1 = new import12.Text('');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 87, 33);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import10.MaterialMultilineInputComponent _ctx = ctx;
    final currVal_0 = _ctx.invalid;
    if (import19.checkBinding(_expr_0, currVal_0)) {
      updateClass(_el_0, 'invalid', currVal_0);
      _expr_0 = currVal_0;
    }
    dbg(1, 87, 33);
    final currVal_1 = import19.interpolate0(_ctx.msgCharacterCounter(_ctx.inputTextLength, _ctx.maxCount));
    if (import19.checkBinding(_expr_1, currVal_1)) {
      _text_1.text = currVal_1;
      _expr_1 = currVal_1;
    }
  }
}

AppView<import10.MaterialMultilineInputComponent> viewFactory_MaterialMultilineInputComponent5(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialMultilineInputComponent5(parentView, parentIndex);
}

const List<dynamic> styles$MaterialMultilineInputComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialMultilineInputComponentHost0 = [
  new StaticNodeDebugInfo([import23.DeferredValidator, import10.MaterialMultilineInputComponent, const OpaqueToken('NgValidators'), import24.ReferenceDirective, import4.Focusable, import25.BaseMaterialInput], import10.MaterialMultilineInputComponent, <String, dynamic>{})
];

class _ViewMaterialMultilineInputComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialMultilineInputComponent0 _compView_0;
  import23.DeferredValidator _DeferredValidator_0_4;
  import10.MaterialMultilineInputComponent _MaterialMultilineInputComponent_0_5;
  List<dynamic> __const_OpaqueToken__NgValidators___0_6;
  static RenderComponentType _renderType;
  _ViewMaterialMultilineInputComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import17.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialMultilineInputComponentHost0) {
    _renderType ??= import19.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialMultilineInputComponentHost);
    setupComponentType(_renderType);
  }
  List<dynamic> get _const_OpaqueToken__NgValidators___0_6 {
    dbg(0, 0, 0);
    if ((this.__const_OpaqueToken__NgValidators___0_6 == null)) {
      (__const_OpaqueToken__NgValidators___0_6 = [this._DeferredValidator_0_4]);
    }
    return this.__const_OpaqueToken__NgValidators___0_6;
  }

  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialMultilineInputComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    createAttr(rootEl, 'multiline', '');
    _DeferredValidator_0_4 = new import23.DeferredValidator();
    _MaterialMultilineInputComponent_0_5 = new import10.MaterialMultilineInputComponent(null, _compView_0.ref, _DeferredValidator_0_4, this.injectorGet(import26.DomService, viewData.parentIndex));
    _compView_0.create(_MaterialMultilineInputComponent_0_5, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialMultilineInputComponent_0_5);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import23.DeferredValidator) && (0 == nodeIndex))) {
      return _DeferredValidator_0_4;
    }
    if (((((identical(token, import10.MaterialMultilineInputComponent) || identical(token, import24.ReferenceDirective)) || identical(token, import4.Focusable)) || identical(token, import25.BaseMaterialInput)) && (0 == nodeIndex))) {
      return _MaterialMultilineInputComponent_0_5;
    }
    if ((identical(token, const OpaqueToken('NgValidators')) && (0 == nodeIndex))) {
      return _const_OpaqueToken__NgValidators___0_6;
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
    _compView_0.detectChanges();
    if (!import19.AppViewUtils.throwOnChanges) {
      dbg(0, 0, 0);
      if (firstCheck) {
        _MaterialMultilineInputComponent_0_5.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
    dbg(0, 0, 0);
    _MaterialMultilineInputComponent_0_5.ngOnDestroy();
  }
}

AppView viewFactory_MaterialMultilineInputComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialMultilineInputComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialMultilineInputComponentNgFactory = const ComponentFactory('material-input[multiline]', viewFactory_MaterialMultilineInputComponentHost0, import10.MaterialMultilineInputComponent, _MaterialMultilineInputComponentMetadata);
final ComponentFactory MaterialMultilineInputComponentNgFactory = _MaterialMultilineInputComponentNgFactory;
const _MaterialMultilineInputComponentMetadata = const [];
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
    MaterialMultilineInputComponent,
    MaterialMultilineInputComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialMultilineInputComponent,
    (NgControl p0, ChangeDetectorRef p1, DeferredValidator p2, DomService p3) => new MaterialMultilineInputComponent(p0, p1, p2, p3),
  );
  _ngRef.registerDependencies(
    MaterialMultilineInputComponent,
    const [
      const [
        NgControl,
        const _ngRef.Optional(),
        const _ngRef.Self(),
      ],
      const [
        ChangeDetectorRef,
      ],
      const [
        DeferredValidator,
      ],
      const [
        DomService,
      ],
    ],
  );
}
