// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_popup.dart';
export 'material_popup.dart';
import 'dart:async';
import 'dart:html';
import 'dart:math';
import 'package:angular/angular.dart' hide Visibility;
import 'package:angular_components/content/deferred_content_aware.dart';
import 'package:angular_components/laminate/enums/alignment.dart';
import 'package:angular_components/laminate/enums/visibility.dart';
import 'package:angular_components/laminate/overlay/module.dart';
import 'package:angular_components/laminate/overlay/overlay.dart';
import 'package:angular_components/laminate/overlay/zindexer.dart';
import 'package:angular_components/laminate/popup/module.dart';
import 'package:angular_components/laminate/popup/popup.dart';
import 'package:angular_components/mixins/material_dropdown_base.dart';
import 'package:angular_components/model/ui/toggle.dart';
import 'package:angular_components/utils/disposer/disposer.dart';
import 'package:angular_components/utils/id_generator/id_generator.dart';
import 'package:meta/meta.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/content/deferred_content_aware.template.dart' as _ref1;
import 'package:angular_components/laminate/enums/alignment.template.dart' as _ref2;
import 'package:angular_components/laminate/enums/visibility.template.dart' as _ref3;
import 'package:angular_components/laminate/overlay/module.template.dart' as _ref4;
import 'package:angular_components/laminate/overlay/overlay.template.dart' as _ref5;
import 'package:angular_components/laminate/overlay/zindexer.template.dart' as _ref6;
import 'package:angular_components/laminate/popup/module.template.dart' as _ref7;
import 'package:angular_components/laminate/popup/popup.template.dart' as _ref8;
import 'package:angular_components/laminate/popup/popup.template.dart' as _ref9;
import 'package:angular_components/mixins/material_dropdown_base.template.dart' as _ref10;
import 'package:angular_components/model/ui/toggle.template.dart' as _ref11;
import 'package:angular_components/utils/disposer/disposer.template.dart' as _ref12;
import 'package:angular_components/utils/id_generator/id_generator.template.dart' as _ref13;

import 'package:angular_components/material_popup/material_popup.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/debug/debug_app_view.dart';
import 'material_popup.dart' as import4;
import 'package:angular/src/core/linker/query_list.dart' as import5;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import9;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'dart:html' as import11;
import 'package:angular/src/core/linker/app_view_utils.dart' as import12;
import 'package:angular/angular.dart';
import '../content/deferred_content_aware.dart' as import14;
import '../mixins/material_dropdown_base.dart' as import15;
import '../src/laminate/popup/popup_hierarchy.dart' as import16;
import '../src/laminate/popup/popup_ref.dart' as import17;
import 'package:angular/src/core/zone/ng_zone.dart' as import18;
import '../src/laminate/overlay/overlay_service.dart' as import19;
import '../laminate/overlay/zindexer.dart' as import20;
import '../src/laminate/popup/popup_size_provider.dart' as import21;
import 'package:angular/src/core/linker/element_ref.dart';

const List<dynamic> styles$MaterialPopupComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialPopupComponent0 = [
  null,
  new StaticNodeDebugInfo([TemplateRef], null, <String, dynamic>{'template': TemplateRef}),
  null
];

class ViewMaterialPopupComponent0 extends DebugAppView<import4.MaterialPopupComponent> {
  import5.QueryList _viewQuery_template_0;
  ViewContainer _appEl_1;
  TemplateRef _TemplateRef_1_5;
  var _expr_0;
  static RenderComponentType _renderType;
  ViewMaterialPopupComponent0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialPopupComponent0) {
    rootEl = import11.document.createElement('material-popup');
    _renderType ??= import12.appViewUtils.createRenderType('package:angular_components/material_popup/material_popup.html', ViewEncapsulation.Emulated, styles$MaterialPopupComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import11.HtmlElement parentRenderNode = initViewRoot(rootEl);
    _viewQuery_template_0 = new import5.QueryList();
    import11.Text _text_0 = new import11.Text('\n');
    parentRenderNode.append(_text_0);
    dbgElm(this, _text_0, 0, 4, 3);
    var _anchor_1 = ngAnchor.clone(false);
    parentRenderNode.append(_anchor_1);
    dbgElm(this, _anchor_1, 1, 5, 0);
    _appEl_1 = new ViewContainer(1, null, this, _anchor_1);
    _TemplateRef_1_5 = new TemplateRef(_appEl_1, viewFactory_MaterialPopupComponent1);
    import11.Text _text_2 = new import11.Text('\n');
    parentRenderNode.append(_text_2);
    dbgElm(this, _text_2, 2, 33, 11);
    _viewQuery_template_0.reset([_TemplateRef_1_5]);
    ctx.templateRef = _viewQuery_template_0.first;
    init(const [], const [], [_text_0, _anchor_1, _text_2]);
    return null;
  }

  void detectHostChanges(bool firstCheck) {
    final currVal_0 = ctx.paneId;
    if (import12.checkBinding(_expr_0, currVal_0)) {
      setAttr(rootEl, 'pane-id', currVal_0?.toString());
      _expr_0 = currVal_0;
    }
  }
}

AppView<import4.MaterialPopupComponent> viewFactory_MaterialPopupComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialPopupComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialPopupComponent1 = [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null];

class _ViewMaterialPopupComponent1 extends DebugAppView<import4.MaterialPopupComponent> {
  import11.DivElement _el_1;
  import11.DivElement _el_3;
  import11.DivElement _el_5;
  import11.Element _el_7;
  import11.Element _el_11;
  import11.Element _el_15;
  var _expr_0;
  var _expr_1;
  bool _expr_3;
  bool _expr_4;
  bool _expr_5;
  var _expr_6;
  var _expr_7;
  var _expr_8;
  bool _expr_9;
  var _expr_10;
  var _expr_11;
  _ViewMaterialPopupComponent1(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialPopupComponent1) {
    componentType = ViewMaterialPopupComponent0._renderType;
  }
  @override
  ComponentRef build() {
    import11.Text _text_0 = new import11.Text('\n  ');
    dbgElm(this, _text_0, 0, 5, 20);
    var doc = import11.document;
    _el_1 = doc.createElement('div');
    dbgElm(this, _el_1, 1, 6, 2);
    _el_1.className = 'popup-wrapper mixin';
    addShimC(_el_1);
    import11.Text _text_2 = new import11.Text('\n      ');
    _el_1.append(_text_2);
    dbgElm(this, _text_2, 2, 16, 35);
    _el_3 = createAndAppendDbg(this, doc, 'div', _el_1, 3, 17, 6);
    _el_3.className = 'popup';
    addShimC(_el_3);
    import11.Text _text_4 = new import11.Text('\n          ');
    _el_3.append(_text_4);
    dbgElm(this, _text_4, 4, 19, 43);
    _el_5 = createAndAppendDbg(this, doc, 'div', _el_3, 5, 20, 10);
    _el_5.className = 'material-popup-content content';
    addShimC(_el_5);
    import11.Text _text_6 = new import11.Text('\n              ');
    _el_5.append(_text_6);
    dbgElm(this, _text_6, 6, 20, 54);
    _el_7 = createAndAppendDbg(this, doc, 'header', _el_5, 7, 21, 14);
    addShimE(_el_7);
    import11.Text _text_8 = new import11.Text('\n                  ');
    _el_7.append(_text_8);
    dbgElm(this, _text_8, 8, 21, 22);
    dbg(null, 22, 18);
    project(_el_7, 0);
    import11.Text _text_9 = new import11.Text('\n              ');
    _el_7.append(_text_9);
    dbgElm(this, _text_9, 9, 22, 61);
    import11.Text _text_10 = new import11.Text('\n              ');
    _el_5.append(_text_10);
    dbgElm(this, _text_10, 10, 23, 23);
    _el_11 = createAndAppendDbg(this, doc, 'main', _el_5, 11, 24, 14);
    addShimE(_el_11);
    import11.Text _text_12 = new import11.Text('\n                  ');
    _el_11.append(_text_12);
    dbgElm(this, _text_12, 12, 24, 20);
    dbg(null, 25, 18);
    project(_el_11, 1);
    import11.Text _text_13 = new import11.Text('\n              ');
    _el_11.append(_text_13);
    dbgElm(this, _text_13, 13, 25, 43);
    import11.Text _text_14 = new import11.Text('\n              ');
    _el_5.append(_text_14);
    dbgElm(this, _text_14, 14, 26, 21);
    _el_15 = createAndAppendDbg(this, doc, 'footer', _el_5, 15, 27, 14);
    addShimE(_el_15);
    import11.Text _text_16 = new import11.Text('\n                  ');
    _el_15.append(_text_16);
    dbgElm(this, _text_16, 16, 27, 22);
    dbg(null, 28, 18);
    project(_el_15, 2);
    import11.Text _text_17 = new import11.Text('\n              ');
    _el_15.append(_text_17);
    dbgElm(this, _text_17, 17, 28, 61);
    import11.Text _text_18 = new import11.Text('\n          ');
    _el_5.append(_text_18);
    dbgElm(this, _text_18, 18, 29, 23);
    import11.Text _text_19 = new import11.Text('\n      ');
    _el_3.append(_text_19);
    dbgElm(this, _text_19, 19, 30, 16);
    import11.Text _text_20 = new import11.Text('\n  ');
    _el_1.append(_text_20);
    dbgElm(this, _text_20, 20, 31, 12);
    import11.Text _text_21 = new import11.Text('\n');
    dbgElm(this, _text_21, 21, 32, 8);
    init([_text_0, _el_1, _text_21], const [], [_text_0, _el_1, _text_2, _el_3, _text_4, _el_5, _text_6, _el_7, _text_8, _text_9, _text_10, _el_11, _text_12, _text_13, _text_14, _el_15, _text_16, _text_17, _text_18, _text_19, _text_20, _text_21]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import4.MaterialPopupComponent _ctx = ctx;
    bool firstCheck = (this.cdState == 0);
    if (firstCheck) {
      setAttr(_el_1, 'role', (_ctx.role ?? '')?.toString());
    }
    final currVal_0 = _ctx.z;
    if (import12.checkBinding(_expr_0, currVal_0)) {
      setAttr(_el_1, 'elevation', currVal_0?.toString());
      _expr_0 = currVal_0;
    }
    final currVal_1 = (_ctx.uniqueId ?? '');
    if (import12.checkBinding(_expr_1, currVal_1)) {
      setProp(_el_1, 'id', currVal_1);
      _expr_1 = currVal_1;
    }
    final currVal_3 = _ctx.hasBox;
    if (import12.checkBinding(_expr_3, currVal_3)) {
      updateClass(_el_1, 'shadow', currVal_3);
      _expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.matchMinSourceWidth;
    if (import12.checkBinding(_expr_4, currVal_4)) {
      updateClass(_el_1, 'full-width', currVal_4);
      _expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.inkBackground;
    if (import12.checkBinding(_expr_5, currVal_5)) {
      updateClass(_el_1, 'ink', currVal_5);
      _expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.slide;
    if (import12.checkBinding(_expr_6, currVal_6)) {
      setAttr(_el_1, 'slide', currVal_6?.toString());
      _expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.zIndex;
    if (import12.checkBinding(_expr_7, currVal_7)) {
      setAttr(_el_1, 'z-index', currVal_7?.toString());
      _expr_7 = currVal_7;
    }
    final currVal_8 = _ctx.transformOrigin;
    if (import12.checkBinding(_expr_8, currVal_8)) {
      _el_1.style.setProperty('transform-origin', currVal_8?.toString());
      _expr_8 = currVal_8;
    }
    final currVal_9 = _ctx.showPopup;
    if (import12.checkBinding(_expr_9, currVal_9)) {
      updateClass(_el_1, 'visible', currVal_9);
      _expr_9 = currVal_9;
    }
    final currVal_10 = _ctx.maxHeight;
    if (import12.checkBinding(_expr_10, currVal_10)) {
      _el_3.style.setProperty('max-height', ((currVal_10?.toString() == null) ? null : (currVal_10?.toString() + 'px')));
      _expr_10 = currVal_10;
    }
    final currVal_11 = _ctx.maxWidth;
    if (import12.checkBinding(_expr_11, currVal_11)) {
      _el_3.style.setProperty('max-width', ((currVal_11?.toString() == null) ? null : (currVal_11?.toString() + 'px')));
      _expr_11 = currVal_11;
    }
  }
}

AppView<import4.MaterialPopupComponent> viewFactory_MaterialPopupComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialPopupComponent1(parentView, parentIndex);
}

const List<dynamic> styles$MaterialPopupComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialPopupComponentHost0 = [
  new StaticNodeDebugInfo([import4.MaterialPopupComponent, import14.DeferredContentAware, import15.DropdownHandle, import16.PopupHierarchy, import17.PopupRef], import4.MaterialPopupComponent, <String, dynamic>{})
];

class _ViewMaterialPopupComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialPopupComponent0 _compView_0;
  ViewContainer _appEl_0;
  import4.MaterialPopupComponent _MaterialPopupComponent_0_6;
  dynamic __PopupHierarchy_0_9;
  dynamic __PopupRef_0_10;
  static RenderComponentType _renderType;
  _ViewMaterialPopupComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialPopupComponentHost0) {
    _renderType ??= import12.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialPopupComponentHost);
    setupComponentType(_renderType);
  }
  dynamic get _PopupHierarchy_0_9 {
    dbg(0, 0, 0);
    if ((this.__PopupHierarchy_0_9 == null)) {
      (__PopupHierarchy_0_9 = import4.getHierarchy(this._MaterialPopupComponent_0_6));
    }
    return this.__PopupHierarchy_0_9;
  }

  dynamic get _PopupRef_0_10 {
    dbg(0, 0, 0);
    if ((this.__PopupRef_0_10 == null)) {
      (__PopupRef_0_10 = import4.getResolvedPopupRef(this._MaterialPopupComponent_0_6));
    }
    return this.__PopupRef_0_10;
  }

  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialPopupComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _appEl_0 = new ViewContainer(0, null, this, rootEl);
    _MaterialPopupComponent_0_6 = new import4.MaterialPopupComponent(this.injectorGet(import16.PopupHierarchy, viewData.parentIndex, null), this.injectorGet(import4.MaterialPopupComponent, viewData.parentIndex, null), null, this.injectorGet(import18.NgZone, viewData.parentIndex), this.injectorGet(import19.OverlayService, viewData.parentIndex), this.injectorGet(import20.ZIndexer, viewData.parentIndex), this.injectorGet(const OpaqueToken('defaultPopupPositions'), viewData.parentIndex), this.injectorGet(const OpaqueToken('overlayRepositionLoop'), viewData.parentIndex), this.injectorGet(import21.PopupSizeProvider, viewData.parentIndex, null), _compView_0.ref, _appEl_0, new ElementRef(rootEl));
    _compView_0.create(_MaterialPopupComponent_0_6, projectableNodes);
    init([_appEl_0], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialPopupComponent_0_6);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((((identical(token, import4.MaterialPopupComponent) || identical(token, import14.DeferredContentAware)) || identical(token, import15.DropdownHandle)) && (0 == nodeIndex))) {
      return _MaterialPopupComponent_0_6;
    }
    if ((identical(token, import16.PopupHierarchy) && (0 == nodeIndex))) {
      return _PopupHierarchy_0_9;
    }
    if ((identical(token, import17.PopupRef) && (0 == nodeIndex))) {
      return _PopupRef_0_10;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = (this.cdState == 0);
    _appEl_0.detectChangesInNestedViews();
    _compView_0.detectHostChanges(firstCheck);
    _compView_0.detectChanges();
    if (!import12.AppViewUtils.throwOnChanges) {
      dbg(0, 0, 0);
      if (firstCheck) {
        _MaterialPopupComponent_0_6.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    _appEl_0.destroyNestedViews();
    _compView_0.destroy();
    dbg(0, 0, 0);
    _MaterialPopupComponent_0_6.ngOnDestroy();
  }
}

AppView viewFactory_MaterialPopupComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialPopupComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialPopupComponentNgFactory = const ComponentFactory('material-popup', viewFactory_MaterialPopupComponentHost0, import4.MaterialPopupComponent, _MaterialPopupComponentMetadata);
final ComponentFactory MaterialPopupComponentNgFactory = _MaterialPopupComponentNgFactory;
const _MaterialPopupComponentMetadata = const [];
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
  _ngRef.registerFactory(
    getHierarchy,
    getHierarchy,
  );
  _ngRef.registerDependencies(
    getHierarchy,
    const [
      const [
        MaterialPopupComponent,
      ],
    ],
  );

  _ngRef.registerFactory(
    getResolvedPopupRef,
    getResolvedPopupRef,
  );
  _ngRef.registerDependencies(
    getResolvedPopupRef,
    const [
      const [
        MaterialPopupComponent,
      ],
    ],
  );

  _ngRef.registerComponent(
    MaterialPopupComponent,
    MaterialPopupComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialPopupComponent,
    (PopupHierarchy p0, MaterialPopupComponent p1, String p2, NgZone p3, OverlayService p4, ZIndexer p5, List p6, bool p7, PopupSizeProvider p8, ChangeDetectorRef p9, ViewContainerRef p10, ElementRef p11) => new MaterialPopupComponent(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11),
  );
  _ngRef.registerDependencies(
    MaterialPopupComponent,
    const [
      const [
        PopupHierarchy,
        const _ngRef.SkipSelf(),
        const _ngRef.Optional(),
      ],
      const [
        MaterialPopupComponent,
        const _ngRef.SkipSelf(),
        const _ngRef.Optional(),
      ],
      const [
        String,
      ],
      const [
        NgZone,
      ],
      const [
        OverlayService,
      ],
      const [
        ZIndexer,
      ],
      const [
        const _ngRef.Inject(const _ngRef.OpaqueToken(r'defaultPopupPositions')),
      ],
      const [
        const _ngRef.Inject(const _ngRef.OpaqueToken(r'overlayRepositionLoop')),
      ],
      const [
        PopupSizeProvider,
        const _ngRef.Optional(),
      ],
      const [
        ChangeDetectorRef,
      ],
      const [
        ViewContainerRef,
      ],
      const [
        ElementRef,
      ],
    ],
  );
}
