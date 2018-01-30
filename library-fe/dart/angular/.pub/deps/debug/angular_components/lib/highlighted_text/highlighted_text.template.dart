// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'highlighted_text.dart';
export 'highlighted_text.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/model/ui/highlighted_text_model.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/model/ui/highlighted_text_model.template.dart' as _ref1;

import 'package:angular_components/highlighted_text/highlighted_text.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/common/directives/ng_for.dart' as import3;
import 'package:angular/src/debug/debug_app_view.dart';
import 'highlighted_text.dart' as import5;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import9;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'dart:html' as import11;
import 'package:angular/src/core/linker/app_view_utils.dart' as import12;
import 'package:angular/angular.dart';

const List<dynamic> styles$HighlightedTextComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_HighlightedTextComponent0 = [
  new StaticNodeDebugInfo([TemplateRef, import3.NgFor], null, <String, dynamic>{})
];

class ViewHighlightedTextComponent0 extends DebugAppView<import5.HighlightedTextComponent> {
  ViewContainer _appEl_0;
  import3.NgFor _NgFor_0_7;
  var _expr_0;
  static RenderComponentType _renderType;
  ViewHighlightedTextComponent0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckOnce, nodeDebugInfos_HighlightedTextComponent0) {
    rootEl = import11.document.createElement('highlighted-text');
    _renderType ??= import12.appViewUtils.createRenderType('package:angular_components/highlighted_text/highlighted_text.html', ViewEncapsulation.Emulated, styles$HighlightedTextComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import11.HtmlElement parentRenderNode = initViewRoot(rootEl);
    var _anchor_0 = ngAnchor.clone(false);
    parentRenderNode.append(_anchor_0);
    dbgElm(this, _anchor_0, 0, 5, 0);
    _appEl_0 = new ViewContainer(0, null, this, _anchor_0);
    TemplateRef _TemplateRef_0_6 = new TemplateRef(_appEl_0, viewFactory_HighlightedTextComponent1);
    _NgFor_0_7 = new import3.NgFor(_appEl_0, _TemplateRef_0_6);
    init(const [], const [], [_anchor_0]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import5.HighlightedTextComponent _ctx = ctx;
    dbg(0, 6, 6);
    final currVal_0 = _ctx.segments;
    if (import12.checkBinding(_expr_0, currVal_0)) {
      _NgFor_0_7.ngForOf = currVal_0;
      _expr_0 = currVal_0;
    }
    if (!import12.AppViewUtils.throwOnChanges) {
      _NgFor_0_7.ngDoCheck();
    }
    _appEl_0.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    _appEl_0.destroyNestedViews();
  }
}

AppView<import5.HighlightedTextComponent> viewFactory_HighlightedTextComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewHighlightedTextComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_HighlightedTextComponent1 = [null, null];

class _ViewHighlightedTextComponent1 extends DebugAppView<import5.HighlightedTextComponent> {
  import11.Element _el_0;
  import11.Text _text_1;
  bool _expr_0;
  var _expr_1;
  _ViewHighlightedTextComponent1(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {'\$implicit': null}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_HighlightedTextComponent1) {
    componentType = ViewHighlightedTextComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import11.document;
    _el_0 = doc.createElement('span');
    dbgElm(this, _el_0, 0, 5, 0);
    _el_0.className = 'text-segment';
    addShimE(_el_0);
    _text_1 = new import11.Text('');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 7, 56);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final currVal_0 = locals['\$implicit'].isHighlighted;
    if (import12.checkBinding(_expr_0, currVal_0)) {
      updateClass(_el_0, 'segment-highlight', currVal_0);
      _expr_0 = currVal_0;
    }
    dbg(1, 7, 56);
    final currVal_1 = import12.interpolate0(locals['\$implicit'].text);
    if (import12.checkBinding(_expr_1, currVal_1)) {
      _text_1.text = currVal_1;
      _expr_1 = currVal_1;
    }
  }
}

AppView<import5.HighlightedTextComponent> viewFactory_HighlightedTextComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewHighlightedTextComponent1(parentView, parentIndex);
}

const List<dynamic> styles$HighlightedTextComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_HighlightedTextComponentHost0 = [
  new StaticNodeDebugInfo([import5.HighlightedTextComponent], import5.HighlightedTextComponent, <String, dynamic>{})
];

class _ViewHighlightedTextComponentHost0 extends DebugAppView<dynamic> {
  ViewHighlightedTextComponent0 _compView_0;
  import5.HighlightedTextComponent _HighlightedTextComponent_0_4;
  static RenderComponentType _renderType;
  _ViewHighlightedTextComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_HighlightedTextComponentHost0) {
    _renderType ??= import12.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$HighlightedTextComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewHighlightedTextComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _HighlightedTextComponent_0_4 = new import5.HighlightedTextComponent();
    _compView_0.create(_HighlightedTextComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _HighlightedTextComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import5.HighlightedTextComponent) && (0 == nodeIndex))) {
      return _HighlightedTextComponent_0_4;
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

AppView viewFactory_HighlightedTextComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewHighlightedTextComponentHost0(parentView, parentIndex);
}

const ComponentFactory _HighlightedTextComponentNgFactory = const ComponentFactory('highlighted-text', viewFactory_HighlightedTextComponentHost0, import5.HighlightedTextComponent, _HighlightedTextComponentMetadata);
final ComponentFactory HighlightedTextComponentNgFactory = _HighlightedTextComponentNgFactory;
const _HighlightedTextComponentMetadata = const [];
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;
  _ref0.initReflector();
  _ref1.initReflector();
  _ngRef.registerComponent(
    HighlightedTextComponent,
    HighlightedTextComponentNgFactory,
  );
  _ngRef.registerFactory(
    HighlightedTextComponent,
    () => new HighlightedTextComponent(),
  );
}
