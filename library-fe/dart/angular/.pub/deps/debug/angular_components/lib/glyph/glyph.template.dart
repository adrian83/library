// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'glyph.dart';
export 'glyph.dart';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/model/ui/icon.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/model/ui/icon.template.dart' as _ref1;

import 'package:angular_components/glyph/glyph.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/debug/debug_app_view.dart';
import 'glyph.dart' as import3;
import 'dart:html' as import4;
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import7;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import9;
import 'package:angular/angular.dart';

const List<dynamic> styles$GlyphComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_GlyphComponent0 = [null, null];

class ViewGlyphComponent0 extends DebugAppView<import3.GlyphComponent> {
  import4.Element _el_0;
  import4.Text _text_1;
  bool _expr_0;
  var _expr_1;
  static RenderComponentType _renderType;
  ViewGlyphComponent0(AppView<dynamic> parentView, num parentIndex) : super(import7.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckOnce, nodeDebugInfos_GlyphComponent0) {
    rootEl = import4.document.createElement('glyph');
    _renderType ??= import9.appViewUtils.createRenderType('package:angular_components/glyph/glyph.html', ViewEncapsulation.Emulated, styles$GlyphComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import4.HtmlElement parentRenderNode = initViewRoot(rootEl);
    var doc = import4.document;
    _el_0 = createAndAppendDbg(this, doc, 'i', parentRenderNode, 0, 5, 0);
    createAttr(_el_0, 'aria-hidden', 'true');
    _el_0.className = 'glyph-i';
    addShimE(_el_0);
    _text_1 = new import4.Text('');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 7, 22);
    init(const [], const [], [_el_0, _text_1]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import3.GlyphComponent _ctx = ctx;
    final currVal_0 = _ctx.useMaterialIconsExtended;
    if (import9.checkBinding(_expr_0, currVal_0)) {
      updateClass(_el_0, 'material-icons', currVal_0);
      _expr_0 = currVal_0;
    }
    dbg(1, 7, 22);
    final currVal_1 = import9.interpolate0(_ctx.iconName);
    if (import9.checkBinding(_expr_1, currVal_1)) {
      _text_1.text = currVal_1;
      _expr_1 = currVal_1;
    }
  }
}

AppView<import3.GlyphComponent> viewFactory_GlyphComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewGlyphComponent0(parentView, parentIndex);
}

const List<dynamic> styles$GlyphComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_GlyphComponentHost0 = [
  new StaticNodeDebugInfo([import3.GlyphComponent], import3.GlyphComponent, <String, dynamic>{})
];

class _ViewGlyphComponentHost0 extends DebugAppView<dynamic> {
  ViewGlyphComponent0 _compView_0;
  import3.GlyphComponent _GlyphComponent_0_4;
  static RenderComponentType _renderType;
  _ViewGlyphComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import7.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_GlyphComponentHost0) {
    _renderType ??= import9.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$GlyphComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewGlyphComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _GlyphComponent_0_4 = new import3.GlyphComponent(rootEl);
    _compView_0.create(_GlyphComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _GlyphComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import3.GlyphComponent) && (0 == nodeIndex))) {
      return _GlyphComponent_0_4;
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

AppView viewFactory_GlyphComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewGlyphComponentHost0(parentView, parentIndex);
}

const ComponentFactory _GlyphComponentNgFactory = const ComponentFactory('glyph', viewFactory_GlyphComponentHost0, import3.GlyphComponent, _GlyphComponentMetadata);
final ComponentFactory GlyphComponentNgFactory = _GlyphComponentNgFactory;
const _GlyphComponentMetadata = const [];
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;
  _ref0.initReflector();
  _ref1.initReflector();
  _ngRef.registerComponent(
    GlyphComponent,
    GlyphComponentNgFactory,
  );
  _ngRef.registerFactory(
    GlyphComponent,
    (HtmlElement p0) => new GlyphComponent(p0),
  );
  _ngRef.registerDependencies(
    GlyphComponent,
    const [
      const [
        HtmlElement,
      ],
    ],
  );
}
