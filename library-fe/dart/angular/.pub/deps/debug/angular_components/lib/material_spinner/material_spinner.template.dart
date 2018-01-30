// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_spinner.dart';
export 'material_spinner.dart';
import 'package:angular/angular.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;

import 'package:angular_components/material_spinner/material_spinner.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/debug/debug_app_view.dart';
import 'material_spinner.dart' as import3;
import 'dart:html' as import4;
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import7;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import9;
import 'package:angular/angular.dart';

const List<dynamic> styles$MaterialSpinnerComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialSpinnerComponent0 = [null, null, null, null];

class ViewMaterialSpinnerComponent0 extends DebugAppView<import3.MaterialSpinnerComponent> {
  import4.DivElement _el_0;
  import4.DivElement _el_1;
  import4.DivElement _el_2;
  import4.DivElement _el_3;
  static RenderComponentType _renderType;
  ViewMaterialSpinnerComponent0(AppView<dynamic> parentView, num parentIndex) : super(import7.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckOnce, nodeDebugInfos_MaterialSpinnerComponent0) {
    rootEl = import4.document.createElement('material-spinner');
    _renderType ??= import9.appViewUtils.createRenderType('package:angular_components/material_spinner/material_spinner.html', ViewEncapsulation.Emulated, styles$MaterialSpinnerComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import4.HtmlElement parentRenderNode = initViewRoot(rootEl);
    var doc = import4.document;
    _el_0 = createAndAppendDbg(this, doc, 'div', parentRenderNode, 0, 5, 0);
    _el_0.className = 'spinner';
    addShimC(_el_0);
    _el_1 = createAndAppendDbg(this, doc, 'div', _el_0, 1, 6, 2);
    _el_1.className = 'circle left';
    addShimC(_el_1);
    _el_2 = createAndAppendDbg(this, doc, 'div', _el_0, 2, 7, 2);
    _el_2.className = 'circle right';
    addShimC(_el_2);
    _el_3 = createAndAppendDbg(this, doc, 'div', _el_0, 3, 8, 2);
    _el_3.className = 'circle gap';
    addShimC(_el_3);
    init(const [], const [], [_el_0, _el_1, _el_2, _el_3]);
    return null;
  }
}

AppView<import3.MaterialSpinnerComponent> viewFactory_MaterialSpinnerComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialSpinnerComponent0(parentView, parentIndex);
}

const List<dynamic> styles$MaterialSpinnerComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialSpinnerComponentHost0 = [
  new StaticNodeDebugInfo([import3.MaterialSpinnerComponent], import3.MaterialSpinnerComponent, <String, dynamic>{})
];

class _ViewMaterialSpinnerComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialSpinnerComponent0 _compView_0;
  import3.MaterialSpinnerComponent _MaterialSpinnerComponent_0_4;
  static RenderComponentType _renderType;
  _ViewMaterialSpinnerComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import7.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialSpinnerComponentHost0) {
    _renderType ??= import9.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialSpinnerComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialSpinnerComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _MaterialSpinnerComponent_0_4 = new import3.MaterialSpinnerComponent();
    _compView_0.create(_MaterialSpinnerComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialSpinnerComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import3.MaterialSpinnerComponent) && (0 == nodeIndex))) {
      return _MaterialSpinnerComponent_0_4;
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

AppView viewFactory_MaterialSpinnerComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialSpinnerComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialSpinnerComponentNgFactory = const ComponentFactory('material-spinner', viewFactory_MaterialSpinnerComponentHost0, import3.MaterialSpinnerComponent, _MaterialSpinnerComponentMetadata);
final ComponentFactory MaterialSpinnerComponentNgFactory = _MaterialSpinnerComponentNgFactory;
const _MaterialSpinnerComponentMetadata = const [];
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;
  _ref0.initReflector();
  _ngRef.registerComponent(
    MaterialSpinnerComponent,
    MaterialSpinnerComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialSpinnerComponent,
    () => new MaterialSpinnerComponent(),
  );
}
