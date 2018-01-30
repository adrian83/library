// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_input.dart';
export 'material_input.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/focus/focus.dart';
import 'package:angular_components/glyph/glyph.dart';
import 'package:angular_components/utils/angular/properties/properties.dart';
import 'package:angular_components/utils/angular/reference/reference.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:quiver/strings.dart' show isNotEmpty;
import 'base_material_input.dart';
import 'deferred_validator.dart';
import 'material_input_default_value_accessor.dart';
import 'material_input_multiline.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'base_material_input.template.dart' as _ref0;
import 'base_material_input.template.dart' as _ref1;
import 'deferred_validator.template.dart' as _ref2;
import 'material_input_default_value_accessor.template.dart' as _ref3;
import 'material_input_default_value_accessor.template.dart' as _ref4;
import 'material_input_multiline.template.dart' as _ref5;
import 'material_input_multiline.template.dart' as _ref6;
import 'package:angular/angular.template.dart' as _ref7;
import 'package:angular_components/focus/focus.template.dart' as _ref8;
import 'package:angular_components/glyph/glyph.template.dart' as _ref9;
import 'package:angular_components/utils/angular/properties/properties.template.dart' as _ref10;
import 'package:angular_components/utils/angular/reference/reference.template.dart' as _ref11;
import 'package:angular_forms/angular_forms.template.dart' as _ref12;
import 'package:angular_forms/angular_forms.template.dart' as _ref13;

import 'package:angular_components/material_input/material_input.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/common/directives/ng_if.dart';
import 'package:angular_forms/src/directives/default_value_accessor.dart' as import4;
import '../focus/focus.dart' as import5;
import 'package:angular_forms/src/directives/ng_model.dart' as import6;
import 'package:angular_forms/src/directives/ng_control.dart' as import7;
import 'package:angular/src/debug/debug_app_view.dart';
import 'material_input.dart' as import9;
import 'package:angular/src/core/linker/query_list.dart' as import10;
import 'dart:html' as import11;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular_forms/src/directives/ng_model.template.dart' as import13;
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import16;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import18;
import 'package:angular/angular.dart';
import 'package:angular/src/core/linker/element_ref.dart';
import '../glyph/glyph.dart' as import21;
import '../glyph/glyph.template.dart' as import22;
import 'package:angular/src/common/directives/ng_switch.dart' as import23;
import 'deferred_validator.dart' as import24;
import '../utils/angular/reference/reference.dart' as import25;
import 'base_material_input.dart' as import26;

const List<dynamic> styles$MaterialInputComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialInputComponent0 = [
  new StaticNodeDebugInfo([], null, <String, dynamic>{'popupSourceEl': null}),
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  null,
  null,
  null,
  new StaticNodeDebugInfo([import4.DefaultValueAccessor, import5.FocusableDirective, const OpaqueToken('NgValueAccessor'), import6.NgModel, import7.NgControl], null, <String, dynamic>{'inputEl': null}),
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  null,
  null,
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{})
];

class ViewMaterialInputComponent0 extends DebugAppView<import9.MaterialInputComponent> {
  import10.QueryList _viewQuery_FocusableDirective_0;
  import10.QueryList _viewQuery_inputEl_1;
  import10.QueryList _viewQuery_popupSourceEl_2;
  import11.DivElement _el_0;
  import11.DivElement _el_1;
  ViewContainer _appEl_2;
  NgIf _NgIf_2_7;
  ViewContainer _appEl_3;
  NgIf _NgIf_3_7;
  import11.Element _el_4;
  import11.DivElement _el_5;
  import11.Element _el_6;
  import11.Text _text_7;
  import11.InputElement _el_8;
  import4.DefaultValueAccessor _DefaultValueAccessor_8_4;
  import5.FocusableDirective _FocusableDirective_8_5;
  List<dynamic> _const_OpaqueToken__NgValueAccessor___8_6;
  import13.NgModelNgCd _NgModel_8_7;
  ViewContainer _appEl_9;
  NgIf _NgIf_9_7;
  ViewContainer _appEl_10;
  NgIf _NgIf_10_7;
  import11.DivElement _el_11;
  import11.DivElement _el_12;
  import11.DivElement _el_13;
  import11.DivElement _el_14;
  ViewContainer _appEl_15;
  NgIf _NgIf_15_7;
  bool _expr_2;
  bool _expr_3;
  bool _expr_4;
  bool _expr_5;
  bool _expr_6;
  bool _expr_7;
  bool _expr_8;
  bool _expr_9;
  var _expr_10;
  bool _expr_11;
  bool _expr_12;
  var _expr_13;
  var _expr_14;
  var _expr_15;
  var _expr_16;
  var _expr_17;
  var _expr_18;
  bool _expr_21;
  bool _expr_22;
  bool _expr_23;
  bool _expr_24;
  bool _expr_25;
  bool _expr_26;
  static RenderComponentType _renderType;
  ViewMaterialInputComponent0(AppView<dynamic> parentView, num parentIndex) : super(import16.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckOnce, nodeDebugInfos_MaterialInputComponent0) {
    rootEl = import11.document.createElement('material-input');
    this.rootEl.className = 'themeable';
    createAttr(rootEl, 'tabIndex', '-1');
    _renderType ??= import18.appViewUtils.createRenderType('package:angular_components/material_input/material_input.html', ViewEncapsulation.Emulated, styles$MaterialInputComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import9.MaterialInputComponent _ctx = ctx;
    final import11.HtmlElement parentRenderNode = initViewRoot(rootEl);
    _viewQuery_FocusableDirective_0 = new import10.QueryList();
    _viewQuery_inputEl_1 = new import10.QueryList();
    _viewQuery_popupSourceEl_2 = new import10.QueryList();
    var doc = import11.document;
    _el_0 = createAndAppendDbg(this, doc, 'div', parentRenderNode, 0, 5, 0);
    _el_0.className = 'baseline';
    addShimC(_el_0);
    _el_1 = createAndAppendDbg(this, doc, 'div', _el_0, 1, 6, 2);
    _el_1.className = 'top-section';
    addShimC(_el_1);
    var _anchor_2 = ngAnchor.clone(false);
    _el_1.append(_anchor_2);
    dbgElm(this, _anchor_2, 2, 7, 4);
    _appEl_2 = new ViewContainer(2, 1, this, _anchor_2);
    TemplateRef _TemplateRef_2_6 = new TemplateRef(_appEl_2, viewFactory_MaterialInputComponent1);
    _NgIf_2_7 = new NgIf(_appEl_2, _TemplateRef_2_6);
    var _anchor_3 = ngAnchor.clone(false);
    _el_1.append(_anchor_3);
    dbgElm(this, _anchor_3, 3, 15, 4);
    _appEl_3 = new ViewContainer(3, 1, this, _anchor_3);
    TemplateRef _TemplateRef_3_6 = new TemplateRef(_appEl_3, viewFactory_MaterialInputComponent2);
    _NgIf_3_7 = new NgIf(_appEl_3, _TemplateRef_3_6);
    _el_4 = createAndAppendDbg(this, doc, 'label', _el_1, 4, 21, 4);
    _el_4.className = 'input-container';
    addShimE(_el_4);
    _el_5 = createAndAppendDbg(this, doc, 'div', _el_4, 5, 23, 6);
    createAttr(_el_5, 'aria-hidden', 'true');
    _el_5.className = 'label';
    addShimC(_el_5);
    _el_6 = createAndAppendDbg(this, doc, 'span', _el_5, 6, 27, 8);
    _el_6.className = 'label-text';
    addShimE(_el_6);
    _text_7 = new import11.Text('');
    _el_6.append(_text_7);
    dbgElm(this, _text_7, 7, 33, 64);
    _el_8 = createAndAppendDbg(this, doc, 'input', _el_4, 8, 38, 6);
    _el_8.className = 'input';
    createAttr(_el_8, 'focusableElement', '');
    addShimC(_el_8);
    _DefaultValueAccessor_8_4 = new import4.DefaultValueAccessor(_el_8);
    _FocusableDirective_8_5 = new import5.FocusableDirective(_el_8);
    _const_OpaqueToken__NgValueAccessor___8_6 = [_DefaultValueAccessor_8_4];
    _NgModel_8_7 = new import13.NgModelNgCd(new import6.NgModel(null, _const_OpaqueToken__NgValueAccessor___8_6));
    var _anchor_9 = ngAnchor.clone(false);
    _el_1.append(_anchor_9);
    dbgElm(this, _anchor_9, 9, 54, 4);
    _appEl_9 = new ViewContainer(9, 1, this, _anchor_9);
    TemplateRef _TemplateRef_9_6 = new TemplateRef(_appEl_9, viewFactory_MaterialInputComponent3);
    _NgIf_9_7 = new NgIf(_appEl_9, _TemplateRef_9_6);
    var _anchor_10 = ngAnchor.clone(false);
    _el_1.append(_anchor_10);
    dbgElm(this, _anchor_10, 10, 59, 4);
    _appEl_10 = new ViewContainer(10, 1, this, _anchor_10);
    TemplateRef _TemplateRef_10_6 = new TemplateRef(_appEl_10, viewFactory_MaterialInputComponent4);
    _NgIf_10_7 = new NgIf(_appEl_10, _TemplateRef_10_6);
    dbg(null, 67, 4);
    project(_el_1, 0);
    _el_11 = createAndAppendDbg(this, doc, 'div', _el_0, 11, 70, 2);
    _el_11.className = 'underline';
    addShimC(_el_11);
    _el_12 = createAndAppendDbg(this, doc, 'div', _el_11, 12, 71, 4);
    _el_12.className = 'disabled-underline';
    addShimC(_el_12);
    _el_13 = createAndAppendDbg(this, doc, 'div', _el_11, 13, 73, 4);
    _el_13.className = 'unfocused-underline';
    addShimC(_el_13);
    _el_14 = createAndAppendDbg(this, doc, 'div', _el_11, 14, 75, 4);
    _el_14.className = 'focused-underline';
    addShimC(_el_14);
    var _anchor_15 = ngAnchor.clone(false);
    parentRenderNode.append(_anchor_15);
    dbgElm(this, _anchor_15, 15, 81, 0);
    _appEl_15 = new ViewContainer(15, null, this, _anchor_15);
    TemplateRef _TemplateRef_15_6 = new TemplateRef(_appEl_15, viewFactory_MaterialInputComponent5);
    _NgIf_15_7 = new NgIf(_appEl_15, _TemplateRef_15_6);
    _el_8.addEventListener('blur', eventHandler1(_handle_blur_8_0));
    _el_8.addEventListener('change', eventHandler1(_handle_change_8_1));
    _el_8.addEventListener('focus', eventHandler1(ctx.inputFocusAction));
    _el_8.addEventListener('input', eventHandler1(_handle_input_8_3));
    _viewQuery_FocusableDirective_0.reset([_FocusableDirective_8_5]);
    ctx.focusable = _viewQuery_FocusableDirective_0.first;
    _viewQuery_inputEl_1.reset([new ElementRef(_el_8)]);
    ctx.inputEl = _viewQuery_inputEl_1.first;
    _viewQuery_popupSourceEl_2.reset([new ElementRef(_el_0)]);
    ctx.popupSourceEl = _viewQuery_popupSourceEl_2.first;
    init(const [], const [], [_el_0, _el_1, _anchor_2, _anchor_3, _el_4, _el_5, _el_6, _text_7, _el_8, _anchor_9, _anchor_10, _el_11, _el_12, _el_13, _el_14, _anchor_15]);
    rootEl.addEventListener('focus', eventHandler0(_ctx.focus));
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import4.DefaultValueAccessor) && (8 == nodeIndex))) {
      return _DefaultValueAccessor_8_4;
    }
    if ((identical(token, import5.FocusableDirective) && (8 == nodeIndex))) {
      return _FocusableDirective_8_5;
    }
    if ((identical(token, const OpaqueToken('NgValueAccessor')) && (8 == nodeIndex))) {
      return _const_OpaqueToken__NgValueAccessor___8_6;
    }
    if (((identical(token, import6.NgModel) || identical(token, import7.NgControl)) && (8 == nodeIndex))) {
      return _NgModel_8_7.instance;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import9.MaterialInputComponent _ctx = ctx;
    Map<String, SimpleChange> changes;
    bool firstCheck = (this.cdState == 0);
    dbg(2, 7, 10);
    _NgIf_2_7.ngIf = _ctx.hasLeadingGlyph;
    dbg(3, 15, 10);
    _NgIf_3_7.ngIf = _ctx.hasLeadingText;
    changes = null;
    dbg(8, 48, 13);
    final currVal_18 = _ctx.inputText;
    if (import18.checkBinding(_expr_18, currVal_18)) {
      _NgModel_8_7.instance.model = currVal_18;
      changes ??= <String, SimpleChange>{};
      changes['model'] = new SimpleChange(_expr_18, currVal_18);
      _expr_18 = currVal_18;
    }
    if (!identical(changes, null)) {
      _NgModel_8_7.instance.ngOnChanges(changes);
    }
    if ((firstCheck && !import18.AppViewUtils.throwOnChanges)) {
      _NgModel_8_7.instance.ngOnInit();
    }
    dbg(9, 54, 10);
    _NgIf_9_7.ngIf = _ctx.hasTrailingText;
    dbg(10, 59, 10);
    _NgIf_10_7.ngIf = _ctx.hasTrailingGlyph;
    dbg(15, 81, 28);
    _NgIf_15_7.ngIf = _ctx.displayBottomPanel;
    _appEl_2.detectChangesInNestedViews();
    _appEl_3.detectChangesInNestedViews();
    _appEl_9.detectChangesInNestedViews();
    _appEl_10.detectChangesInNestedViews();
    _appEl_15.detectChangesInNestedViews();
    final currVal_2 = _ctx.floatingLabel;
    if (import18.checkBinding(_expr_2, currVal_2)) {
      updateClass(_el_4, 'floated-label', currVal_2);
      _expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.rightAlign;
    if (import18.checkBinding(_expr_3, currVal_3)) {
      updateClass(_el_5, 'right-align', currVal_3);
      _expr_3 = currVal_3;
    }
    final bool currVal_4 = !_ctx.labelVisible;
    if (import18.checkBinding(_expr_4, currVal_4)) {
      updateClass(_el_6, 'invisible', currVal_4);
      _expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.labelAnimated;
    if (import18.checkBinding(_expr_5, currVal_5)) {
      updateClass(_el_6, 'animated', currVal_5);
      _expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.labelAnimationReset;
    if (import18.checkBinding(_expr_6, currVal_6)) {
      updateClass(_el_6, 'reset', currVal_6);
      _expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.disabled;
    if (import18.checkBinding(_expr_7, currVal_7)) {
      updateClass(_el_6, 'disabled', currVal_7);
      _expr_7 = currVal_7;
    }
    final currVal_8 = (_ctx.focused && _ctx.floatingLabelVisible);
    if (import18.checkBinding(_expr_8, currVal_8)) {
      updateClass(_el_6, 'focused', currVal_8);
      _expr_8 = currVal_8;
    }
    final currVal_9 = (_ctx.invalid && _ctx.floatingLabelVisible);
    if (import18.checkBinding(_expr_9, currVal_9)) {
      updateClass(_el_6, 'invalid', currVal_9);
      _expr_9 = currVal_9;
    }
    dbg(7, 33, 64);
    final currVal_10 = import18.interpolate0(_ctx.label);
    if (import18.checkBinding(_expr_10, currVal_10)) {
      _text_7.text = currVal_10;
      _expr_10 = currVal_10;
    }
    final currVal_11 = _ctx.disabled;
    if (import18.checkBinding(_expr_11, currVal_11)) {
      updateClass(_el_8, 'disabledInput', currVal_11);
      _expr_11 = currVal_11;
    }
    final currVal_12 = _ctx.rightAlign;
    if (import18.checkBinding(_expr_12, currVal_12)) {
      updateClass(_el_8, 'right-align', currVal_12);
      _expr_12 = currVal_12;
    }
    final currVal_13 = _ctx.type;
    if (import18.checkBinding(_expr_13, currVal_13)) {
      setProp(_el_8, 'type', currVal_13);
      _expr_13 = currVal_13;
    }
    final currVal_14 = _ctx.multiple;
    if (import18.checkBinding(_expr_14, currVal_14)) {
      setProp(_el_8, 'multiple', currVal_14);
      _expr_14 = currVal_14;
    }
    final currVal_15 = import18.interpolate0(_ctx.invalid);
    if (import18.checkBinding(_expr_15, currVal_15)) {
      setAttr(_el_8, 'aria-invalid', currVal_15?.toString());
      _expr_15 = currVal_15;
    }
    final currVal_16 = _ctx.ariaLabel;
    if (import18.checkBinding(_expr_16, currVal_16)) {
      setAttr(_el_8, 'aria-label', currVal_16?.toString());
      _expr_16 = currVal_16;
    }
    final currVal_17 = _ctx.disabled;
    if (import18.checkBinding(_expr_17, currVal_17)) {
      setProp(_el_8, 'disabled', currVal_17);
      _expr_17 = currVal_17;
    }
    final bool currVal_21 = !_ctx.disabled;
    if (import18.checkBinding(_expr_21, currVal_21)) {
      updateClass(_el_12, 'invisible', currVal_21);
      _expr_21 = currVal_21;
    }
    final currVal_22 = _ctx.disabled;
    if (import18.checkBinding(_expr_22, currVal_22)) {
      updateClass(_el_13, 'invisible', currVal_22);
      _expr_22 = currVal_22;
    }
    final currVal_23 = _ctx.invalid;
    if (import18.checkBinding(_expr_23, currVal_23)) {
      updateClass(_el_13, 'invalid', currVal_23);
      _expr_23 = currVal_23;
    }
    final bool currVal_24 = !_ctx.focused;
    if (import18.checkBinding(_expr_24, currVal_24)) {
      updateClass(_el_14, 'invisible', currVal_24);
      _expr_24 = currVal_24;
    }
    final currVal_25 = _ctx.invalid;
    if (import18.checkBinding(_expr_25, currVal_25)) {
      updateClass(_el_14, 'invalid', currVal_25);
      _expr_25 = currVal_25;
    }
    final currVal_26 = _ctx.underlineAnimated;
    if (import18.checkBinding(_expr_26, currVal_26)) {
      updateClass(_el_14, 'animated', currVal_26);
      _expr_26 = currVal_26;
    }
  }

  @override
  void destroyInternal() {
    _appEl_2.destroyNestedViews();
    _appEl_3.destroyNestedViews();
    _appEl_9.destroyNestedViews();
    _appEl_10.destroyNestedViews();
    _appEl_15.destroyNestedViews();
  }

  void _handle_blur_8_0($event) {
    dbg(8, 49, 13);
    ctx.inputBlurAction($event, _el_8.validity.valid, _el_8.validationMessage);
    dbg(8, 38, 6);
    _DefaultValueAccessor_8_4.touchHandler();
  }

  void _handle_change_8_1($event) {
    dbg(8, 50, 13);
    ctx.inputChange(_el_8.value, _el_8.validity.valid, _el_8.validationMessage);
    $event.stopPropagation();
  }

  void _handle_input_8_3($event) {
    dbg(8, 52, 13);
    ctx.inputKeypress(_el_8.value, _el_8.validity.valid, _el_8.validationMessage);
    dbg(8, 38, 6);
    _DefaultValueAccessor_8_4.onChange($event.target.value);
  }
}

AppView<import9.MaterialInputComponent> viewFactory_MaterialInputComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialInputComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialInputComponent1 = [
  null,
  new StaticNodeDebugInfo([import21.GlyphComponent], import21.GlyphComponent, <String, dynamic>{})
];

class _ViewMaterialInputComponent1 extends DebugAppView<import9.MaterialInputComponent> {
  import11.Element _el_0;
  import11.Element _el_1;
  import22.ViewGlyphComponent0 _compView_1;
  import21.GlyphComponent _GlyphComponent_1_4;
  bool _expr_0;
  var _expr_1;
  var _expr_2;
  _ViewMaterialInputComponent1(AppView<dynamic> parentView, num parentIndex) : super(import16.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialInputComponent1) {
    componentType = ViewMaterialInputComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import11.document;
    _el_0 = doc.createElement('span');
    dbgElm(this, _el_0, 0, 7, 4);
    _el_0.className = 'leading-text';
    addShimE(_el_0);
    _compView_1 = new import22.ViewGlyphComponent0(this, 1);
    _el_1 = _compView_1.rootEl;
    _el_0.append(_el_1);
    dbgElm(this, _el_1, 1, 10, 6);
    _el_1.className = 'glyph leading';
    addShimC(_el_1);
    _GlyphComponent_1_4 = new import21.GlyphComponent(_el_1);
    _compView_1.create(_GlyphComponent_1_4, []);
    init([_el_0], const [], [_el_0, _el_1]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import21.GlyphComponent) && (1 == nodeIndex))) {
      return _GlyphComponent_1_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import9.MaterialInputComponent _ctx = ctx;
    bool changed = true;
    changed = false;
    dbg(1, 11, 13);
    final currVal_2 = (_ctx.leadingGlyph ?? '');
    if (import18.checkBinding(_expr_2, currVal_2)) {
      _GlyphComponent_1_4.icon = currVal_2;
      changed = true;
      _expr_2 = currVal_2;
    }
    if (changed) {
      _compView_1.markAsCheckOnce();
    }
    final currVal_0 = _ctx.floatingLabel;
    if (import18.checkBinding(_expr_0, currVal_0)) {
      updateClass(_el_0, 'floated-label', currVal_0);
      _expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.disabled;
    if (import18.checkBinding(_expr_1, currVal_1)) {
      setAttr(_el_1, 'disabled', currVal_1?.toString());
      _expr_1 = currVal_1;
    }
    _compView_1.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_1.destroy();
  }
}

AppView<import9.MaterialInputComponent> viewFactory_MaterialInputComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialInputComponent1(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialInputComponent2 = [null, null];

class _ViewMaterialInputComponent2 extends DebugAppView<import9.MaterialInputComponent> {
  import11.Element _el_0;
  import11.Text _text_1;
  bool _expr_0;
  var _expr_1;
  _ViewMaterialInputComponent2(AppView<dynamic> parentView, num parentIndex) : super(import16.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialInputComponent2) {
    componentType = ViewMaterialInputComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import11.document;
    _el_0 = doc.createElement('span');
    dbgElm(this, _el_0, 0, 15, 4);
    _el_0.className = 'leading-text';
    addShimE(_el_0);
    _text_1 = new import11.Text('');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 17, 48);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import9.MaterialInputComponent _ctx = ctx;
    final currVal_0 = _ctx.floatingLabel;
    if (import18.checkBinding(_expr_0, currVal_0)) {
      updateClass(_el_0, 'floated-label', currVal_0);
      _expr_0 = currVal_0;
    }
    dbg(1, 17, 48);
    final currVal_1 = import18.interpolate0(_ctx.leadingText);
    if (import18.checkBinding(_expr_1, currVal_1)) {
      _text_1.text = currVal_1;
      _expr_1 = currVal_1;
    }
  }
}

AppView<import9.MaterialInputComponent> viewFactory_MaterialInputComponent2(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialInputComponent2(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialInputComponent3 = [null, null];

class _ViewMaterialInputComponent3 extends DebugAppView<import9.MaterialInputComponent> {
  import11.Element _el_0;
  import11.Text _text_1;
  bool _expr_0;
  var _expr_1;
  _ViewMaterialInputComponent3(AppView<dynamic> parentView, num parentIndex) : super(import16.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialInputComponent3) {
    componentType = ViewMaterialInputComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import11.document;
    _el_0 = doc.createElement('span');
    dbgElm(this, _el_0, 0, 54, 4);
    _el_0.className = 'trailing-text';
    addShimE(_el_0);
    _text_1 = new import11.Text('');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 56, 48);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import9.MaterialInputComponent _ctx = ctx;
    final currVal_0 = _ctx.floatingLabel;
    if (import18.checkBinding(_expr_0, currVal_0)) {
      updateClass(_el_0, 'floated-label', currVal_0);
      _expr_0 = currVal_0;
    }
    dbg(1, 56, 48);
    final currVal_1 = import18.interpolate0(_ctx.trailingText);
    if (import18.checkBinding(_expr_1, currVal_1)) {
      _text_1.text = currVal_1;
      _expr_1 = currVal_1;
    }
  }
}

AppView<import9.MaterialInputComponent> viewFactory_MaterialInputComponent3(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialInputComponent3(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialInputComponent4 = [
  null,
  new StaticNodeDebugInfo([import21.GlyphComponent], import21.GlyphComponent, <String, dynamic>{})
];

class _ViewMaterialInputComponent4 extends DebugAppView<import9.MaterialInputComponent> {
  import11.Element _el_0;
  import11.Element _el_1;
  import22.ViewGlyphComponent0 _compView_1;
  import21.GlyphComponent _GlyphComponent_1_4;
  bool _expr_0;
  var _expr_1;
  var _expr_2;
  _ViewMaterialInputComponent4(AppView<dynamic> parentView, num parentIndex) : super(import16.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialInputComponent4) {
    componentType = ViewMaterialInputComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import11.document;
    _el_0 = doc.createElement('span');
    dbgElm(this, _el_0, 0, 59, 4);
    _el_0.className = 'trailing-text';
    addShimE(_el_0);
    _compView_1 = new import22.ViewGlyphComponent0(this, 1);
    _el_1 = _compView_1.rootEl;
    _el_0.append(_el_1);
    dbgElm(this, _el_1, 1, 62, 6);
    _el_1.className = 'glyph trailing';
    addShimC(_el_1);
    _GlyphComponent_1_4 = new import21.GlyphComponent(_el_1);
    _compView_1.create(_GlyphComponent_1_4, []);
    init([_el_0], const [], [_el_0, _el_1]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import21.GlyphComponent) && (1 == nodeIndex))) {
      return _GlyphComponent_1_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import9.MaterialInputComponent _ctx = ctx;
    bool changed = true;
    changed = false;
    dbg(1, 63, 13);
    final currVal_2 = (_ctx.trailingGlyph ?? '');
    if (import18.checkBinding(_expr_2, currVal_2)) {
      _GlyphComponent_1_4.icon = currVal_2;
      changed = true;
      _expr_2 = currVal_2;
    }
    if (changed) {
      _compView_1.markAsCheckOnce();
    }
    final currVal_0 = _ctx.floatingLabel;
    if (import18.checkBinding(_expr_0, currVal_0)) {
      updateClass(_el_0, 'floated-label', currVal_0);
      _expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.disabled;
    if (import18.checkBinding(_expr_1, currVal_1)) {
      setAttr(_el_1, 'disabled', currVal_1?.toString());
      _expr_1 = currVal_1;
    }
    _compView_1.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_1.destroy();
  }
}

AppView<import9.MaterialInputComponent> viewFactory_MaterialInputComponent4(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialInputComponent4(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialInputComponent5 = [
  new StaticNodeDebugInfo([import23.NgSwitch], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, import23.NgSwitchWhen], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, import23.NgSwitchWhen], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, import23.NgSwitchWhen], null, <String, dynamic>{}),
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{})
];

class _ViewMaterialInputComponent5 extends DebugAppView<import9.MaterialInputComponent> {
  import11.DivElement _el_0;
  import23.NgSwitch _NgSwitch_0_4;
  ViewContainer _appEl_1;
  import23.NgSwitchWhen _NgSwitchWhen_1_7;
  ViewContainer _appEl_2;
  import23.NgSwitchWhen _NgSwitchWhen_2_7;
  ViewContainer _appEl_3;
  import23.NgSwitchWhen _NgSwitchWhen_3_7;
  ViewContainer _appEl_4;
  NgIf _NgIf_4_7;
  var _expr_0;
  var _expr_1;
  var _expr_2;
  var _expr_3;
  _ViewMaterialInputComponent5(AppView<dynamic> parentView, num parentIndex) : super(import16.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialInputComponent5) {
    componentType = ViewMaterialInputComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import11.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 81, 0);
    _el_0.className = 'bottom-section';
    addShimC(_el_0);
    _NgSwitch_0_4 = new import23.NgSwitch();
    var _anchor_1 = ngAnchor.clone(false);
    _el_0.append(_anchor_1);
    dbgElm(this, _anchor_1, 1, 82, 2);
    _appEl_1 = new ViewContainer(1, 0, this, _anchor_1);
    TemplateRef _TemplateRef_1_6 = new TemplateRef(_appEl_1, viewFactory_MaterialInputComponent6);
    _NgSwitchWhen_1_7 = new import23.NgSwitchWhen(_appEl_1, _TemplateRef_1_6, _NgSwitch_0_4);
    var _anchor_2 = ngAnchor.clone(false);
    _el_0.append(_anchor_2);
    dbgElm(this, _anchor_2, 2, 90, 2);
    _appEl_2 = new ViewContainer(2, 0, this, _anchor_2);
    TemplateRef _TemplateRef_2_6 = new TemplateRef(_appEl_2, viewFactory_MaterialInputComponent7);
    _NgSwitchWhen_2_7 = new import23.NgSwitchWhen(_appEl_2, _TemplateRef_2_6, _NgSwitch_0_4);
    var _anchor_3 = ngAnchor.clone(false);
    _el_0.append(_anchor_3);
    dbgElm(this, _anchor_3, 3, 93, 2);
    _appEl_3 = new ViewContainer(3, 0, this, _anchor_3);
    TemplateRef _TemplateRef_3_6 = new TemplateRef(_appEl_3, viewFactory_MaterialInputComponent8);
    _NgSwitchWhen_3_7 = new import23.NgSwitchWhen(_appEl_3, _TemplateRef_3_6, _NgSwitch_0_4);
    var _anchor_4 = ngAnchor.clone(false);
    _el_0.append(_anchor_4);
    dbgElm(this, _anchor_4, 4, 99, 2);
    _appEl_4 = new ViewContainer(4, 0, this, _anchor_4);
    TemplateRef _TemplateRef_4_6 = new TemplateRef(_appEl_4, viewFactory_MaterialInputComponent9);
    _NgIf_4_7 = new NgIf(_appEl_4, _TemplateRef_4_6);
    init([_el_0], const [], [_el_0, _anchor_1, _anchor_2, _anchor_3, _anchor_4]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import23.NgSwitch) && ((0 <= nodeIndex) && (nodeIndex <= 4)))) {
      return _NgSwitch_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import9.MaterialInputComponent _ctx = ctx;
    dbg(0, 81, 55);
    final currVal_0 = _ctx.bottomPanelState;
    if (import18.checkBinding(_expr_0, currVal_0)) {
      _NgSwitch_0_4.ngSwitch = currVal_0;
      _expr_0 = currVal_0;
    }
    dbg(1, 87, 7);
    final currVal_1 = _ctx.errorState;
    if (import18.checkBinding(_expr_1, currVal_1)) {
      _NgSwitchWhen_1_7.ngSwitchWhen = currVal_1;
      _expr_1 = currVal_1;
    }
    dbg(2, 90, 25);
    final currVal_2 = _ctx.hintState;
    if (import18.checkBinding(_expr_2, currVal_2)) {
      _NgSwitchWhen_2_7.ngSwitchWhen = currVal_2;
      _expr_2 = currVal_2;
    }
    dbg(3, 94, 7);
    final currVal_3 = _ctx.emptyState;
    if (import18.checkBinding(_expr_3, currVal_3)) {
      _NgSwitchWhen_3_7.ngSwitchWhen = currVal_3;
      _expr_3 = currVal_3;
    }
    dbg(4, 99, 7);
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

AppView<import9.MaterialInputComponent> viewFactory_MaterialInputComponent5(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialInputComponent5(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialInputComponent6 = [null, null];

class _ViewMaterialInputComponent6 extends DebugAppView<import9.MaterialInputComponent> {
  import11.DivElement _el_0;
  import11.Text _text_1;
  var _expr_0;
  bool _expr_1;
  bool _expr_2;
  var _expr_3;
  _ViewMaterialInputComponent6(AppView<dynamic> parentView, num parentIndex) : super(import16.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialInputComponent6) {
    componentType = ViewMaterialInputComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import11.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 82, 2);
    _el_0.className = 'error-text';
    createAttr(_el_0, 'role', 'alert');
    addShimC(_el_0);
    _text_1 = new import11.Text('');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 87, 34);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import9.MaterialInputComponent _ctx = ctx;
    final currVal_0 = import18.interpolate0(!_ctx.invalid);
    if (import18.checkBinding(_expr_0, currVal_0)) {
      setAttr(_el_0, 'aria-hidden', currVal_0?.toString());
      _expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.focused;
    if (import18.checkBinding(_expr_1, currVal_1)) {
      updateClass(_el_0, 'focused', currVal_1);
      _expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.invalid;
    if (import18.checkBinding(_expr_2, currVal_2)) {
      updateClass(_el_0, 'invalid', currVal_2);
      _expr_2 = currVal_2;
    }
    dbg(1, 87, 34);
    final currVal_3 = import18.interpolate0(_ctx.errorMessage);
    if (import18.checkBinding(_expr_3, currVal_3)) {
      _text_1.text = currVal_3;
      _expr_3 = currVal_3;
    }
  }
}

AppView<import9.MaterialInputComponent> viewFactory_MaterialInputComponent6(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialInputComponent6(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialInputComponent7 = [null, null];

class _ViewMaterialInputComponent7 extends DebugAppView<import9.MaterialInputComponent> {
  import11.DivElement _el_0;
  import11.Text _text_1;
  var _expr_0;
  _ViewMaterialInputComponent7(AppView<dynamic> parentView, num parentIndex) : super(import16.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialInputComponent7) {
    componentType = ViewMaterialInputComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import11.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 90, 2);
    _el_0.className = 'hint-text';
    addShimC(_el_0);
    _text_1 = new import11.Text('');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 90, 51);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import9.MaterialInputComponent _ctx = ctx;
    dbg(1, 90, 51);
    final currVal_0 = import18.interpolate0(_ctx.hintText);
    if (import18.checkBinding(_expr_0, currVal_0)) {
      _text_1.text = currVal_0;
      _expr_0 = currVal_0;
    }
  }
}

AppView<import9.MaterialInputComponent> viewFactory_MaterialInputComponent7(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialInputComponent7(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialInputComponent8 = [null, null];

class _ViewMaterialInputComponent8 extends DebugAppView<import9.MaterialInputComponent> {
  import11.DivElement _el_0;
  _ViewMaterialInputComponent8(AppView<dynamic> parentView, num parentIndex) : super(import16.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialInputComponent8) {
    componentType = ViewMaterialInputComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import11.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 93, 2);
    _el_0.className = 'spaceholder';
    _el_0.tabIndex = -1;
    addShimC(_el_0);
    import11.Text _text_1 = new import11.Text('\n     \n  ');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 96, 42);
    _el_0.addEventListener('focus', eventHandler1(_handle_focus_0_0));
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  void _handle_focus_0_0($event) {
    dbg(0, 96, 7);
    $event.stopPropagation();
  }
}

AppView<import9.MaterialInputComponent> viewFactory_MaterialInputComponent8(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialInputComponent8(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialInputComponent9 = [null, null];

class _ViewMaterialInputComponent9 extends DebugAppView<import9.MaterialInputComponent> {
  import11.DivElement _el_0;
  import11.Text _text_1;
  bool _expr_0;
  var _expr_1;
  _ViewMaterialInputComponent9(AppView<dynamic> parentView, num parentIndex) : super(import16.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialInputComponent9) {
    componentType = ViewMaterialInputComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import11.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 99, 2);
    createAttr(_el_0, 'aria-hidden', 'true');
    _el_0.className = 'counter';
    addShimC(_el_0);
    _text_1 = new import11.Text('');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 102, 33);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import9.MaterialInputComponent _ctx = ctx;
    final currVal_0 = _ctx.invalid;
    if (import18.checkBinding(_expr_0, currVal_0)) {
      updateClass(_el_0, 'invalid', currVal_0);
      _expr_0 = currVal_0;
    }
    dbg(1, 102, 33);
    final currVal_1 = import18.interpolate0(_ctx.msgCharacterCounter(_ctx.inputTextLength, _ctx.maxCount));
    if (import18.checkBinding(_expr_1, currVal_1)) {
      _text_1.text = currVal_1;
      _expr_1 = currVal_1;
    }
  }
}

AppView<import9.MaterialInputComponent> viewFactory_MaterialInputComponent9(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialInputComponent9(parentView, parentIndex);
}

const List<dynamic> styles$MaterialInputComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialInputComponentHost0 = [
  new StaticNodeDebugInfo([import24.DeferredValidator, import9.MaterialInputComponent, const OpaqueToken('NgValidators'), import25.ReferenceDirective, import5.Focusable, import26.BaseMaterialInput], import9.MaterialInputComponent, <String, dynamic>{})
];

class _ViewMaterialInputComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialInputComponent0 _compView_0;
  import24.DeferredValidator _DeferredValidator_0_4;
  import9.MaterialInputComponent _MaterialInputComponent_0_5;
  List<dynamic> __const_OpaqueToken__NgValidators___0_6;
  static RenderComponentType _renderType;
  _ViewMaterialInputComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import16.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialInputComponentHost0) {
    _renderType ??= import18.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialInputComponentHost);
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
    _compView_0 = new ViewMaterialInputComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _DeferredValidator_0_4 = new import24.DeferredValidator();
    _MaterialInputComponent_0_5 = new import9.MaterialInputComponent(null, null, null, _compView_0.ref, _DeferredValidator_0_4);
    _compView_0.create(_MaterialInputComponent_0_5, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialInputComponent_0_5);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import24.DeferredValidator) && (0 == nodeIndex))) {
      return _DeferredValidator_0_4;
    }
    if (((((identical(token, import9.MaterialInputComponent) || identical(token, import25.ReferenceDirective)) || identical(token, import5.Focusable)) || identical(token, import26.BaseMaterialInput)) && (0 == nodeIndex))) {
      return _MaterialInputComponent_0_5;
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
    if (!import18.AppViewUtils.throwOnChanges) {
      dbg(0, 0, 0);
      if (firstCheck) {
        _MaterialInputComponent_0_5.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
    dbg(0, 0, 0);
    _MaterialInputComponent_0_5.ngOnDestroy();
  }
}

AppView viewFactory_MaterialInputComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialInputComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialInputComponentNgFactory = const ComponentFactory('material-input:not(material-input[multiline])', viewFactory_MaterialInputComponentHost0, import9.MaterialInputComponent, _MaterialInputComponentMetadata);
final ComponentFactory MaterialInputComponentNgFactory = _MaterialInputComponentNgFactory;
const _MaterialInputComponentMetadata = const [];
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
  _ngRef.registerComponent(
    MaterialInputComponent,
    MaterialInputComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialInputComponent,
    (String p0, String p1, NgControl p2, ChangeDetectorRef p3, DeferredValidator p4) => new MaterialInputComponent(p0, p1, p2, p3, p4),
  );
  _ngRef.registerDependencies(
    MaterialInputComponent,
    const [
      const [
        String,
      ],
      const [
        String,
      ],
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
    ],
  );
}
