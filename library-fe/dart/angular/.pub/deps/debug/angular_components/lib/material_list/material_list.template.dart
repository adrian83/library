// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_list.dart';
export 'material_list.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/model/ui/accepts_width.dart';
import 'package:angular_components/utils/angular/properties/properties.dart';
import 'material_list_size.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'material_list_size.template.dart' as _ref0;
import 'material_list_size.template.dart' as _ref1;
import 'package:angular/angular.template.dart' as _ref2;
import 'package:angular_components/model/ui/accepts_width.template.dart' as _ref3;
import 'package:angular_components/utils/angular/properties/properties.template.dart' as _ref4;

import 'package:angular_components/material_list/material_list.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/debug/debug_app_view.dart';
import 'material_list.dart' as import3;
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import6;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'dart:html' as import8;
import 'package:angular/src/core/linker/app_view_utils.dart' as import9;
import 'package:angular/angular.dart';

const List<dynamic> styles$MaterialListComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialListComponent0 = [];

class ViewMaterialListComponent0 extends DebugAppView<import3.MaterialListComponent> {
  var _expr_0;
  static RenderComponentType _renderType;
  ViewMaterialListComponent0(AppView<dynamic> parentView, num parentIndex) : super(import6.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckOnce, nodeDebugInfos_MaterialListComponent0) {
    rootEl = import8.document.createElement('material-list');
    _renderType ??= import9.appViewUtils.createRenderType('asset:angular_components/lib/material_list/material_list.dart class MaterialListComponent - inline template', ViewEncapsulation.Emulated, styles$MaterialListComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import8.HtmlElement parentRenderNode = initViewRoot(rootEl);
    dbg(null, 0, 0);
    project(parentRenderNode, 0);
    init(const [], const [], []);
    return null;
  }

  void detectHostChanges(bool firstCheck) {
    final currVal_0 = ctx.size;
    if (import9.checkBinding(_expr_0, currVal_0)) {
      setAttr(rootEl, 'size', currVal_0?.toString());
      _expr_0 = currVal_0;
    }
  }
}

AppView<import3.MaterialListComponent> viewFactory_MaterialListComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialListComponent0(parentView, parentIndex);
}

const List<dynamic> styles$MaterialListComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialListComponentHost0 = [
  new StaticNodeDebugInfo([import3.MaterialListComponent], import3.MaterialListComponent, <String, dynamic>{})
];

class _ViewMaterialListComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialListComponent0 _compView_0;
  import3.MaterialListComponent _MaterialListComponent_0_4;
  static RenderComponentType _renderType;
  _ViewMaterialListComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import6.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialListComponentHost0) {
    _renderType ??= import9.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialListComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialListComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _MaterialListComponent_0_4 = new import3.MaterialListComponent();
    _compView_0.create(_MaterialListComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialListComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import3.MaterialListComponent) && (0 == nodeIndex))) {
      return _MaterialListComponent_0_4;
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
    _compView_0.detectHostChanges(firstCheck);
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
  }
}

AppView viewFactory_MaterialListComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialListComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialListComponentNgFactory = const ComponentFactory('material-list', viewFactory_MaterialListComponentHost0, import3.MaterialListComponent, _MaterialListComponentMetadata);
final ComponentFactory MaterialListComponentNgFactory = _MaterialListComponentNgFactory;
const _MaterialListComponentMetadata = const [];
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
  _ngRef.registerComponent(
    MaterialListComponent,
    MaterialListComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialListComponent,
    () => new MaterialListComponent(),
  );
}
