// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'paper_tooltip.dart';
export 'paper_tooltip.dart';
import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_components/content/deferred_content.dart';
import 'package:angular_components/content/deferred_content_aware.dart';
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
import 'package:angular_components/content/deferred_content_aware.template.dart' as _ref2;
import 'package:angular_components/laminate/enums/alignment.template.dart' as _ref3;
import 'package:angular_components/laminate/popup/popup.template.dart' as _ref4;
import 'package:angular_components/material_popup/material_popup.template.dart' as _ref5;
import 'package:angular_components/material_tooltip/module.template.dart' as _ref6;
import 'tooltip_controller.template.dart' as _ref7;
import 'tooltip_target.template.dart' as _ref8;

import 'package:angular_components/src/material_tooltip/paper_tooltip.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/common/directives/ng_if.dart';
import 'package:angular/src/debug/debug_app_view.dart';
import 'paper_tooltip.dart' as import5;
import 'package:angular/src/core/linker/query_list.dart' as import6;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import10;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'dart:html' as import12;
import 'package:angular/src/core/linker/app_view_utils.dart' as import13;
import 'package:angular/angular.dart';
import '../../material_popup/material_popup.dart' as import15;
import '../../content/deferred_content_aware.dart' as import16;
import '../../mixins/material_dropdown_base.dart' as import17;
import '../laminate/popup/popup_hierarchy.dart' as import18;
import '../laminate/popup/popup_ref.dart' as import19;
import '../../material_popup/material_popup.template.dart' as import20;
import 'package:angular/src/core/zone/ng_zone.dart' as import21;
import '../laminate/overlay/overlay_service.dart' as import22;
import '../../laminate/overlay/zindexer.dart' as import23;
import '../laminate/popup/popup_size_provider.dart' as import24;
import 'package:angular/src/core/linker/element_ref.dart';
import 'tooltip_controller.dart' as import26;
import '../../material_tooltip/module.dart' as import27;
import '../../utils/disposer/disposer.dart' as import28;

const List<dynamic> styles$MaterialPaperTooltipComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialPaperTooltipComponent0 = [
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{})
];

class ViewMaterialPaperTooltipComponent0 extends DebugAppView<import5.MaterialPaperTooltipComponent> {
  import6.QueryList _viewQuery_MaterialPopupComponent_0;
  ViewContainer _appEl_0;
  NgIf _NgIf_0_7;
  static RenderComponentType _renderType;
  ViewMaterialPaperTooltipComponent0(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckOnce, nodeDebugInfos_MaterialPaperTooltipComponent0) {
    rootEl = import12.document.createElement('material-tooltip-card');
    _renderType ??= import13.appViewUtils.createRenderType('asset:angular_components/lib/src/material_tooltip/paper_tooltip.dart class MaterialPaperTooltipComponent - inline template', ViewEncapsulation.Emulated, styles$MaterialPaperTooltipComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import12.HtmlElement parentRenderNode = initViewRoot(rootEl);
    _viewQuery_MaterialPopupComponent_0 = new import6.QueryList();
    var _anchor_0 = ngAnchor.clone(false);
    parentRenderNode.append(_anchor_0);
    dbgElm(this, _anchor_0, 0, 0, 0);
    _appEl_0 = new ViewContainer(0, null, this, _anchor_0);
    TemplateRef _TemplateRef_0_6 = new TemplateRef(_appEl_0, viewFactory_MaterialPaperTooltipComponent1);
    _NgIf_0_7 = new NgIf(_appEl_0, _TemplateRef_0_6);
    init(const [], const [], [_anchor_0]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialPaperTooltipComponent _ctx = ctx;
    dbg(0, 0, 16);
    _NgIf_0_7.ngIf = (_ctx.popupSource != null);
    _appEl_0.detectChangesInNestedViews();
    if (!import13.AppViewUtils.throwOnChanges) {
      if (_viewQuery_MaterialPopupComponent_0.dirty) {
        _viewQuery_MaterialPopupComponent_0.reset([
          _appEl_0.mapNestedViews(_ViewMaterialPaperTooltipComponent1, (_ViewMaterialPaperTooltipComponent1 nestedView) {
            return [nestedView._MaterialPopupComponent_0_6];
          })
        ]);
        ctx.popupChild = _viewQuery_MaterialPopupComponent_0.first;
      }
    }
  }

  @override
  void destroyInternal() {
    _appEl_0.destroyNestedViews();
  }
}

AppView<import5.MaterialPaperTooltipComponent> viewFactory_MaterialPaperTooltipComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialPaperTooltipComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialPaperTooltipComponent1 = [
  new StaticNodeDebugInfo([import15.MaterialPopupComponent, import16.DeferredContentAware, import17.DropdownHandle, import18.PopupHierarchy, import19.PopupRef], import15.MaterialPopupComponent, <String, dynamic>{}),
  null,
  null,
  null,
  null,
  null,
  null,
  null,
  null,
  null,
  null
];

class _ViewMaterialPaperTooltipComponent1 extends DebugAppView<import5.MaterialPaperTooltipComponent> {
  import12.Element _el_0;
  import20.ViewMaterialPopupComponent0 _compView_0;
  ViewContainer _appEl_0;
  import15.MaterialPopupComponent _MaterialPopupComponent_0_6;
  dynamic __PopupHierarchy_0_9;
  dynamic __PopupRef_0_10;
  import12.DivElement _el_2;
  import12.DivElement _el_4;
  import12.DivElement _el_6;
  import12.DivElement _el_8;
  int _expr_2;
  int _expr_3;
  var _expr_4;
  var _expr_5;
  bool _expr_7;
  _ViewMaterialPaperTooltipComponent1(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialPaperTooltipComponent1) {
    componentType = ViewMaterialPaperTooltipComponent0._renderType;
  }
  dynamic get _PopupHierarchy_0_9 {
    dbg(0, 0, 0);
    if ((this.__PopupHierarchy_0_9 == null)) {
      (__PopupHierarchy_0_9 = import15.getHierarchy(this._MaterialPopupComponent_0_6));
    }
    return this.__PopupHierarchy_0_9;
  }

  dynamic get _PopupRef_0_10 {
    dbg(0, 0, 0);
    if ((this.__PopupRef_0_10 == null)) {
      (__PopupRef_0_10 = import15.getResolvedPopupRef(this._MaterialPopupComponent_0_6));
    }
    return this.__PopupRef_0_10;
  }

  @override
  ComponentRef build() {
    _compView_0 = new import20.ViewMaterialPopupComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 0, 0);
    createAttr(_el_0, 'enforceSpaceConstraints', '');
    createAttr(_el_0, 'role', 'tooltip');
    createAttr(_el_0, 'trackLayoutChanges', '');
    addShimC(_el_0);
    _appEl_0 = new ViewContainer(0, null, this, _el_0);
    _MaterialPopupComponent_0_6 = new import15.MaterialPopupComponent(parentView.injectorGet(import18.PopupHierarchy, viewData.parentIndex, null), parentView.injectorGet(import15.MaterialPopupComponent, viewData.parentIndex, null), 'tooltip', parentView.injectorGet(import21.NgZone, viewData.parentIndex), parentView.injectorGet(import22.OverlayService, viewData.parentIndex), parentView.injectorGet(import23.ZIndexer, viewData.parentIndex), parentView.injectorGet(const OpaqueToken('defaultPopupPositions'), viewData.parentIndex), parentView.injectorGet(const OpaqueToken('overlayRepositionLoop'), viewData.parentIndex), parentView.injectorGet(import24.PopupSizeProvider, viewData.parentIndex, null), _compView_0.ref, _appEl_0, new ElementRef(_el_0));
    import12.Text _text_1 = new import12.Text('\n  ');
    dbgElm(this, _text_1, 1, 9, 31);
    var doc = import12.document;
    _el_2 = doc.createElement('div');
    dbgElm(this, _el_2, 2, 10, 2);
    _el_2.className = 'paper-container';
    addShimC(_el_2);
    import12.Text _text_3 = new import12.Text('\n    ');
    _el_2.append(_text_3);
    dbgElm(this, _text_3, 3, 12, 37);
    _el_4 = createAndAppendDbg(this, doc, 'div', _el_2, 4, 13, 4);
    _el_4.className = 'header';
    addShimC(_el_4);
    dbg(null, 13, 24);
    project(_el_4, 0);
    import12.Text _text_5 = new import12.Text('\n    ');
    _el_2.append(_text_5);
    dbgElm(this, _text_5, 5, 13, 71);
    _el_6 = createAndAppendDbg(this, doc, 'div', _el_2, 6, 14, 4);
    _el_6.className = 'body';
    addShimC(_el_6);
    dbg(null, 14, 22);
    project(_el_6, 1);
    import12.Text _text_7 = new import12.Text('\n    ');
    _el_2.append(_text_7);
    dbgElm(this, _text_7, 7, 14, 53);
    _el_8 = createAndAppendDbg(this, doc, 'div', _el_2, 8, 15, 4);
    _el_8.className = 'footer';
    addShimC(_el_8);
    dbg(null, 15, 24);
    project(_el_8, 2);
    import12.Text _text_9 = new import12.Text('\n  ');
    _el_2.append(_text_9);
    dbgElm(this, _text_9, 9, 15, 71);
    import12.Text _text_10 = new import12.Text('\n');
    dbgElm(this, _text_10, 10, 16, 8);
    _compView_0.create(_MaterialPopupComponent_0_6, [
      const [],
      [_text_1, _el_2, _text_10],
      const []
    ]);
    _el_2.addEventListener('mouseover', eventHandler0(ctx.onMouseOver));
    _el_2.addEventListener('mouseleave', eventHandler0(ctx.onMouseLeave));
    init([_appEl_0], const [], [_el_0, _text_1, _el_2, _text_3, _el_4, _text_5, _el_6, _text_7, _el_8, _text_9, _text_10]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((((identical(token, import15.MaterialPopupComponent) || identical(token, import16.DeferredContentAware)) || identical(token, import17.DropdownHandle)) && ((0 <= nodeIndex) && (nodeIndex <= 10)))) {
      return _MaterialPopupComponent_0_6;
    }
    if ((identical(token, import18.PopupHierarchy) && ((0 <= nodeIndex) && (nodeIndex <= 10)))) {
      return _PopupHierarchy_0_9;
    }
    if ((identical(token, import19.PopupRef) && ((0 <= nodeIndex) && (nodeIndex <= 10)))) {
      return _PopupRef_0_10;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialPaperTooltipComponent _ctx = ctx;
    bool firstCheck = (this.cdState == 0);
    if (firstCheck) {
      _MaterialPopupComponent_0_6.autoDismiss = false;
      _MaterialPopupComponent_0_6.enforceSpaceConstraints = true;
      _MaterialPopupComponent_0_6.trackLayoutChanges = true;
    }
    dbg(0, 5, 16);
    final currVal_2 = _ctx.offsetX;
    if (import13.checkBinding(_expr_2, currVal_2)) {
      _MaterialPopupComponent_0_6.offsetX = currVal_2;
      _expr_2 = currVal_2;
    }
    dbg(0, 6, 16);
    final currVal_3 = _ctx.offsetY;
    if (import13.checkBinding(_expr_3, currVal_3)) {
      _MaterialPopupComponent_0_6.offsetY = currVal_3;
      _expr_3 = currVal_3;
    }
    dbg(0, 4, 16);
    final currVal_4 = _ctx.preferredPositions;
    if (import13.checkBinding(_expr_4, currVal_4)) {
      _MaterialPopupComponent_0_6.preferredPositions = currVal_4;
      _expr_4 = currVal_4;
    }
    dbg(0, 8, 16);
    final currVal_5 = _ctx.popupSource;
    if (import13.checkBinding(_expr_5, currVal_5)) {
      _MaterialPopupComponent_0_6.source = currVal_5;
      _expr_5 = currVal_5;
    }
    dbg(0, 1, 16);
    final currVal_7 = _ctx.showPopup;
    if (import13.checkBinding(_expr_7, currVal_7)) {
      _MaterialPopupComponent_0_6.visible = currVal_7;
      _expr_7 = currVal_7;
    }
    _appEl_0.detectChangesInNestedViews();
    _compView_0.detectHostChanges(firstCheck);
    _compView_0.detectChanges();
    if (!import13.AppViewUtils.throwOnChanges) {
      dbg(0, 0, 0);
      if (firstCheck) {
        _MaterialPopupComponent_0_6.ngAfterViewInit();
      }
    }
  }

  @override
  void dirtyParentQueriesInternal() {
    (parentView as ViewMaterialPaperTooltipComponent0)._viewQuery_MaterialPopupComponent_0.setDirty();
  }

  @override
  void destroyInternal() {
    _appEl_0.destroyNestedViews();
    _compView_0.destroy();
    dbg(0, 0, 0);
    _MaterialPopupComponent_0_6.ngOnDestroy();
  }
}

AppView<import5.MaterialPaperTooltipComponent> viewFactory_MaterialPaperTooltipComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialPaperTooltipComponent1(parentView, parentIndex);
}

const List<dynamic> styles$MaterialPaperTooltipComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialPaperTooltipComponentHost0 = [
  new StaticNodeDebugInfo([import26.TooltipController, import5.MaterialPaperTooltipComponent, import26.Tooltip, import16.DeferredContentAware], import5.MaterialPaperTooltipComponent, <String, dynamic>{})
];

class _ViewMaterialPaperTooltipComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialPaperTooltipComponent0 _compView_0;
  dynamic _TooltipController_0_4;
  import5.MaterialPaperTooltipComponent _MaterialPaperTooltipComponent_0_5;
  dynamic __Tooltip_0_6;
  static RenderComponentType _renderType;
  _ViewMaterialPaperTooltipComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialPaperTooltipComponentHost0) {
    _renderType ??= import13.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialPaperTooltipComponentHost);
    setupComponentType(_renderType);
  }
  dynamic get _Tooltip_0_6 {
    dbg(0, 0, 0);
    if ((this.__Tooltip_0_6 == null)) {
      (__Tooltip_0_6 = import5.getTooltipHandle(this._MaterialPaperTooltipComponent_0_5));
    }
    return this.__Tooltip_0_6;
  }

  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialPaperTooltipComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _TooltipController_0_4 = import27.createTooltipController(this.injectorGet(import26.TooltipController, viewData.parentIndex, null), this.injectorGet(import28.Disposer, viewData.parentIndex, null));
    _MaterialPaperTooltipComponent_0_5 = new import5.MaterialPaperTooltipComponent(_TooltipController_0_4, _compView_0.ref);
    _compView_0.create(_MaterialPaperTooltipComponent_0_5, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialPaperTooltipComponent_0_5);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import26.TooltipController) && (0 == nodeIndex))) {
      return _TooltipController_0_4;
    }
    if (((identical(token, import5.MaterialPaperTooltipComponent) || identical(token, import16.DeferredContentAware)) && (0 == nodeIndex))) {
      return _MaterialPaperTooltipComponent_0_5;
    }
    if ((identical(token, import26.Tooltip) && (0 == nodeIndex))) {
      return _Tooltip_0_6;
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

AppView viewFactory_MaterialPaperTooltipComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialPaperTooltipComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialPaperTooltipComponentNgFactory = const ComponentFactory('material-tooltip-card', viewFactory_MaterialPaperTooltipComponentHost0, import5.MaterialPaperTooltipComponent, _MaterialPaperTooltipComponentMetadata);
final ComponentFactory MaterialPaperTooltipComponentNgFactory = _MaterialPaperTooltipComponentNgFactory;
const _MaterialPaperTooltipComponentMetadata = const [];
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
  _ngRef.registerFactory(
    getTooltipHandle,
    getTooltipHandle,
  );
  _ngRef.registerDependencies(
    getTooltipHandle,
    const [
      const [
        MaterialPaperTooltipComponent,
      ],
    ],
  );

  _ngRef.registerComponent(
    MaterialPaperTooltipComponent,
    MaterialPaperTooltipComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialPaperTooltipComponent,
    (TooltipController p0, ChangeDetectorRef p1) => new MaterialPaperTooltipComponent(p0, p1),
  );
  _ngRef.registerDependencies(
    MaterialPaperTooltipComponent,
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
