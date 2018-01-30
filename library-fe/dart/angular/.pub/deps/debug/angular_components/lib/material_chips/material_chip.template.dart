// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_chip.dart';
export 'material_chip.dart';
import 'dart:async';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/button_decorator/button_decorator.dart';
import 'package:angular_components/focus/focus.dart';
import 'package:angular_components/model/selection/selection_model.dart';
import 'package:angular_components/model/ui/has_renderer.dart';
import 'package:angular_components/utils/id_generator/id_generator.dart';
import 'package:intl/intl.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/button_decorator/button_decorator.template.dart' as _ref1;
import 'package:angular_components/focus/focus.template.dart' as _ref2;
import 'package:angular_components/model/selection/selection_model.template.dart' as _ref3;
import 'package:angular_components/model/ui/has_renderer.template.dart' as _ref4;
import 'package:angular_components/utils/id_generator/id_generator.template.dart' as _ref5;

import 'package:angular_components/material_chips/material_chip.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/common/directives/ng_if.dart';
import 'package:angular/src/debug/debug_app_view.dart';
import 'material_chip.dart' as import5;
import 'package:angular/src/core/linker/view_container.dart';
import 'dart:html' as import7;
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import10;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import12;
import 'package:angular/angular.dart';
import '../button_decorator/button_decorator.dart' as import14;
import '../button_decorator/button_decorator.template.dart' as import15;
import '../model/ui/has_renderer.dart' as import16;

const List<dynamic> styles$MaterialChipComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialChipComponent0 = [
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{})
];

class ViewMaterialChipComponent0 extends DebugAppView<import5.MaterialChipComponent> {
  ViewContainer _appEl_0;
  NgIf _NgIf_0_7;
  import7.DivElement _el_1;
  import7.Text _text_2;
  ViewContainer _appEl_3;
  NgIf _NgIf_3_7;
  var _expr_1;
  var _expr_2;
  static RenderComponentType _renderType;
  ViewMaterialChipComponent0(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckOnce, nodeDebugInfos_MaterialChipComponent0) {
    rootEl = import7.document.createElement('material-chip');
    this.rootEl.className = 'themeable';
    _renderType ??= import12.appViewUtils.createRenderType('package:angular_components/material_chips/material_chip.html', ViewEncapsulation.Emulated, styles$MaterialChipComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import7.HtmlElement parentRenderNode = initViewRoot(rootEl);
    var _anchor_0 = ngAnchor.clone(false);
    parentRenderNode.append(_anchor_0);
    dbgElm(this, _anchor_0, 0, 5, 0);
    _appEl_0 = new ViewContainer(0, null, this, _anchor_0);
    TemplateRef _TemplateRef_0_6 = new TemplateRef(_appEl_0, viewFactory_MaterialChipComponent1);
    _NgIf_0_7 = new NgIf(_appEl_0, _TemplateRef_0_6);
    var doc = import7.document;
    _el_1 = createAndAppendDbg(this, doc, 'div', parentRenderNode, 1, 8, 0);
    _el_1.className = 'content';
    addShimC(_el_1);
    _text_2 = new import7.Text('');
    _el_1.append(_text_2);
    dbgElm(this, _text_2, 2, 8, 33);
    dbg(null, 10, 2);
    project(_el_1, 1);
    var _anchor_3 = ngAnchor.clone(false);
    parentRenderNode.append(_anchor_3);
    dbgElm(this, _anchor_3, 3, 12, 0);
    _appEl_3 = new ViewContainer(3, null, this, _anchor_3);
    TemplateRef _TemplateRef_3_6 = new TemplateRef(_appEl_3, viewFactory_MaterialChipComponent2);
    _NgIf_3_7 = new NgIf(_appEl_3, _TemplateRef_3_6);
    init(const [], const [], [_anchor_0, _el_1, _text_2, _anchor_3]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialChipComponent _ctx = ctx;
    dbg(0, 5, 23);
    _NgIf_0_7.ngIf = _ctx.hasLeftIcon;
    dbg(3, 13, 4);
    _NgIf_3_7.ngIf = _ctx.removable;
    _appEl_0.detectChangesInNestedViews();
    _appEl_3.detectChangesInNestedViews();
    final currVal_1 = _ctx.uuid;
    if (import12.checkBinding(_expr_1, currVal_1)) {
      setProp(_el_1, 'id', currVal_1);
      _expr_1 = currVal_1;
    }
    dbg(2, 8, 33);
    final currVal_2 = import12.interpolate0(_ctx.label);
    if (import12.checkBinding(_expr_2, currVal_2)) {
      _text_2.text = currVal_2;
      _expr_2 = currVal_2;
    }
  }

  @override
  void destroyInternal() {
    _appEl_0.destroyNestedViews();
    _appEl_3.destroyNestedViews();
  }
}

AppView<import5.MaterialChipComponent> viewFactory_MaterialChipComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialChipComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialChipComponent1 = [null];

class _ViewMaterialChipComponent1 extends DebugAppView<import5.MaterialChipComponent> {
  import7.DivElement _el_0;
  _ViewMaterialChipComponent1(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialChipComponent1) {
    componentType = ViewMaterialChipComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import7.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 5, 0);
    _el_0.className = 'left-icon';
    addShimC(_el_0);
    dbg(null, 6, 2);
    project(_el_0, 0);
    init([_el_0], const [], [_el_0]);
    return null;
  }
}

AppView<import5.MaterialChipComponent> viewFactory_MaterialChipComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialChipComponent1(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialChipComponent2 = [
  new StaticNodeDebugInfo([import14.ButtonDirective], null, <String, dynamic>{}),
  null
];

class _ViewMaterialChipComponent2 extends DebugAppView<import5.MaterialChipComponent> {
  import7.Element _el_0;
  import15.ButtonDirectiveNgCd _ButtonDirective_0_4;
  import7.Element _el_1;
  var _expr_0;
  var _expr_1;
  _ViewMaterialChipComponent2(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialChipComponent2) {
    componentType = ViewMaterialChipComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _el_0 = import7.document.createElementNS('http://www.w3.org/2000/svg', 'svg');
    dbgElm(this, _el_0, 0, 12, 0);
    createAttr(_el_0, 'buttonDecorator', '');
    createAttr(_el_0, 'class', 'delete-icon');
    createAttr(_el_0, 'height', '24');
    createAttr(_el_0, 'role', 'button');
    createAttr(_el_0, 'viewBox', '0 0 24 24');
    createAttr(_el_0, 'width', '24');
    createAttr(_el_0, 'xmlns', 'http://www.w3.org/2000/svg');
    addShimE(_el_0);
    _ButtonDirective_0_4 = new import15.ButtonDirectiveNgCd(new import14.ButtonDirective(_el_0));
    _el_1 = import7.document.createElementNS('http://www.w3.org/2000/svg', 'path');
    _el_0.append(_el_1);
    dbgElm(this, _el_1, 1, 19, 6);
    createAttr(_el_1, 'd', 'M12 2c-5.53 0-10 4.47-10 10s4.47 10 10 10 10-4.47 10-10-4.47-10-10-10zm5\n               13.59l-1.41 1.41-3.59-3.59-3.59 3.59-1.41-1.41 3.59-3.59-3.59-3.59 1.41-1.41 3.59\n               3.59 3.59-3.59 1.41 1.41-3.59 3.59 3.59 3.59z');
    addShimE(_el_1);
    _el_0.addEventListener('click', eventHandler1(_ButtonDirective_0_4.instance.handleClick));
    _el_0.addEventListener('keypress', eventHandler1(_ButtonDirective_0_4.instance.handleKeyPress));
    final subscription_0 = _ButtonDirective_0_4.instance.trigger.listen(eventHandler1(ctx.removeChip));
    init([_el_0], [subscription_0], [_el_0, _el_1]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import14.ButtonDirective) && ((0 <= nodeIndex) && (nodeIndex <= 1)))) {
      return _ButtonDirective_0_4.instance;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialChipComponent _ctx = ctx;
    bool firstCheck = (this.cdState == 0);
    final currVal_0 = _ctx.chipDeleteButtonMessage;
    if (import12.checkBinding(_expr_0, currVal_0)) {
      setAttr(_el_0, 'aria-label', currVal_0?.toString());
      _expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.uuid;
    if (import12.checkBinding(_expr_1, currVal_1)) {
      setAttr(_el_0, 'aria-describedby', currVal_1?.toString());
      _expr_1 = currVal_1;
    }
    _ButtonDirective_0_4.detectHostChanges(this, _el_0, firstCheck);
  }
}

AppView<import5.MaterialChipComponent> viewFactory_MaterialChipComponent2(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialChipComponent2(parentView, parentIndex);
}

const List<dynamic> styles$MaterialChipComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialChipComponentHost0 = [
  new StaticNodeDebugInfo([import5.MaterialChipComponent, import16.HasRenderer], import5.MaterialChipComponent, <String, dynamic>{})
];

class _ViewMaterialChipComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialChipComponent0 _compView_0;
  import5.MaterialChipComponent _MaterialChipComponent_0_4;
  static RenderComponentType _renderType;
  _ViewMaterialChipComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialChipComponentHost0) {
    _renderType ??= import12.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialChipComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialChipComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _MaterialChipComponent_0_4 = new import5.MaterialChipComponent(rootEl);
    _compView_0.create(_MaterialChipComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialChipComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((identical(token, import5.MaterialChipComponent) || identical(token, import16.HasRenderer)) && (0 == nodeIndex))) {
      return _MaterialChipComponent_0_4;
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

AppView viewFactory_MaterialChipComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialChipComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialChipComponentNgFactory = const ComponentFactory('material-chip', viewFactory_MaterialChipComponentHost0, import5.MaterialChipComponent, _MaterialChipComponentMetadata);
final ComponentFactory MaterialChipComponentNgFactory = _MaterialChipComponentNgFactory;
const _MaterialChipComponentMetadata = const [];
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
  _ngRef.registerComponent(
    MaterialChipComponent,
    MaterialChipComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialChipComponent,
    (Element p0) => new MaterialChipComponent(p0),
  );
  _ngRef.registerDependencies(
    MaterialChipComponent,
    const [
      const [
        Element,
      ],
    ],
  );
}
