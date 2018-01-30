// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_list_item.dart';
export 'material_list_item.dart';
import 'dart:html' as dom;
import 'package:angular/angular.dart';
import 'package:angular_components/button_decorator/button_decorator.dart';
import 'package:angular_components/mixins/material_dropdown_base.dart';
import 'package:angular_components/model/a11y/active_item_mixin.dart';
import 'package:angular_components/utils/browser/dom_service/dom_service.dart';
import 'package:angular_components/utils/disposer/disposer.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/button_decorator/button_decorator.template.dart' as _ref1;
import 'package:angular_components/mixins/material_dropdown_base.template.dart' as _ref2;
import 'package:angular_components/model/a11y/active_item_mixin.template.dart' as _ref3;
import 'package:angular_components/utils/browser/dom_service/dom_service.template.dart' as _ref4;
import 'package:angular_components/utils/disposer/disposer.template.dart' as _ref5;

import 'package:angular_components/material_list/material_list_item.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/debug/debug_app_view.dart';
import 'material_list_item.dart' as import3;
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import6;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'dart:html' as import8;
import 'package:angular/src/core/linker/app_view_utils.dart' as import9;
import 'package:angular/angular.dart';
import '../utils/browser/dom_service/dom_service.dart' as import11;
import '../mixins/material_dropdown_base.dart' as import12;

const List<dynamic> styles$MaterialListItemComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialListItemComponent0 = [];

class ViewMaterialListItemComponent0 extends DebugAppView<import3.MaterialListItemComponent> {
  var _expr_0;
  var _expr_1;
  bool _expr_2;
  bool _expr_3;
  bool _expr_4;
  static RenderComponentType _renderType;
  ViewMaterialListItemComponent0(AppView<dynamic> parentView, num parentIndex) : super(import6.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckOnce, nodeDebugInfos_MaterialListItemComponent0) {
    rootEl = import8.document.createElement('material-list-item');
    createAttr(rootEl, 'role', 'button');
    this.rootEl.className = 'item';
    _renderType ??= import9.appViewUtils.createRenderType('asset:angular_components/lib/material_list/material_list_item.dart class MaterialListItemComponent - inline template', ViewEncapsulation.Emulated, styles$MaterialListItemComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import3.MaterialListItemComponent _ctx = ctx;
    final import8.HtmlElement parentRenderNode = initViewRoot(rootEl);
    dbg(null, 0, 0);
    project(parentRenderNode, 0);
    init(const [], const [], []);
    rootEl.addEventListener('click', eventHandler1(_ctx.handleClick));
    rootEl.addEventListener('keypress', eventHandler1(_ctx.handleKeyPress));
    rootEl.addEventListener('mouseenter', eventHandler0(_ctx.onMouseEnter));
    rootEl.addEventListener('mouseleave', eventHandler0(_ctx.onMouseLeave));
    return null;
  }

  void detectHostChanges(bool firstCheck) {
    if (firstCheck) {
      if (!identical(ctx.role, null)) {
        setAttr(rootEl, 'role', ctx.role?.toString());
      }
    }
    final currVal_0 = ctx.tabIndex;
    if (import9.checkBinding(_expr_0, currVal_0)) {
      setProp(rootEl, 'tabIndex', currVal_0);
      _expr_0 = currVal_0;
    }
    final currVal_1 = ctx.disabledStr;
    if (import9.checkBinding(_expr_1, currVal_1)) {
      setAttr(rootEl, 'aria-disabled', currVal_1?.toString());
      _expr_1 = currVal_1;
    }
    final currVal_2 = ctx.disabled;
    if (import9.checkBinding(_expr_2, currVal_2)) {
      updateElemClass(rootEl, 'is-disabled', currVal_2);
      _expr_2 = currVal_2;
    }
    final currVal_3 = ctx.active;
    if (import9.checkBinding(_expr_3, currVal_3)) {
      updateElemClass(rootEl, 'active', currVal_3);
      _expr_3 = currVal_3;
    }
    final currVal_4 = ctx.disabled;
    if (import9.checkBinding(_expr_4, currVal_4)) {
      updateElemClass(rootEl, 'disabled', currVal_4);
      _expr_4 = currVal_4;
    }
  }
}

AppView<import3.MaterialListItemComponent> viewFactory_MaterialListItemComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialListItemComponent0(parentView, parentIndex);
}

const List<dynamic> styles$MaterialListItemComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialListItemComponentHost0 = [
  new StaticNodeDebugInfo([import3.MaterialListItemComponent], import3.MaterialListItemComponent, <String, dynamic>{})
];

class _ViewMaterialListItemComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialListItemComponent0 _compView_0;
  import3.MaterialListItemComponent _MaterialListItemComponent_0_4;
  static RenderComponentType _renderType;
  _ViewMaterialListItemComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import6.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialListItemComponentHost0) {
    _renderType ??= import9.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialListItemComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialListItemComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _MaterialListItemComponent_0_4 = new import3.MaterialListItemComponent(rootEl, this.injectorGet(import11.DomService, viewData.parentIndex), this.injectorGet(import12.DropdownHandle, viewData.parentIndex, null), null, null);
    _compView_0.create(_MaterialListItemComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialListItemComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import3.MaterialListItemComponent) && (0 == nodeIndex))) {
      return _MaterialListItemComponent_0_4;
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
    dbg(0, 0, 0);
    _MaterialListItemComponent_0_4.ngOnDestroy();
  }
}

AppView viewFactory_MaterialListItemComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialListItemComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialListItemComponentNgFactory = const ComponentFactory('material-list-item', viewFactory_MaterialListItemComponentHost0, import3.MaterialListItemComponent, _MaterialListItemComponentMetadata);
final ComponentFactory MaterialListItemComponentNgFactory = _MaterialListItemComponentNgFactory;
const _MaterialListItemComponentMetadata = const [];
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
    MaterialListItemComponent,
    MaterialListItemComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialListItemComponent,
    (dom.HtmlElement p0, DomService p1, DropdownHandle p2, String p3, String p4) => new MaterialListItemComponent(p0, p1, p2, p3, p4),
  );
  _ngRef.registerDependencies(
    MaterialListItemComponent,
    const [
      const [
        dom.HtmlElement,
      ],
      const [
        DomService,
      ],
      const [
        DropdownHandle,
        const _ngRef.Optional(),
      ],
      const [
        String,
      ],
      const [
        String,
      ],
    ],
  );
}
