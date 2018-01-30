// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_progress.dart';
export 'material_progress.dart';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/utils/browser/feature_detector/feature_detector.dart' show supportsAnimationApi;
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/utils/browser/feature_detector/feature_detector.template.dart' as _ref1;

import 'package:angular_components/material_progress/material_progress.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/debug/debug_app_view.dart';
import 'material_progress.dart' as import3;
import 'package:angular/src/core/linker/query_list.dart' as import4;
import 'dart:html' as import5;
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import8;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import10;
import 'package:angular/angular.dart';

const List<dynamic> styles$MaterialProgressComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialProgressComponent0 = [
  null,
  new StaticNodeDebugInfo([], null, <String, dynamic>{'secondary': null}),
  new StaticNodeDebugInfo([], null, <String, dynamic>{'primary': null})
];

class ViewMaterialProgressComponent0 extends DebugAppView<import3.MaterialProgressComponent> {
  import4.QueryList _viewQuery_primary_0;
  import4.QueryList _viewQuery_secondary_1;
  import5.DivElement _el_0;
  import5.DivElement _el_1;
  import5.DivElement _el_2;
  var _expr_0;
  var _expr_1;
  var _expr_2;
  bool _expr_3;
  bool _expr_4;
  var _expr_5;
  var _expr_6;
  static RenderComponentType _renderType;
  ViewMaterialProgressComponent0(AppView<dynamic> parentView, num parentIndex) : super(import8.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckOnce, nodeDebugInfos_MaterialProgressComponent0) {
    rootEl = import5.document.createElement('material-progress');
    _renderType ??= import10.appViewUtils.createRenderType('package:angular_components/material_progress/material_progress.html', ViewEncapsulation.Emulated, styles$MaterialProgressComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import5.HtmlElement parentRenderNode = initViewRoot(rootEl);
    _viewQuery_primary_0 = new import4.QueryList();
    _viewQuery_secondary_1 = new import4.QueryList();
    var doc = import5.document;
    _el_0 = createAndAppendDbg(this, doc, 'div', parentRenderNode, 0, 5, 0);
    _el_0.className = 'progress-container';
    createAttr(_el_0, 'role', 'progressbar');
    addShimC(_el_0);
    _el_1 = createAndAppendDbg(this, doc, 'div', _el_0, 1, 13, 2);
    _el_1.className = 'secondary-progress';
    addShimC(_el_1);
    _el_2 = createAndAppendDbg(this, doc, 'div', _el_0, 2, 16, 2);
    _el_2.className = 'active-progress';
    addShimC(_el_2);
    _viewQuery_primary_0.reset([_el_2]);
    ctx.primary = _viewQuery_primary_0.first;
    _viewQuery_secondary_1.reset([_el_1]);
    ctx.secondary = _viewQuery_secondary_1.first;
    init(const [], const [], [_el_0, _el_1, _el_2]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import3.MaterialProgressComponent _ctx = ctx;
    final currVal_0 = import10.interpolate0(_ctx.min);
    if (import10.checkBinding(_expr_0, currVal_0)) {
      setAttr(_el_0, 'aria-valuemin', currVal_0?.toString());
      _expr_0 = currVal_0;
    }
    final currVal_1 = import10.interpolate0(_ctx.max);
    if (import10.checkBinding(_expr_1, currVal_1)) {
      setAttr(_el_0, 'aria-valuemax', currVal_1?.toString());
      _expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.ariaValue;
    if (import10.checkBinding(_expr_2, currVal_2)) {
      setAttr(_el_0, 'aria-valuenow', currVal_2?.toString());
      _expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.indeterminate;
    if (import10.checkBinding(_expr_3, currVal_3)) {
      updateClass(_el_0, 'indeterminate', currVal_3);
      _expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.useFallbackAnimation;
    if (import10.checkBinding(_expr_4, currVal_4)) {
      updateClass(_el_0, 'fallback', currVal_4);
      _expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.secondaryTransform;
    if (import10.checkBinding(_expr_5, currVal_5)) {
      _el_1.style.setProperty('transform', currVal_5?.toString());
      _expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.primaryTransform;
    if (import10.checkBinding(_expr_6, currVal_6)) {
      _el_2.style.setProperty('transform', currVal_6?.toString());
      _expr_6 = currVal_6;
    }
  }
}

AppView<import3.MaterialProgressComponent> viewFactory_MaterialProgressComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialProgressComponent0(parentView, parentIndex);
}

const List<dynamic> styles$MaterialProgressComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialProgressComponentHost0 = [
  new StaticNodeDebugInfo([import3.MaterialProgressComponent], import3.MaterialProgressComponent, <String, dynamic>{})
];

class _ViewMaterialProgressComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialProgressComponent0 _compView_0;
  import3.MaterialProgressComponent _MaterialProgressComponent_0_4;
  static RenderComponentType _renderType;
  _ViewMaterialProgressComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import8.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialProgressComponentHost0) {
    _renderType ??= import10.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialProgressComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialProgressComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _MaterialProgressComponent_0_4 = new import3.MaterialProgressComponent(rootEl);
    _compView_0.create(_MaterialProgressComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialProgressComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import3.MaterialProgressComponent) && (0 == nodeIndex))) {
      return _MaterialProgressComponent_0_4;
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
    if (!import10.AppViewUtils.throwOnChanges) {
      dbg(0, 0, 0);
      if (firstCheck) {
        _MaterialProgressComponent_0_4.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
    dbg(0, 0, 0);
    _MaterialProgressComponent_0_4.ngOnDestroy();
  }
}

AppView viewFactory_MaterialProgressComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialProgressComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialProgressComponentNgFactory = const ComponentFactory('material-progress', viewFactory_MaterialProgressComponentHost0, import3.MaterialProgressComponent, _MaterialProgressComponentMetadata);
final ComponentFactory MaterialProgressComponentNgFactory = _MaterialProgressComponentNgFactory;
const _MaterialProgressComponentMetadata = const [];
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;
  _ref0.initReflector();
  _ref1.initReflector();
  _ngRef.registerComponent(
    MaterialProgressComponent,
    MaterialProgressComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialProgressComponent,
    (HtmlElement p0) => new MaterialProgressComponent(p0),
  );
  _ngRef.registerDependencies(
    MaterialProgressComponent,
    const [
      const [
        HtmlElement,
      ],
    ],
  );
}
