// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_temporary_drawer.dart';
export 'material_temporary_drawer.dart';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/content/deferred_content_aware.dart';
import 'material_drawer_base.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'material_drawer_base.template.dart' as _ref0;
import 'package:angular/angular.template.dart' as _ref1;
import 'package:angular_components/content/deferred_content_aware.template.dart' as _ref2;

import 'package:angular_components/app_layout/material_temporary_drawer.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/debug/debug_app_view.dart';
import 'material_temporary_drawer.dart' as import3;
import 'dart:html' as import4;
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import7;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import9;
import 'package:angular/angular.dart';
import '../content/deferred_content_aware.dart' as import11;

const List<dynamic> styles$MaterialTemporaryDrawerComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTemporaryDrawerComponent0 = [null];

class ViewMaterialTemporaryDrawerComponent0 extends DebugAppView<import3.MaterialTemporaryDrawerComponent> {
  import4.DivElement _el_0;
  bool _expr_0;
  bool _expr_1;
  static RenderComponentType _renderType;
  ViewMaterialTemporaryDrawerComponent0(AppView<dynamic> parentView, num parentIndex) : super(import7.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckOnce, nodeDebugInfos_MaterialTemporaryDrawerComponent0) {
    rootEl = import4.document.createElement('material-drawer');
    _renderType ??= import9.appViewUtils.createRenderType('package:angular_components/app_layout/material_temporary_drawer.html', ViewEncapsulation.Emulated, styles$MaterialTemporaryDrawerComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import3.MaterialTemporaryDrawerComponent _ctx = ctx;
    final import4.HtmlElement parentRenderNode = initViewRoot(rootEl);
    var doc = import4.document;
    _el_0 = createAndAppendDbg(this, doc, 'div', parentRenderNode, 0, 5, 0);
    _el_0.className = 'drawer-content';
    addShimC(_el_0);
    dbg(null, 6, 2);
    project(_el_0, 0);
    _el_0.addEventListener('click', eventHandler1(_handle_click_0_0));
    init(const [], const [], [_el_0]);
    rootEl.addEventListener('click', eventHandler0(_ctx.toggle));
    return null;
  }

  void _handle_click_0_0($event) {
    dbg(0, 5, 28);
    $event.stopPropagation();
  }

  void detectHostChanges(bool firstCheck) {
    final bool currVal_0 = !ctx.visible;
    if (import9.checkBinding(_expr_0, currVal_0)) {
      updateElemClass(rootEl, 'mat-drawer-collapsed', currVal_0);
      _expr_0 = currVal_0;
    }
    final currVal_1 = ctx.visible;
    if (import9.checkBinding(_expr_1, currVal_1)) {
      updateElemClass(rootEl, 'mat-drawer-expanded', currVal_1);
      _expr_1 = currVal_1;
    }
  }
}

AppView<import3.MaterialTemporaryDrawerComponent> viewFactory_MaterialTemporaryDrawerComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialTemporaryDrawerComponent0(parentView, parentIndex);
}

const List<dynamic> styles$MaterialTemporaryDrawerComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTemporaryDrawerComponentHost0 = [
  new StaticNodeDebugInfo([import3.MaterialTemporaryDrawerComponent, import11.DeferredContentAware], import3.MaterialTemporaryDrawerComponent, <String, dynamic>{})
];

class _ViewMaterialTemporaryDrawerComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialTemporaryDrawerComponent0 _compView_0;
  import3.MaterialTemporaryDrawerComponent _MaterialTemporaryDrawerComponent_0_4;
  static RenderComponentType _renderType;
  _ViewMaterialTemporaryDrawerComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import7.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTemporaryDrawerComponentHost0) {
    _renderType ??= import9.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialTemporaryDrawerComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialTemporaryDrawerComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    createAttr(rootEl, 'temporary', '');
    _MaterialTemporaryDrawerComponent_0_4 = new import3.MaterialTemporaryDrawerComponent(rootEl);
    _compView_0.create(_MaterialTemporaryDrawerComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialTemporaryDrawerComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((identical(token, import3.MaterialTemporaryDrawerComponent) || identical(token, import11.DeferredContentAware)) && (0 == nodeIndex))) {
      return _MaterialTemporaryDrawerComponent_0_4;
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
    if ((firstCheck && !import9.AppViewUtils.throwOnChanges)) {
      _MaterialTemporaryDrawerComponent_0_4.ngOnInit();
    }
    _compView_0.detectHostChanges(firstCheck);
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
  }
}

AppView viewFactory_MaterialTemporaryDrawerComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTemporaryDrawerComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialTemporaryDrawerComponentNgFactory = const ComponentFactory('material-drawer[temporary]', viewFactory_MaterialTemporaryDrawerComponentHost0, import3.MaterialTemporaryDrawerComponent, _MaterialTemporaryDrawerComponentMetadata);
final ComponentFactory MaterialTemporaryDrawerComponentNgFactory = _MaterialTemporaryDrawerComponentNgFactory;
const _MaterialTemporaryDrawerComponentMetadata = const [];
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
    MaterialTemporaryDrawerComponent,
    MaterialTemporaryDrawerComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialTemporaryDrawerComponent,
    (HtmlElement p0) => new MaterialTemporaryDrawerComponent(p0),
  );
  _ngRef.registerDependencies(
    MaterialTemporaryDrawerComponent,
    const [
      const [
        HtmlElement,
      ],
    ],
  );
}
