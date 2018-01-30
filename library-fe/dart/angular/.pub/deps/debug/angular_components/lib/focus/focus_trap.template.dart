// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'focus_trap.dart';
export 'focus_trap.dart';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/focus/focus.dart';
import 'package:angular_components/utils/browser/dom_iterator/dom_iterator.dart';
import 'package:angular_components/utils/disposer/disposer.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/focus/focus.template.dart' as _ref1;
import 'package:angular_components/utils/browser/dom_iterator/dom_iterator.template.dart' as _ref2;
import 'package:angular_components/utils/disposer/disposer.template.dart' as _ref3;

import 'package:angular_components/focus/focus_trap.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'focus_trap.dart' as import2;
import 'package:angular/src/debug/debug_app_view.dart';
import 'package:angular/src/core/linker/query_list.dart' as import4;
import 'dart:html' as import5;
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import8;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import10;
import 'package:angular/angular.dart';

const List<dynamic> styles$FocusTrapComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_FocusTrapComponent0 = [
  null,
  new StaticNodeDebugInfo([import2.FocusContentWrapper], null, <String, dynamic>{}),
  null
];

class ViewFocusTrapComponent0 extends DebugAppView<import2.FocusTrapComponent> {
  import4.QueryList _viewQuery_FocusContentWrapper_0;
  import5.DivElement _el_0;
  import5.DivElement _el_1;
  import2.FocusContentWrapper _FocusContentWrapper_1_4;
  import5.DivElement _el_2;
  static RenderComponentType _renderType;
  ViewFocusTrapComponent0(AppView<dynamic> parentView, num parentIndex) : super(import8.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckOnce, nodeDebugInfos_FocusTrapComponent0) {
    rootEl = import5.document.createElement('focus-trap');
    _renderType ??= import10.appViewUtils.createRenderType('package:angular_components/focus/focus_trap.html', ViewEncapsulation.Emulated, styles$FocusTrapComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import5.HtmlElement parentRenderNode = initViewRoot(rootEl);
    _viewQuery_FocusContentWrapper_0 = new import4.QueryList();
    var doc = import5.document;
    _el_0 = createAndAppendDbg(this, doc, 'div', parentRenderNode, 0, 5, 0);
    _el_0.tabIndex = 0;
    addShimC(_el_0);
    _el_1 = createAndAppendDbg(this, doc, 'div', parentRenderNode, 1, 6, 0);
    createAttr(_el_1, 'focusContentWrapper', '');
    createAttr(_el_1, 'style', 'outline: none');
    _el_1.tabIndex = -1;
    addShimC(_el_1);
    _FocusContentWrapper_1_4 = new import2.FocusContentWrapper(_el_1);
    dbg(null, 7, 2);
    project(_el_1, 0);
    _el_2 = createAndAppendDbg(this, doc, 'div', parentRenderNode, 2, 9, 0);
    _el_2.tabIndex = 0;
    addShimC(_el_2);
    _el_0.addEventListener('focus', eventHandler0(ctx.focusLast));
    _el_2.addEventListener('focus', eventHandler0(ctx.focusFirst));
    _viewQuery_FocusContentWrapper_0.reset([_FocusContentWrapper_1_4]);
    ctx.content = _viewQuery_FocusContentWrapper_0.first;
    init(const [], const [], [_el_0, _el_1, _el_2]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import2.FocusContentWrapper) && (1 == nodeIndex))) {
      return _FocusContentWrapper_1_4;
    }
    return notFoundResult;
  }
}

AppView<import2.FocusTrapComponent> viewFactory_FocusTrapComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewFocusTrapComponent0(parentView, parentIndex);
}

const List<dynamic> styles$FocusTrapComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_FocusTrapComponentHost0 = [
  new StaticNodeDebugInfo([import2.FocusTrapComponent], import2.FocusTrapComponent, <String, dynamic>{})
];

class _ViewFocusTrapComponentHost0 extends DebugAppView<dynamic> {
  ViewFocusTrapComponent0 _compView_0;
  import2.FocusTrapComponent _FocusTrapComponent_0_4;
  import4.QueryList _query_AutoFocusDirective_0_0;
  static RenderComponentType _renderType;
  _ViewFocusTrapComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import8.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_FocusTrapComponentHost0) {
    _renderType ??= import10.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$FocusTrapComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewFocusTrapComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _FocusTrapComponent_0_4 = new import2.FocusTrapComponent();
    _query_AutoFocusDirective_0_0 = new import4.QueryList();
    _query_AutoFocusDirective_0_0.reset([]);
    _FocusTrapComponent_0_4.autoFocus = _query_AutoFocusDirective_0_0.first;
    _compView_0.create(_FocusTrapComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _FocusTrapComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import2.FocusTrapComponent) && (0 == nodeIndex))) {
      return _FocusTrapComponent_0_4;
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
    dbg(0, 0, 0);
    _FocusTrapComponent_0_4.ngOnDestroy();
  }
}

AppView viewFactory_FocusTrapComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewFocusTrapComponentHost0(parentView, parentIndex);
}

const ComponentFactory _FocusTrapComponentNgFactory = const ComponentFactory('focus-trap', viewFactory_FocusTrapComponentHost0, import2.FocusTrapComponent, _FocusTrapComponentMetadata);
final ComponentFactory FocusTrapComponentNgFactory = _FocusTrapComponentNgFactory;
const _FocusTrapComponentMetadata = const [];
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
    FocusTrapComponent,
    FocusTrapComponentNgFactory,
  );
  _ngRef.registerFactory(
    FocusTrapComponent,
    () => new FocusTrapComponent(),
  );

  _ngRef.registerFactory(
    FocusContentWrapper,
    (HtmlElement p0) => new FocusContentWrapper(p0),
  );
  _ngRef.registerDependencies(
    FocusContentWrapper,
    const [
      const [
        HtmlElement,
      ],
    ],
  );
}
