// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'reorder_list.dart';
export 'reorder_list.dart';
import 'dart:async';
import 'dart:html';
import 'dart:math';
import 'package:angular/angular.dart';
import 'package:angular_components/reorder_list/reorder_events.dart';
import 'package:angular_components/utils/disposer/disposer.dart';
import 'package:angular_components/utils/keyboard/keyboard.dart';
import 'package:quiver/iterables.dart' show range;
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/reorder_list/reorder_events.template.dart' as _ref1;
import 'package:angular_components/utils/disposer/disposer.template.dart' as _ref2;
import 'package:angular_components/utils/keyboard/keyboard.template.dart' as _ref3;
import 'reorder_events.template.dart' as _ref4;

import 'package:angular_components/reorder_list/reorder_list.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/debug/debug_app_view.dart';
import 'reorder_list.dart' as import3;
import 'package:angular/src/core/linker/query_list.dart' as import4;
import 'dart:html' as import5;
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import8;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import10;
import 'package:angular/angular.dart';
import 'package:angular/src/core/linker/element_ref.dart';
import 'package:angular/src/core/zone/ng_zone.dart' as import13;

const List<dynamic> styles$ReorderListComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_ReorderListComponent0 = [
  new StaticNodeDebugInfo([], null, <String, dynamic>{'placeholder': null})
];

class ViewReorderListComponent0 extends DebugAppView<import3.ReorderListComponent> {
  import4.QueryList _viewQuery_placeholder_0;
  import5.DivElement _el_0;
  bool _expr_0;
  bool _expr_1;
  bool _expr_2;
  static RenderComponentType _renderType;
  ViewReorderListComponent0(AppView<dynamic> parentView, num parentIndex) : super(import8.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_ReorderListComponent0) {
    rootEl = import5.document.createElement('reorder-list');
    createAttr(rootEl, 'role', 'list');
    this.rootEl.className = 'themeable';
    _renderType ??= import10.appViewUtils.createRenderType('package:angular_components/reorder_list/reorder_list.html', ViewEncapsulation.Emulated, styles$ReorderListComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import5.HtmlElement parentRenderNode = initViewRoot(rootEl);
    _viewQuery_placeholder_0 = new import4.QueryList();
    dbg(null, 5, 0);
    project(parentRenderNode, 0);
    var doc = import5.document;
    _el_0 = createAndAppendDbg(this, doc, 'div', parentRenderNode, 0, 6, 0);
    _el_0.className = 'placeholder';
    addShimC(_el_0);
    dbg(null, 7, 2);
    project(_el_0, 1);
    _viewQuery_placeholder_0.reset([new ElementRef(_el_0)]);
    ctx.placeholder = _viewQuery_placeholder_0.first;
    init(const [], const [], [_el_0]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import3.ReorderListComponent _ctx = ctx;
    final bool currVal_0 = !_ctx.showPlaceholder;
    if (import10.checkBinding(_expr_0, currVal_0)) {
      updateClass(_el_0, 'hidden', currVal_0);
      _expr_0 = currVal_0;
    }
  }

  void detectHostChanges(bool firstCheck) {
    final currVal_1 = ctx.verticalItems;
    if (import10.checkBinding(_expr_1, currVal_1)) {
      updateElemClass(rootEl, 'vertical', currVal_1);
      _expr_1 = currVal_1;
    }
    final currVal_2 = ctx.multiSelect;
    if (import10.checkBinding(_expr_2, currVal_2)) {
      updateElemClass(rootEl, 'multiselect', currVal_2);
      _expr_2 = currVal_2;
    }
  }
}

AppView<import3.ReorderListComponent> viewFactory_ReorderListComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewReorderListComponent0(parentView, parentIndex);
}

const List<dynamic> styles$ReorderListComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_ReorderListComponentHost0 = [
  new StaticNodeDebugInfo([import3.ReorderListComponent], import3.ReorderListComponent, <String, dynamic>{})
];

class _ViewReorderListComponentHost0 extends DebugAppView<dynamic> {
  ViewReorderListComponent0 _compView_0;
  import3.ReorderListComponent _ReorderListComponent_0_4;
  import4.QueryList _query_ReorderItemDirective_0_0;
  static RenderComponentType _renderType;
  _ViewReorderListComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import8.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_ReorderListComponentHost0) {
    _renderType ??= import10.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$ReorderListComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewReorderListComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _ReorderListComponent_0_4 = new import3.ReorderListComponent(this.injectorGet(import13.NgZone, viewData.parentIndex));
    _query_ReorderItemDirective_0_0 = new import4.QueryList();
    _compView_0.create(_ReorderListComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _ReorderListComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import3.ReorderListComponent) && (0 == nodeIndex))) {
      return _ReorderListComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = (this.cdState == 0);
    if (!import10.AppViewUtils.throwOnChanges) {
      if (_query_ReorderItemDirective_0_0.dirty) {
        _query_ReorderItemDirective_0_0.reset([]);
        _ReorderListComponent_0_4.items = _query_ReorderItemDirective_0_0;
        _query_ReorderItemDirective_0_0.notifyOnChanges();
      }
    }
    _compView_0.detectHostChanges(firstCheck);
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
    dbg(0, 0, 0);
    _ReorderListComponent_0_4.ngOnDestroy();
  }
}

AppView viewFactory_ReorderListComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewReorderListComponentHost0(parentView, parentIndex);
}

const ComponentFactory _ReorderListComponentNgFactory = const ComponentFactory('reorder-list', viewFactory_ReorderListComponentHost0, import3.ReorderListComponent, _ReorderListComponentMetadata);
final ComponentFactory ReorderListComponentNgFactory = _ReorderListComponentNgFactory;
const _ReorderListComponentMetadata = const [];
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
    ReorderListComponent,
    ReorderListComponentNgFactory,
  );
  _ngRef.registerFactory(
    ReorderListComponent,
    (NgZone p0) => new ReorderListComponent(p0),
  );
  _ngRef.registerDependencies(
    ReorderListComponent,
    const [
      const [
        NgZone,
      ],
    ],
  );

  _ngRef.registerFactory(
    ReorderItemDirective,
    (ElementRef p0) => new ReorderItemDirective(p0),
  );
  _ngRef.registerDependencies(
    ReorderItemDirective,
    const [
      const [
        ElementRef,
      ],
    ],
  );
}
