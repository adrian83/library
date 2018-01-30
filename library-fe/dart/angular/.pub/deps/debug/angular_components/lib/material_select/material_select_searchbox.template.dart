// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_select_searchbox.dart';
export 'material_select_searchbox.dart';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/focus/focus.dart';
import 'package:angular_components/material_input/material_input.dart';
import 'package:angular_components/mixins/focusable_mixin.dart';
import 'package:angular_components/model/selection/select.dart';
import 'package:angular_components/utils/async/async.dart';
import 'package:angular_components/utils/browser/events/events.dart';
import 'package:angular_forms/angular_forms.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/focus/focus.template.dart' as _ref1;
import 'package:angular_components/material_input/material_input.template.dart' as _ref2;
import 'package:angular_components/mixins/focusable_mixin.template.dart' as _ref3;
import 'package:angular_components/model/selection/select.template.dart' as _ref4;
import 'package:angular_components/utils/async/async.template.dart' as _ref5;
import 'package:angular_components/utils/browser/events/events.template.dart' as _ref6;
import 'package:angular_forms/angular_forms.template.dart' as _ref7;

import 'package:angular_components/material_select/material_select_searchbox.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import '../material_input/deferred_validator.dart' as import2;
import 'package:angular_forms/src/directives/ng_model.dart' as import3;
import 'package:angular_forms/src/directives/ng_control.dart' as import4;
import '../material_input/material_input.dart' as import5;
import '../material_input/base_material_input.dart' as import6;
import '../material_input/material_input_default_value_accessor.dart' as import7;
import '../utils/angular/reference/reference.dart' as import8;
import '../focus/focus.dart' as import9;
import 'package:angular/src/debug/debug_app_view.dart';
import 'material_select_searchbox.dart' as import11;
import 'package:angular/src/core/linker/query_list.dart' as import12;
import 'dart:html' as import13;
import '../material_input/material_input.template.dart' as import14;
import 'package:angular_forms/src/directives/ng_model.template.dart' as import15;
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import18;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import20;
import 'package:angular/angular.dart';

const List<dynamic> styles$MaterialSelectSearchboxComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialSelectSearchboxComponent0 = [
  new StaticNodeDebugInfo([import2.DeferredValidator, const OpaqueToken('NgValidators'), import3.NgModel, import4.NgControl, import5.MaterialInputComponent, import6.BaseMaterialInput, import7.MaterialInputDefaultValueAccessor, import8.ReferenceDirective, import9.Focusable], import5.MaterialInputComponent, <String, dynamic>{})
];

class ViewMaterialSelectSearchboxComponent0 extends DebugAppView<import11.MaterialSelectSearchboxComponent> {
  import12.QueryList _viewQuery_MaterialInputComponent_0;
  import13.Element _el_0;
  import14.ViewMaterialInputComponent0 _compView_0;
  import2.DeferredValidator _DeferredValidator_0_4;
  List<dynamic> _const_OpaqueToken__NgValidators___0_5;
  import15.NgModelNgCd _NgModel_0_6;
  import3.NgModel _NgControl_0_7;
  import5.MaterialInputComponent _MaterialInputComponent_0_8;
  dynamic _BaseMaterialInput_0_9;
  import7.MaterialInputDefaultValueAccessor _MaterialInputDefaultValueAccessor_0_10;
  var _expr_0;
  String _expr_1;
  static RenderComponentType _renderType;
  ViewMaterialSelectSearchboxComponent0(AppView<dynamic> parentView, num parentIndex) : super(import18.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialSelectSearchboxComponent0) {
    rootEl = import13.document.createElement('material-select-searchbox');
    _renderType ??= import20.appViewUtils.createRenderType('package:angular_components/material_select/material_select_searchbox.html', ViewEncapsulation.Emulated, styles$MaterialSelectSearchboxComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import13.HtmlElement parentRenderNode = initViewRoot(rootEl);
    _viewQuery_MaterialInputComponent_0 = new import12.QueryList();
    _compView_0 = new import14.ViewMaterialInputComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    parentRenderNode.append(_el_0);
    dbgElm(this, _el_0, 0, 5, 0);
    _el_0.className = 'searchbox-input themeable';
    createAttr(_el_0, 'leadingGlyph', 'search');
    addShimC(_el_0);
    _DeferredValidator_0_4 = new import2.DeferredValidator();
    _const_OpaqueToken__NgValidators___0_5 = [_DeferredValidator_0_4];
    _NgModel_0_6 = new import15.NgModelNgCd(new import3.NgModel(_const_OpaqueToken__NgValidators___0_5, null));
    _NgControl_0_7 = _NgModel_0_6.instance;
    _MaterialInputComponent_0_8 = new import5.MaterialInputComponent(null, null, _NgControl_0_7, _compView_0.ref, _DeferredValidator_0_4);
    _BaseMaterialInput_0_9 = _MaterialInputComponent_0_8;
    _MaterialInputDefaultValueAccessor_0_10 = new import7.MaterialInputDefaultValueAccessor(_BaseMaterialInput_0_9, _NgControl_0_7);
    _compView_0.create(_MaterialInputComponent_0_8, [const []]);
    _el_0.addEventListener('keypress', eventHandler1(ctx.stopSpaceKeyPropagation));
    final subscription_0 = _NgModel_0_6.instance.update.listen(eventHandler1(_handle_ngModelChange_0_2));
    final subscription_1 = _MaterialInputComponent_0_8.onFocus.listen(eventHandler1(ctx.handleFocus));
    _viewQuery_MaterialInputComponent_0.reset([_MaterialInputComponent_0_8]);
    ctx.input = _viewQuery_MaterialInputComponent_0.first;
    init(const [], [subscription_0, subscription_1], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import2.DeferredValidator) && (0 == nodeIndex))) {
      return _DeferredValidator_0_4;
    }
    if ((identical(token, const OpaqueToken('NgValidators')) && (0 == nodeIndex))) {
      return _const_OpaqueToken__NgValidators___0_5;
    }
    if ((identical(token, import3.NgModel) && (0 == nodeIndex))) {
      return _NgModel_0_6.instance;
    }
    if ((identical(token, import4.NgControl) && (0 == nodeIndex))) {
      return _NgControl_0_7;
    }
    if ((((identical(token, import5.MaterialInputComponent) || identical(token, import8.ReferenceDirective)) || identical(token, import9.Focusable)) && (0 == nodeIndex))) {
      return _MaterialInputComponent_0_8;
    }
    if ((identical(token, import6.BaseMaterialInput) && (0 == nodeIndex))) {
      return _BaseMaterialInput_0_9;
    }
    if ((identical(token, import7.MaterialInputDefaultValueAccessor) && (0 == nodeIndex))) {
      return _MaterialInputDefaultValueAccessor_0_10;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import11.MaterialSelectSearchboxComponent _ctx = ctx;
    bool changed = true;
    Map<String, SimpleChange> changes;
    bool firstCheck = (this.cdState == 0);
    changes = null;
    dbg(0, 11, 4);
    final currVal_0 = _ctx.inputText;
    if (import20.checkBinding(_expr_0, currVal_0)) {
      _NgModel_0_6.instance.model = currVal_0;
      changes ??= <String, SimpleChange>{};
      changes['model'] = new SimpleChange(_expr_0, currVal_0);
      _expr_0 = currVal_0;
    }
    if (!identical(changes, null)) {
      _NgModel_0_6.instance.ngOnChanges(changes);
    }
    if ((firstCheck && !import20.AppViewUtils.throwOnChanges)) {
      _NgModel_0_6.instance.ngOnInit();
    }
    changed = false;
    if (firstCheck) {
      _MaterialInputComponent_0_8.displayBottomPanel = false;
      changed = true;
      _MaterialInputComponent_0_8.leadingGlyph = 'search';
      changed = true;
    }
    dbg(0, 12, 4);
    final currVal_1 = _ctx.label;
    if (import20.checkBinding(_expr_1, currVal_1)) {
      _MaterialInputComponent_0_8.label = currVal_1;
      changed = true;
      _expr_1 = currVal_1;
    }
    if (changed) {
      _compView_0.markAsCheckOnce();
    }
    _compView_0.detectChanges();
    if (!import20.AppViewUtils.throwOnChanges) {
      dbg(0, 5, 0);
      if (firstCheck) {
        _MaterialInputComponent_0_8.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
    dbg(0, 5, 0);
    _MaterialInputComponent_0_8.ngOnDestroy();
    _MaterialInputDefaultValueAccessor_0_10.ngOnDestroy();
  }

  void _handle_ngModelChange_0_2($event) {
    dbg(0, 11, 4);
    ctx.inputText = $event;
  }
}

AppView<import11.MaterialSelectSearchboxComponent> viewFactory_MaterialSelectSearchboxComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialSelectSearchboxComponent0(parentView, parentIndex);
}

const List<dynamic> styles$MaterialSelectSearchboxComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialSelectSearchboxComponentHost0 = [
  new StaticNodeDebugInfo([import11.MaterialSelectSearchboxComponent, import9.Focusable], import11.MaterialSelectSearchboxComponent, <String, dynamic>{})
];

class _ViewMaterialSelectSearchboxComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialSelectSearchboxComponent0 _compView_0;
  import11.MaterialSelectSearchboxComponent _MaterialSelectSearchboxComponent_0_4;
  static RenderComponentType _renderType;
  _ViewMaterialSelectSearchboxComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import18.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialSelectSearchboxComponentHost0) {
    _renderType ??= import20.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialSelectSearchboxComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialSelectSearchboxComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _MaterialSelectSearchboxComponent_0_4 = new import11.MaterialSelectSearchboxComponent();
    _compView_0.create(_MaterialSelectSearchboxComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialSelectSearchboxComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((identical(token, import11.MaterialSelectSearchboxComponent) || identical(token, import9.Focusable)) && (0 == nodeIndex))) {
      return _MaterialSelectSearchboxComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
    dbg(0, 0, 0);
    _MaterialSelectSearchboxComponent_0_4.ngOnDestroy();
  }
}

AppView viewFactory_MaterialSelectSearchboxComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialSelectSearchboxComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialSelectSearchboxComponentNgFactory = const ComponentFactory('material-select-searchbox', viewFactory_MaterialSelectSearchboxComponentHost0, import11.MaterialSelectSearchboxComponent, _MaterialSelectSearchboxComponentMetadata);
final ComponentFactory MaterialSelectSearchboxComponentNgFactory = _MaterialSelectSearchboxComponentNgFactory;
const _MaterialSelectSearchboxComponentMetadata = const [];
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
    MaterialSelectSearchboxComponent,
    MaterialSelectSearchboxComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialSelectSearchboxComponent,
    () => new MaterialSelectSearchboxComponent(),
  );
}
