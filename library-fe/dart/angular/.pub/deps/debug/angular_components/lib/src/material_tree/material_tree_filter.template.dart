// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_tree_filter.dart';
export 'material_tree_filter.dart';
import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_components/material_input/material_input.dart';
import 'package:angular_components/model/selection/select.dart';
import 'package:angular_components/src/material_tree/material_tree_root.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/material_input/material_input.template.dart' as _ref1;
import 'package:angular_components/model/selection/select.template.dart' as _ref2;
import 'package:angular_components/src/material_tree/material_tree_root.template.dart' as _ref3;

import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/common/directives/ng_if.dart';
import 'package:angular/src/debug/debug_app_view.dart';
import 'material_tree_filter.dart' as import4;
import 'package:angular/src/core/linker/query_list.dart' as import5;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import9;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'dart:html' as import11;
import 'package:angular/src/core/linker/app_view_utils.dart' as import12;
import 'package:angular/angular.dart';
import '../../material_input/deferred_validator.dart' as import14;
import 'package:angular_forms/src/directives/ng_model.dart' as import15;
import 'package:angular_forms/src/directives/ng_control.dart' as import16;
import '../../material_input/material_input.dart' as import17;
import '../../material_input/base_material_input.dart' as import18;
import '../../material_input/material_input_default_value_accessor.dart' as import19;
import '../../utils/angular/reference/reference.dart' as import20;
import '../../focus/focus.dart' as import21;
import '../../material_input/material_input.template.dart' as import22;
import 'package:angular_forms/src/directives/ng_model.template.dart' as import23;
import 'material_tree_root.dart' as import24;

const List<dynamic> styles$MaterialTreeFilterComponent = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeFilterComponent0 = [
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{})
];

class ViewMaterialTreeFilterComponent0 extends DebugAppView<import4.MaterialTreeFilterComponent> {
  import5.QueryList _viewQuery_materialInput_0;
  ViewContainer _appEl_0;
  NgIf _NgIf_0_7;
  static RenderComponentType _renderType;
  ViewMaterialTreeFilterComponent0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeFilterComponent0) {
    rootEl = import11.document.createElement('material-tree-filter');
    _renderType ??= import12.appViewUtils.createRenderType('package:angular_components/src/material_tree/material_tree_filter.html', ViewEncapsulation.None, styles$MaterialTreeFilterComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import11.HtmlElement parentRenderNode = initViewRoot(rootEl);
    _viewQuery_materialInput_0 = new import5.QueryList();
    var _anchor_0 = ngAnchor.clone(false);
    parentRenderNode.append(_anchor_0);
    dbgElm(this, _anchor_0, 0, 5, 0);
    _appEl_0 = new ViewContainer(0, null, this, _anchor_0);
    TemplateRef _TemplateRef_0_6 = new TemplateRef(_appEl_0, viewFactory_MaterialTreeFilterComponent1);
    _NgIf_0_7 = new NgIf(_appEl_0, _TemplateRef_0_6);
    init(const [], const [], [_anchor_0]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import4.MaterialTreeFilterComponent _ctx = ctx;
    dbg(0, 7, 2);
    _NgIf_0_7.ngIf = _ctx.hasFilterable;
    _appEl_0.detectChangesInNestedViews();
    if (!import12.AppViewUtils.throwOnChanges) {
      if (_viewQuery_materialInput_0.dirty) {
        _viewQuery_materialInput_0.reset([
          _appEl_0.mapNestedViews(_ViewMaterialTreeFilterComponent1, (_ViewMaterialTreeFilterComponent1 nestedView) {
            return [nestedView._MaterialInputComponent_0_8];
          })
        ]);
        ctx.materialInput = _viewQuery_materialInput_0.first;
      }
    }
  }

  @override
  void destroyInternal() {
    _appEl_0.destroyNestedViews();
  }
}

AppView<import4.MaterialTreeFilterComponent> viewFactory_MaterialTreeFilterComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialTreeFilterComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeFilterComponent1 = [
  new StaticNodeDebugInfo([import14.DeferredValidator, const OpaqueToken('NgValidators'), import15.NgModel, import16.NgControl, import17.MaterialInputComponent, import18.BaseMaterialInput, import19.MaterialInputDefaultValueAccessor, import20.ReferenceDirective, import21.Focusable], import17.MaterialInputComponent, <String, dynamic>{'materialInput': import17.MaterialInputComponent})
];

class _ViewMaterialTreeFilterComponent1 extends DebugAppView<import4.MaterialTreeFilterComponent> {
  import11.Element _el_0;
  import22.ViewMaterialInputComponent0 _compView_0;
  import14.DeferredValidator _DeferredValidator_0_4;
  List<dynamic> _const_OpaqueToken__NgValidators___0_5;
  import23.NgModelNgCd _NgModel_0_6;
  import15.NgModel _NgControl_0_7;
  import17.MaterialInputComponent _MaterialInputComponent_0_8;
  dynamic _BaseMaterialInput_0_9;
  import19.MaterialInputDefaultValueAccessor _MaterialInputDefaultValueAccessor_0_10;
  var _expr_0;
  String _expr_1;
  String _expr_3;
  _ViewMaterialTreeFilterComponent1(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeFilterComponent1) {
    componentType = ViewMaterialTreeFilterComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import22.ViewMaterialInputComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 5, 0);
    createAttr(_el_0, 'style', 'width: 100%;');
    _DeferredValidator_0_4 = new import14.DeferredValidator();
    _const_OpaqueToken__NgValidators___0_5 = [_DeferredValidator_0_4];
    _NgModel_0_6 = new import23.NgModelNgCd(new import15.NgModel(_const_OpaqueToken__NgValidators___0_5, null));
    _NgControl_0_7 = _NgModel_0_6.instance;
    _MaterialInputComponent_0_8 = new import17.MaterialInputComponent(null, null, _NgControl_0_7, _compView_0.ref, _DeferredValidator_0_4);
    _BaseMaterialInput_0_9 = _MaterialInputComponent_0_8;
    _MaterialInputDefaultValueAccessor_0_10 = new import19.MaterialInputDefaultValueAccessor(_BaseMaterialInput_0_9, _NgControl_0_7);
    _compView_0.create(_MaterialInputComponent_0_8, [const []]);
    final subscription_0 = _MaterialInputComponent_0_8.onFocus.listen(eventHandler0(ctx.handleFocus));
    final subscription_1 = _MaterialInputComponent_0_8.onKeypress.listen(eventHandler1(_handle_inputKeyPress_0_1));
    init([_el_0], [subscription_0, subscription_1], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import14.DeferredValidator) && (0 == nodeIndex))) {
      return _DeferredValidator_0_4;
    }
    if ((identical(token, const OpaqueToken('NgValidators')) && (0 == nodeIndex))) {
      return _const_OpaqueToken__NgValidators___0_5;
    }
    if ((identical(token, import15.NgModel) && (0 == nodeIndex))) {
      return _NgModel_0_6.instance;
    }
    if ((identical(token, import16.NgControl) && (0 == nodeIndex))) {
      return _NgControl_0_7;
    }
    if ((((identical(token, import17.MaterialInputComponent) || identical(token, import20.ReferenceDirective)) || identical(token, import21.Focusable)) && (0 == nodeIndex))) {
      return _MaterialInputComponent_0_8;
    }
    if ((identical(token, import18.BaseMaterialInput) && (0 == nodeIndex))) {
      return _BaseMaterialInput_0_9;
    }
    if ((identical(token, import19.MaterialInputDefaultValueAccessor) && (0 == nodeIndex))) {
      return _MaterialInputDefaultValueAccessor_0_10;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import4.MaterialTreeFilterComponent _ctx = ctx;
    bool changed = true;
    Map<String, SimpleChange> changes;
    bool firstCheck = (this.cdState == 0);
    changes = null;
    dbg(0, 13, 2);
    final currVal_0 = _ctx.inputText;
    if (import12.checkBinding(_expr_0, currVal_0)) {
      _NgModel_0_6.instance.model = currVal_0;
      changes ??= <String, SimpleChange>{};
      changes['model'] = new SimpleChange(_expr_0, currVal_0);
      _expr_0 = currVal_0;
    }
    if (!identical(changes, null)) {
      _NgModel_0_6.instance.ngOnChanges(changes);
    }
    if ((firstCheck && !import12.AppViewUtils.throwOnChanges)) {
      _NgModel_0_6.instance.ngOnInit();
    }
    changed = false;
    if (firstCheck) {
      _MaterialInputComponent_0_8.displayBottomPanel = false;
      changed = true;
    }
    dbg(0, 14, 2);
    final currVal_1 = _ctx.placeholder;
    if (import12.checkBinding(_expr_1, currVal_1)) {
      _MaterialInputComponent_0_8.label = currVal_1;
      changed = true;
      _expr_1 = currVal_1;
    }
    dbg(0, 9, 2);
    final currVal_3 = _ctx.leadingGlyph;
    if (import12.checkBinding(_expr_3, currVal_3)) {
      _MaterialInputComponent_0_8.leadingGlyph = currVal_3;
      changed = true;
      _expr_3 = currVal_3;
    }
    if (changed) {
      _compView_0.markAsCheckOnce();
    }
    _compView_0.detectChanges();
    if (!import12.AppViewUtils.throwOnChanges) {
      dbg(0, 5, 0);
      if (firstCheck) {
        _MaterialInputComponent_0_8.ngAfterViewInit();
      }
    }
  }

  @override
  void dirtyParentQueriesInternal() {
    (parentView as ViewMaterialTreeFilterComponent0)._viewQuery_materialInput_0.setDirty();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
    dbg(0, 5, 0);
    _MaterialInputComponent_0_8.ngOnDestroy();
    _MaterialInputDefaultValueAccessor_0_10.ngOnDestroy();
  }

  void _handle_inputKeyPress_0_1($event) {
    dbg(0, 12, 2);
    ctx.inputText = $event;
  }
}

AppView<import4.MaterialTreeFilterComponent> viewFactory_MaterialTreeFilterComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeFilterComponent1(parentView, parentIndex);
}

const List<dynamic> styles$MaterialTreeFilterComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTreeFilterComponentHost0 = [
  new StaticNodeDebugInfo([import4.MaterialTreeFilterComponent], import4.MaterialTreeFilterComponent, <String, dynamic>{})
];

class _ViewMaterialTreeFilterComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialTreeFilterComponent0 _compView_0;
  import4.MaterialTreeFilterComponent _MaterialTreeFilterComponent_0_4;
  static RenderComponentType _renderType;
  _ViewMaterialTreeFilterComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTreeFilterComponentHost0) {
    _renderType ??= import12.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialTreeFilterComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialTreeFilterComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _MaterialTreeFilterComponent_0_4 = new import4.MaterialTreeFilterComponent(this.injectorGet(import24.MaterialTreeRoot, viewData.parentIndex, null));
    _compView_0.create(_MaterialTreeFilterComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialTreeFilterComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import4.MaterialTreeFilterComponent) && (0 == nodeIndex))) {
      return _MaterialTreeFilterComponent_0_4;
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
  }
}

AppView viewFactory_MaterialTreeFilterComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTreeFilterComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialTreeFilterComponentNgFactory = const ComponentFactory('material-tree-filter', viewFactory_MaterialTreeFilterComponentHost0, import4.MaterialTreeFilterComponent, _MaterialTreeFilterComponentMetadata);
final ComponentFactory MaterialTreeFilterComponentNgFactory = _MaterialTreeFilterComponentNgFactory;
const _MaterialTreeFilterComponentMetadata = const [];
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
    MaterialTreeFilterComponent,
    MaterialTreeFilterComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialTreeFilterComponent,
    (MaterialTreeRoot p0) => new MaterialTreeFilterComponent(p0),
  );
  _ngRef.registerDependencies(
    MaterialTreeFilterComponent,
    const [
      const [
        MaterialTreeRoot,
        const _ngRef.Optional(),
      ],
    ],
  );
}
