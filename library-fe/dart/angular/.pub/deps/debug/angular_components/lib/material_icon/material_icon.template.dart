// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_icon.dart';
export 'material_icon.dart';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/model/ui/icon.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/model/ui/icon.template.dart' as _ref1;

import 'package:angular_components/material_icon/material_icon.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/debug/debug_app_view.dart';
import 'material_icon.dart' as import3;
import 'dart:html' as import4;
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import7;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import9;
import 'package:angular/angular.dart';

const List<dynamic> styles$MaterialIconComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialIconComponent0 = [null, null];

class ViewMaterialIconComponent0 extends DebugAppView<import3.MaterialIconComponent> {
  import4.Element _el_0;
  import4.Text _text_1;
  var _expr_0;
  static RenderComponentType _renderType;
  ViewMaterialIconComponent0(AppView<dynamic> parentView, num parentIndex) : super(import7.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckOnce, nodeDebugInfos_MaterialIconComponent0) {
    rootEl = import4.document.createElement('material-icon');
    _renderType ??= import9.appViewUtils.createRenderType('package:angular_components/material_icon/material_icon.html', ViewEncapsulation.Emulated, styles$MaterialIconComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import4.HtmlElement parentRenderNode = initViewRoot(rootEl);
    var doc = import4.document;
    _el_0 = createAndAppendDbg(this, doc, 'i', parentRenderNode, 0, 5, 0);
    createAttr(_el_0, 'aria-hidden', 'true');
    _el_0.className = 'material-icon-i material-icons';
    addShimE(_el_0);
    _text_1 = new import4.Text('');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 6, 22);
    init(const [], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import3.MaterialIconComponent _ctx = ctx;
    dbg(1, 6, 22);
    final currVal_0 = import9.interpolate0(_ctx.iconName);
    if (import9.checkBinding(_expr_0, currVal_0)) {
      _text_1.text = currVal_0;
      _expr_0 = currVal_0;
    }
  }
}

AppView<import3.MaterialIconComponent> viewFactory_MaterialIconComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialIconComponent0(parentView, parentIndex);
}

const List<dynamic> styles$MaterialIconComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialIconComponentHost0 = [
  new StaticNodeDebugInfo([import3.MaterialIconComponent], import3.MaterialIconComponent, <String, dynamic>{})
];

class _ViewMaterialIconComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialIconComponent0 _compView_0;
  import3.MaterialIconComponent _MaterialIconComponent_0_4;
  static RenderComponentType _renderType;
  _ViewMaterialIconComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import7.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialIconComponentHost0) {
    _renderType ??= import9.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialIconComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialIconComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _MaterialIconComponent_0_4 = new import3.MaterialIconComponent(rootEl);
    _compView_0.create(_MaterialIconComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialIconComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import3.MaterialIconComponent) && (0 == nodeIndex))) {
      return _MaterialIconComponent_0_4;
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

AppView viewFactory_MaterialIconComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialIconComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialIconComponentNgFactory = const ComponentFactory('material-icon', viewFactory_MaterialIconComponentHost0, import3.MaterialIconComponent, _MaterialIconComponentMetadata);
final ComponentFactory MaterialIconComponentNgFactory = _MaterialIconComponentNgFactory;
const _MaterialIconComponentMetadata = const [];
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;
  _ref0.initReflector();
  _ref1.initReflector();
  _ngRef.registerComponent(
    MaterialIconComponent,
    MaterialIconComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialIconComponent,
    (HtmlElement p0) => new MaterialIconComponent(p0),
  );
  _ngRef.registerDependencies(
    MaterialIconComponent,
    const [
      const [
        HtmlElement,
      ],
    ],
  );
}
