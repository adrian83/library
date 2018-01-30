// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'highlighted_value.dart';
export 'highlighted_value.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/highlighted_text/highlighted_text.dart';
import 'package:angular_components/model/ui/has_renderer.dart';
import 'package:angular_components/model/ui/highlight_provider.dart';
import 'package:angular_components/model/ui/highlighted_text_model.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/highlighted_text/highlighted_text.template.dart' as _ref1;
import 'package:angular_components/model/ui/has_renderer.template.dart' as _ref2;
import 'package:angular_components/model/ui/highlight_provider.template.dart' as _ref3;
import 'package:angular_components/model/ui/highlighted_text_model.template.dart' as _ref4;

import 'package:angular_components/highlighted_text/highlighted_text.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/common/directives/ng_for.dart' as import3;
import 'package:angular/src/debug/debug_app_view.dart';
import 'highlighted_value.dart' as import5;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import9;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'dart:html' as import11;
import 'package:angular/src/core/linker/app_view_utils.dart' as import12;
import 'package:angular/angular.dart';
import '../model/ui/highlight_provider.dart' as import14;

const List<dynamic> styles$HighlightedValueComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_HighlightedValueComponent0 = [
  new StaticNodeDebugInfo([TemplateRef, import3.NgFor], null, <String, dynamic>{})
];

class ViewHighlightedValueComponent0 extends DebugAppView<import5.HighlightedValueComponent> {
  ViewContainer _appEl_0;
  import3.NgFor _NgFor_0_7;
  var _expr_0;
  static RenderComponentType _renderType;
  ViewHighlightedValueComponent0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_HighlightedValueComponent0) {
    rootEl = import11.document.createElement('highlight-value');
    _renderType ??= import12.appViewUtils.createRenderType('package:angular_components/highlighted_text/highlighted_text.html', ViewEncapsulation.Emulated, styles$HighlightedValueComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import11.HtmlElement parentRenderNode = initViewRoot(rootEl);
    var _anchor_0 = ngAnchor.clone(false);
    parentRenderNode.append(_anchor_0);
    dbgElm(this, _anchor_0, 0, 5, 0);
    _appEl_0 = new ViewContainer(0, null, this, _anchor_0);
    TemplateRef _TemplateRef_0_6 = new TemplateRef(_appEl_0, viewFactory_HighlightedValueComponent1);
    _NgFor_0_7 = new import3.NgFor(_appEl_0, _TemplateRef_0_6);
    init(const [], const [], [_anchor_0]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import5.HighlightedValueComponent _ctx = ctx;
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

AppView<import5.HighlightedValueComponent> viewFactory_HighlightedValueComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewHighlightedValueComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_HighlightedValueComponent1 = [null, null];

class _ViewHighlightedValueComponent1 extends DebugAppView<import5.HighlightedValueComponent> {
  import11.Element _el_0;
  import11.Text _text_1;
  bool _expr_0;
  var _expr_1;
  _ViewHighlightedValueComponent1(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {'\$implicit': null}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_HighlightedValueComponent1) {
    componentType = ViewHighlightedValueComponent0._renderType;
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

AppView<import5.HighlightedValueComponent> viewFactory_HighlightedValueComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewHighlightedValueComponent1(parentView, parentIndex);
}

const List<dynamic> styles$HighlightedValueComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_HighlightedValueComponentHost0 = [
  new StaticNodeDebugInfo([import5.HighlightedValueComponent], import5.HighlightedValueComponent, <String, dynamic>{})
];

class _ViewHighlightedValueComponentHost0 extends DebugAppView<dynamic> {
  ViewHighlightedValueComponent0 _compView_0;
  import5.HighlightedValueComponent _HighlightedValueComponent_0_4;
  static RenderComponentType _renderType;
  _ViewHighlightedValueComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_HighlightedValueComponentHost0) {
    _renderType ??= import12.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$HighlightedValueComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewHighlightedValueComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _HighlightedValueComponent_0_4 = new import5.HighlightedValueComponent(this.injectorGet(import14.HighlightProvider, viewData.parentIndex));
    _compView_0.create(_HighlightedValueComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _HighlightedValueComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import5.HighlightedValueComponent) && (0 == nodeIndex))) {
      return _HighlightedValueComponent_0_4;
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

AppView viewFactory_HighlightedValueComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewHighlightedValueComponentHost0(parentView, parentIndex);
}

const ComponentFactory _HighlightedValueComponentNgFactory = const ComponentFactory('highlight-value', viewFactory_HighlightedValueComponentHost0, import5.HighlightedValueComponent, _HighlightedValueComponentMetadata);
final ComponentFactory HighlightedValueComponentNgFactory = _HighlightedValueComponentNgFactory;
const _HighlightedValueComponentMetadata = const [];
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
    HighlightedValueComponent,
    HighlightedValueComponentNgFactory,
  );
  _ngRef.registerFactory(
    HighlightedValueComponent,
    (HighlightProvider p0) => new HighlightedValueComponent(p0),
  );
  _ngRef.registerDependencies(
    HighlightedValueComponent,
    const [
      const [
        HighlightProvider,
      ],
    ],
  );
}
