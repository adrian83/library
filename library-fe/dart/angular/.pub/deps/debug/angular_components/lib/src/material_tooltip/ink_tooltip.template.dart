// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'ink_tooltip.dart';
export 'ink_tooltip.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/content/deferred_content.dart';
import 'package:angular_components/laminate/enums/alignment.dart';
import 'package:angular_components/laminate/popup/popup.dart' show PopupSource;
import 'package:angular_components/material_popup/material_popup.dart';
import 'package:angular_components/material_tooltip/module.dart';
import 'tooltip_controller.dart';
import 'tooltip_target.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/content/deferred_content.template.dart' as _ref1;
import 'package:angular_components/laminate/enums/alignment.template.dart' as _ref2;
import 'package:angular_components/laminate/popup/popup.template.dart' as _ref3;
import 'package:angular_components/material_popup/material_popup.template.dart' as _ref4;
import 'package:angular_components/material_tooltip/module.template.dart' as _ref5;
import 'tooltip_controller.template.dart' as _ref6;
import 'tooltip_target.template.dart' as _ref7;

import 'package:angular_components/src/material_tooltip/ink_tooltip.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/common/directives/ng_if.dart';
import 'package:angular/src/debug/debug_app_view.dart';
import 'ink_tooltip.dart' as import5;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import9;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'dart:html' as import11;
import 'package:angular/src/core/linker/app_view_utils.dart' as import12;
import 'package:angular/angular.dart';
import '../../material_popup/material_popup.dart' as import14;
import '../../content/deferred_content_aware.dart' as import15;
import '../../mixins/material_dropdown_base.dart' as import16;
import '../laminate/popup/popup_hierarchy.dart' as import17;
import '../laminate/popup/popup_ref.dart' as import18;
import '../../content/deferred_content.dart' as import19;
import '../../material_popup/material_popup.template.dart' as import20;
import 'package:angular/src/core/zone/ng_zone.dart' as import21;
import '../laminate/overlay/overlay_service.dart' as import22;
import '../../laminate/overlay/zindexer.dart' as import23;
import '../laminate/popup/popup_size_provider.dart' as import24;
import 'package:angular/src/core/linker/element_ref.dart';
import 'tooltip_controller.dart' as import26;
import '../../material_tooltip/module.dart' as import27;
import '../../utils/disposer/disposer.dart' as import28;

const List<dynamic> styles$MaterialInkTooltipComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialInkTooltipComponent0 = [
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{})
];

class ViewMaterialInkTooltipComponent0 extends DebugAppView<import5.MaterialInkTooltipComponent> {
  ViewContainer _appEl_1;
  NgIf _NgIf_1_7;
  static RenderComponentType _renderType;
  ViewMaterialInkTooltipComponent0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckOnce, nodeDebugInfos_MaterialInkTooltipComponent0) {
    rootEl = import11.document.createElement('material-tooltip-text');
    _renderType ??= import12.appViewUtils.createRenderType('asset:angular_components/lib/src/material_tooltip/ink_tooltip.dart class MaterialInkTooltipComponent - inline template', ViewEncapsulation.Emulated, styles$MaterialInkTooltipComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import11.HtmlElement parentRenderNode = initViewRoot(rootEl);
    import11.Text _text_0 = new import11.Text('        ');
    parentRenderNode.append(_text_0);
    dbgElm(this, _text_0, 0, 0, 0);
    var _anchor_1 = ngAnchor.clone(false);
    parentRenderNode.append(_anchor_1);
    dbgElm(this, _anchor_1, 1, 0, 8);
    _appEl_1 = new ViewContainer(1, null, this, _anchor_1);
    TemplateRef _TemplateRef_1_6 = new TemplateRef(_appEl_1, viewFactory_MaterialInkTooltipComponent1);
    _NgIf_1_7 = new NgIf(_appEl_1, _TemplateRef_1_6);
    init(const [], const [], [_text_0, _anchor_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialInkTooltipComponent _ctx = ctx;
    dbg(1, 0, 24);
    _NgIf_1_7.ngIf = (_ctx.popupSource != null);
    _appEl_1.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    _appEl_1.destroyNestedViews();
  }
}

AppView<import5.MaterialInkTooltipComponent> viewFactory_MaterialInkTooltipComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialInkTooltipComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialInkTooltipComponent1 = [
  new StaticNodeDebugInfo([import14.MaterialPopupComponent, import15.DeferredContentAware, import16.DropdownHandle, import17.PopupHierarchy, import18.PopupRef], import14.MaterialPopupComponent, <String, dynamic>{}),
  null,
  new StaticNodeDebugInfo([TemplateRef, import19.DeferredContentDirective], null, <String, dynamic>{}),
  null
];

class _ViewMaterialInkTooltipComponent1 extends DebugAppView<import5.MaterialInkTooltipComponent> {
  import11.Element _el_0;
  import20.ViewMaterialPopupComponent0 _compView_0;
  ViewContainer _appEl_0;
  import14.MaterialPopupComponent _MaterialPopupComponent_0_6;
  dynamic _DeferredContentAware_0_7;
  dynamic __PopupHierarchy_0_9;
  dynamic __PopupRef_0_10;
  ViewContainer _appEl_2;
  import19.DeferredContentDirective _DeferredContentDirective_2_7;
  var _expr_3;
  var _expr_4;
  bool _expr_6;
  _ViewMaterialInkTooltipComponent1(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialInkTooltipComponent1) {
    componentType = ViewMaterialInkTooltipComponent0._renderType;
  }
  dynamic get _PopupHierarchy_0_9 {
    dbg(0, 0, 8);
    if ((this.__PopupHierarchy_0_9 == null)) {
      (__PopupHierarchy_0_9 = import14.getHierarchy(this._MaterialPopupComponent_0_6));
    }
    return this.__PopupHierarchy_0_9;
  }

  dynamic get _PopupRef_0_10 {
    dbg(0, 0, 8);
    if ((this.__PopupRef_0_10 == null)) {
      (__PopupRef_0_10 = import14.getResolvedPopupRef(this._MaterialPopupComponent_0_6));
    }
    return this.__PopupRef_0_10;
  }

  @override
  ComponentRef build() {
    _compView_0 = new import20.ViewMaterialPopupComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 0, 8);
    _el_0.className = 'aacmtit-ink-tooltip-shadow';
    createAttr(_el_0, 'enforceSpaceConstraints', '');
    createAttr(_el_0, 'ink', '');
    createAttr(_el_0, 'role', 'tooltip');
    createAttr(_el_0, 'trackLayoutChanges', '');
    addShimC(_el_0);
    _appEl_0 = new ViewContainer(0, null, this, _el_0);
    _MaterialPopupComponent_0_6 = new import14.MaterialPopupComponent(parentView.injectorGet(import17.PopupHierarchy, viewData.parentIndex, null), parentView.injectorGet(import14.MaterialPopupComponent, viewData.parentIndex, null), 'tooltip', parentView.injectorGet(import21.NgZone, viewData.parentIndex), parentView.injectorGet(import22.OverlayService, viewData.parentIndex), parentView.injectorGet(import23.ZIndexer, viewData.parentIndex), parentView.injectorGet(const OpaqueToken('defaultPopupPositions'), viewData.parentIndex), parentView.injectorGet(const OpaqueToken('overlayRepositionLoop'), viewData.parentIndex), parentView.injectorGet(import24.PopupSizeProvider, viewData.parentIndex, null), _compView_0.ref, _appEl_0, new ElementRef(_el_0));
    _DeferredContentAware_0_7 = _MaterialPopupComponent_0_6;
    import11.Text _text_1 = new import11.Text('\n          ');
    dbgElm(this, _text_1, 1, 10, 46);
    var _anchor_2 = ngAnchor.clone(false);
    dbgElm(this, _anchor_2, 2, 11, 10);
    _appEl_2 = new ViewContainer(2, 0, this, _anchor_2);
    TemplateRef _TemplateRef_2_6 = new TemplateRef(_appEl_2, viewFactory_MaterialInkTooltipComponent2);
    _DeferredContentDirective_2_7 = new import19.DeferredContentDirective(_appEl_2, _TemplateRef_2_6, _DeferredContentAware_0_7);
    import11.Text _text_3 = new import11.Text('\n        ');
    dbgElm(this, _text_3, 3, 13, 16);
    _compView_0.create(_MaterialPopupComponent_0_6, [
      const [],
      [_text_1, _appEl_2, _text_3],
      const []
    ]);
    init([_appEl_0], const [], [_el_0, _text_1, _anchor_2, _text_3]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import19.DeferredContentDirective) && (2 == nodeIndex))) {
      return _DeferredContentDirective_2_7;
    }
    if (((identical(token, import14.MaterialPopupComponent) || identical(token, import16.DropdownHandle)) && ((0 <= nodeIndex) && (nodeIndex <= 3)))) {
      return _MaterialPopupComponent_0_6;
    }
    if ((identical(token, import15.DeferredContentAware) && ((0 <= nodeIndex) && (nodeIndex <= 3)))) {
      return _DeferredContentAware_0_7;
    }
    if ((identical(token, import17.PopupHierarchy) && ((0 <= nodeIndex) && (nodeIndex <= 3)))) {
      return _PopupHierarchy_0_9;
    }
    if ((identical(token, import18.PopupRef) && ((0 <= nodeIndex) && (nodeIndex <= 3)))) {
      return _PopupRef_0_10;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialInkTooltipComponent _ctx = ctx;
    bool firstCheck = (this.cdState == 0);
    if (firstCheck) {
      _MaterialPopupComponent_0_6.autoDismiss = false;
      _MaterialPopupComponent_0_6.enforceSpaceConstraints = true;
      _MaterialPopupComponent_0_6.matchMinSourceWidth = false;
      _MaterialPopupComponent_0_6.trackLayoutChanges = true;
      _MaterialPopupComponent_0_6.inkBackground = true;
    }
    dbg(0, 8, 24);
    final currVal_3 = _ctx.positions;
    if (import12.checkBinding(_expr_3, currVal_3)) {
      _MaterialPopupComponent_0_6.preferredPositions = currVal_3;
      _expr_3 = currVal_3;
    }
    dbg(0, 9, 24);
    final currVal_4 = _ctx.popupSource;
    if (import12.checkBinding(_expr_4, currVal_4)) {
      _MaterialPopupComponent_0_6.source = currVal_4;
      _expr_4 = currVal_4;
    }
    dbg(0, 10, 24);
    final currVal_6 = _ctx.showPopup;
    if (import12.checkBinding(_expr_6, currVal_6)) {
      _MaterialPopupComponent_0_6.visible = currVal_6;
      _expr_6 = currVal_6;
    }
    _appEl_0.detectChangesInNestedViews();
    _appEl_2.detectChangesInNestedViews();
    _compView_0.detectHostChanges(firstCheck);
    _compView_0.detectChanges();
    if (!import12.AppViewUtils.throwOnChanges) {
      dbg(0, 0, 8);
      if (firstCheck) {
        _MaterialPopupComponent_0_6.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    _appEl_0.destroyNestedViews();
    _appEl_2.destroyNestedViews();
    _compView_0.destroy();
    dbg(2, 11, 10);
    _DeferredContentDirective_2_7.ngOnDestroy();
    dbg(0, 0, 8);
    _MaterialPopupComponent_0_6.ngOnDestroy();
  }
}

AppView<import5.MaterialInkTooltipComponent> viewFactory_MaterialInkTooltipComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialInkTooltipComponent1(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialInkTooltipComponent2 = [null, null, null];

class _ViewMaterialInkTooltipComponent2 extends DebugAppView<import5.MaterialInkTooltipComponent> {
  import11.DivElement _el_0;
  import11.Text _text_1;
  var _expr_0;
  _ViewMaterialInkTooltipComponent2(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialInkTooltipComponent2) {
    componentType = ViewMaterialInkTooltipComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import11.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 11, 10);
    _el_0.className = 'ink-container';
    addShimC(_el_0);
    _text_1 = new import11.Text('');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 11, 54);
    dbg(null, 12, 20);
    project(_el_0, 0);
    import11.Text _text_2 = new import11.Text('\n          ');
    _el_0.append(_text_2);
    dbgElm(this, _text_2, 2, 12, 45);
    init([_el_0], const [], [_el_0, _text_1, _text_2]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialInkTooltipComponent _ctx = ctx;
    dbg(1, 11, 54);
    final currVal_0 = import12.interpolate1('\n            ', _ctx.text, '');
    if (import12.checkBinding(_expr_0, currVal_0)) {
      _text_1.text = currVal_0;
      _expr_0 = currVal_0;
    }
  }
}

AppView<import5.MaterialInkTooltipComponent> viewFactory_MaterialInkTooltipComponent2(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialInkTooltipComponent2(parentView, parentIndex);
}

const List<dynamic> styles$MaterialInkTooltipComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialInkTooltipComponentHost0 = [
  new StaticNodeDebugInfo([import26.TooltipController, import5.MaterialInkTooltipComponent], import5.MaterialInkTooltipComponent, <String, dynamic>{})
];

class _ViewMaterialInkTooltipComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialInkTooltipComponent0 _compView_0;
  dynamic _TooltipController_0_4;
  import5.MaterialInkTooltipComponent _MaterialInkTooltipComponent_0_5;
  static RenderComponentType _renderType;
  _ViewMaterialInkTooltipComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialInkTooltipComponentHost0) {
    _renderType ??= import12.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialInkTooltipComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialInkTooltipComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _TooltipController_0_4 = import27.createTooltipController(this.injectorGet(import26.TooltipController, viewData.parentIndex, null), this.injectorGet(import28.Disposer, viewData.parentIndex, null));
    _MaterialInkTooltipComponent_0_5 = new import5.MaterialInkTooltipComponent(_TooltipController_0_4, _compView_0.ref);
    _compView_0.create(_MaterialInkTooltipComponent_0_5, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialInkTooltipComponent_0_5);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import26.TooltipController) && (0 == nodeIndex))) {
      return _TooltipController_0_4;
    }
    if ((identical(token, import5.MaterialInkTooltipComponent) && (0 == nodeIndex))) {
      return _MaterialInkTooltipComponent_0_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool changed = true;
    changed = false;
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

AppView viewFactory_MaterialInkTooltipComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialInkTooltipComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialInkTooltipComponentNgFactory = const ComponentFactory('material-tooltip-text', viewFactory_MaterialInkTooltipComponentHost0, import5.MaterialInkTooltipComponent, _MaterialInkTooltipComponentMetadata);
final ComponentFactory MaterialInkTooltipComponentNgFactory = _MaterialInkTooltipComponentNgFactory;
const _MaterialInkTooltipComponentMetadata = const [];
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
    MaterialInkTooltipComponent,
    MaterialInkTooltipComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialInkTooltipComponent,
    (TooltipController p0, ChangeDetectorRef p1) => new MaterialInkTooltipComponent(p0, p1),
  );
  _ngRef.registerDependencies(
    MaterialInkTooltipComponent,
    const [
      const [
        TooltipController,
      ],
      const [
        ChangeDetectorRef,
      ],
    ],
  );
}
