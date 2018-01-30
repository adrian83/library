// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_tab.dart';
export 'material_tab.dart';
import 'dart:async';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/content/deferred_content_aware.dart';
import 'package:angular_components/focus/focus.dart';
import 'package:angular_components/utils/id_generator/id_generator.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/content/deferred_content_aware.template.dart' as _ref1;
import 'package:angular_components/focus/focus.template.dart' as _ref2;
import 'package:angular_components/utils/id_generator/id_generator.template.dart' as _ref3;

import 'package:angular_components/material_tab/material_tab.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/common/directives/ng_if.dart';
import 'package:angular/src/debug/debug_app_view.dart';
import 'material_tab.dart' as import5;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import9;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'dart:html' as import11;
import 'package:angular/src/core/linker/app_view_utils.dart' as import12;
import 'package:angular/angular.dart';
import '../content/deferred_content_aware.dart' as import14;
import '../utils/id_generator/id_generator.dart' as import15;

const List<dynamic> styles$MaterialTabComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTabComponent0 = [
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{})
];

class ViewMaterialTabComponent0 extends DebugAppView<import5.MaterialTabComponent> {
  ViewContainer _appEl_1;
  NgIf _NgIf_1_7;
  var _expr_1;
  var _expr_2;
  bool _expr_3;
  static RenderComponentType _renderType;
  ViewMaterialTabComponent0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTabComponent0) {
    rootEl = import11.document.createElement('material-tab');
    createAttr(rootEl, 'role', 'tabpanel');
    _renderType ??= import12.appViewUtils.createRenderType('asset:angular_components/lib/material_tab/material_tab.dart class MaterialTabComponent - inline template', ViewEncapsulation.Emulated, styles$MaterialTabComponent);
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
    TemplateRef _TemplateRef_1_6 = new TemplateRef(_appEl_1, viewFactory_MaterialTabComponent1);
    _NgIf_1_7 = new NgIf(_appEl_1, _TemplateRef_1_6);
    init(const [], const [], [_text_0, _anchor_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialTabComponent _ctx = ctx;
    dbg(1, 0, 33);
    _NgIf_1_7.ngIf = _ctx.active;
    _appEl_1.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    _appEl_1.destroyNestedViews();
  }

  void detectHostChanges(bool firstCheck) {
    final currVal_1 = ctx.panelId;
    if (import12.checkBinding(_expr_1, currVal_1)) {
      setAttr(rootEl, 'id', currVal_1?.toString());
      _expr_1 = currVal_1;
    }
    final currVal_2 = ctx.tabId;
    if (import12.checkBinding(_expr_2, currVal_2)) {
      setAttr(rootEl, 'aria-labelledby', currVal_2?.toString());
      _expr_2 = currVal_2;
    }
    final currVal_3 = ctx.active;
    if (import12.checkBinding(_expr_3, currVal_3)) {
      updateElemClass(rootEl, 'material-tab', currVal_3);
      _expr_3 = currVal_3;
    }
  }
}

AppView<import5.MaterialTabComponent> viewFactory_MaterialTabComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialTabComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTabComponent1 = [null, null, null];

class _ViewMaterialTabComponent1 extends DebugAppView<import5.MaterialTabComponent> {
  import11.DivElement _el_0;
  _ViewMaterialTabComponent1(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTabComponent1) {
    componentType = ViewMaterialTabComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import11.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 0, 8);
    _el_0.className = 'tab-content';
    addShimC(_el_0);
    import11.Text _text_1 = new import11.Text('\n          ');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 0, 48);
    dbg(null, 1, 10);
    project(_el_0, 0);
    import11.Text _text_2 = new import11.Text('\n        ');
    _el_0.append(_text_2);
    dbgElm(this, _text_2, 2, 1, 35);
    init([_el_0], const [], [_el_0, _text_1, _text_2]);
    return null;
  }
}

AppView<import5.MaterialTabComponent> viewFactory_MaterialTabComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTabComponent1(parentView, parentIndex);
}

const List<dynamic> styles$MaterialTabComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialTabComponentHost0 = [
  new StaticNodeDebugInfo([import5.MaterialTabComponent, import5.Tab, import14.DeferredContentAware], import5.MaterialTabComponent, <String, dynamic>{})
];

class _ViewMaterialTabComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialTabComponent0 _compView_0;
  import5.MaterialTabComponent _MaterialTabComponent_0_4;
  static RenderComponentType _renderType;
  _ViewMaterialTabComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialTabComponentHost0) {
    _renderType ??= import12.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialTabComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialTabComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _MaterialTabComponent_0_4 = new import5.MaterialTabComponent(rootEl, this.injectorGet(import15.IdGenerator, viewData.parentIndex, null));
    _compView_0.create(_MaterialTabComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialTabComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((((identical(token, import5.MaterialTabComponent) || identical(token, import5.Tab)) || identical(token, import14.DeferredContentAware)) && (0 == nodeIndex))) {
      return _MaterialTabComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = (this.cdState == 0);
    _compView_0.detectHostChanges(firstCheck);
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
  }
}

AppView viewFactory_MaterialTabComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialTabComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialTabComponentNgFactory = const ComponentFactory('material-tab', viewFactory_MaterialTabComponentHost0, import5.MaterialTabComponent, _MaterialTabComponentMetadata);
final ComponentFactory MaterialTabComponentNgFactory = _MaterialTabComponentNgFactory;
const _MaterialTabComponentMetadata = const [];
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
    MaterialTabComponent,
    MaterialTabComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialTabComponent,
    (HtmlElement p0, IdGenerator p1) => new MaterialTabComponent(p0, p1),
  );
  _ngRef.registerDependencies(
    MaterialTabComponent,
    const [
      const [
        HtmlElement,
      ],
      const [
        IdGenerator,
        const _ngRef.Optional(),
      ],
    ],
  );
}
