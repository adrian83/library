// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'dynamic_component.dart';
export 'dynamic_component.dart';
import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_components/model/ui/has_renderer.dart';
import 'package:angular_components/utils/async/async.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/model/ui/has_renderer.template.dart' as _ref1;
import 'package:angular_components/utils/async/async.template.dart' as _ref2;

import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/debug/debug_app_view.dart';
import 'dynamic_component.dart' as import3;
import 'package:angular/src/core/linker/query_list.dart' as import4;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import8;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'dart:html' as import10;
import 'package:angular/src/core/linker/app_view_utils.dart' as import11;
import 'package:angular/angular.dart';
import 'package:angular/src/core/linker/dynamic_component_loader.dart' as import13;

const List<dynamic> styles$DynamicComponent = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_DynamicComponent0 = [
  new StaticNodeDebugInfo([TemplateRef], null, <String, dynamic>{'marker': TemplateRef})
];

class ViewDynamicComponent0 extends DebugAppView<import3.DynamicComponent> {
  import4.QueryList _viewQuery_marker_0;
  ViewContainer _appEl_0;
  TemplateRef _TemplateRef_0_6;
  static RenderComponentType _renderType;
  ViewDynamicComponent0(AppView<dynamic> parentView, num parentIndex) : super(import8.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_DynamicComponent0) {
    rootEl = import10.document.createElement('dynamic-component');
    _renderType ??= import11.appViewUtils.createRenderType('asset:angular_components/lib/dynamic_component/dynamic_component.dart class DynamicComponent - inline template', ViewEncapsulation.None, styles$DynamicComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import10.HtmlElement parentRenderNode = initViewRoot(rootEl);
    _viewQuery_marker_0 = new import4.QueryList();
    var _anchor_0 = ngAnchor.clone(false);
    parentRenderNode.append(_anchor_0);
    dbgElm(this, _anchor_0, 0, 0, 0);
    _appEl_0 = new ViewContainer(0, null, this, _anchor_0);
    _TemplateRef_0_6 = new TemplateRef(_appEl_0, viewFactory_DynamicComponent1);
    _viewQuery_marker_0.reset([_appEl_0]);
    ctx.viewContainerRef = _viewQuery_marker_0.first;
    init(const [], const [], [_anchor_0]);
    return null;
  }

  @override
  void detectChangesInternal() {
    _appEl_0.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    _appEl_0.destroyNestedViews();
  }
}

AppView<import3.DynamicComponent> viewFactory_DynamicComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewDynamicComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_DynamicComponent1 = [];

class _ViewDynamicComponent1 extends DebugAppView<import3.DynamicComponent> {
  _ViewDynamicComponent1(AppView<dynamic> parentView, num parentIndex) : super(import8.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_DynamicComponent1) {
    componentType = ViewDynamicComponent0._renderType;
  }
  @override
  ComponentRef build() {
    init(const [], const [], []);
    return null;
  }
}

AppView<import3.DynamicComponent> viewFactory_DynamicComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewDynamicComponent1(parentView, parentIndex);
}

const List<dynamic> styles$DynamicComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_DynamicComponentHost0 = [
  new StaticNodeDebugInfo([import3.DynamicComponent], import3.DynamicComponent, <String, dynamic>{})
];

class _ViewDynamicComponentHost0 extends DebugAppView<dynamic> {
  ViewDynamicComponent0 _compView_0;
  ViewContainer _appEl_0;
  import3.DynamicComponent _DynamicComponent_0_6;
  static RenderComponentType _renderType;
  _ViewDynamicComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import8.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_DynamicComponentHost0) {
    _renderType ??= import11.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$DynamicComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewDynamicComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _appEl_0 = new ViewContainer(0, null, this, rootEl);
    _DynamicComponent_0_6 = new import3.DynamicComponent(this.injectorGet(import13.SlowComponentLoader, viewData.parentIndex), _compView_0.ref, _appEl_0);
    _compView_0.create(_DynamicComponent_0_6, projectableNodes);
    init([_appEl_0], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _DynamicComponent_0_6);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import3.DynamicComponent) && (0 == nodeIndex))) {
      return _DynamicComponent_0_6;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    _appEl_0.detectChangesInNestedViews();
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _appEl_0.destroyNestedViews();
    _compView_0.destroy();
    dbg(0, 0, 0);
    _DynamicComponent_0_6.ngOnDestroy();
  }
}

AppView viewFactory_DynamicComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewDynamicComponentHost0(parentView, parentIndex);
}

const ComponentFactory _DynamicComponentNgFactory = const ComponentFactory('dynamic-component', viewFactory_DynamicComponentHost0, import3.DynamicComponent, _DynamicComponentMetadata);
final ComponentFactory DynamicComponentNgFactory = _DynamicComponentNgFactory;
const _DynamicComponentMetadata = const [];
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ngRef.registerComponent(
    DynamicComponent,
    DynamicComponentNgFactory,
  );
  _ngRef.registerFactory(
    DynamicComponent,
    (SlowComponentLoader p0, ChangeDetectorRef p1, ComponentLoader p2) => new DynamicComponent(p0, p1, p2),
  );
  _ngRef.registerDependencies(
    DynamicComponent,
    const [
      const [
        SlowComponentLoader,
      ],
      const [
        ChangeDetectorRef,
      ],
      const [
        ComponentLoader,
      ],
    ],
  );
}
