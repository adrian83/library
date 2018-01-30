// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'scoreboard.dart';
export 'scoreboard.dart';
import 'dart:async';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'package:angular_components/material_icon/material_icon.dart';
import 'package:angular_components/model/selection/selection_model.dart';
import 'package:angular_components/src/scorecard/scorecard_bar.dart';
import 'package:angular_components/utils/browser/dom_service/angular_2.dart';
import 'package:angular_components/utils/color/palette.dart';
import 'package:angular_components/utils/disposer/disposer.dart';
import 'package:intl/intl.dart';
import 'scorecard.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/material_button/material_button.template.dart' as _ref1;
import 'package:angular_components/material_icon/material_icon.template.dart' as _ref2;
import 'package:angular_components/model/selection/selection_model.template.dart' as _ref3;
import 'package:angular_components/src/scorecard/scorecard_bar.template.dart' as _ref4;
import 'package:angular_components/utils/browser/dom_service/angular_2.template.dart' as _ref5;
import 'package:angular_components/utils/color/palette.template.dart' as _ref6;
import 'package:angular_components/utils/disposer/disposer.template.dart' as _ref7;
import 'scorecard.template.dart' as _ref8;

import 'package:angular_components/scorecard/scoreboard.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/common/directives/ng_if.dart';
import '../src/scorecard/scorecard_bar.dart' as import4;
import 'package:angular/src/debug/debug_app_view.dart';
import 'scoreboard.dart' as import6;
import 'package:angular/src/core/linker/query_list.dart' as import7;
import 'dart:html' as import8;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import12;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import14;
import 'package:angular/angular.dart';
import '../utils/browser/dom_service/dom_service.dart' as import16;
import 'package:angular/src/core/linker/element_ref.dart';
import '../theme/dark_theme.dart' as import18;
import '../material_button/material_button.dart' as import19;
import '../button_decorator/button_decorator.dart' as import20;
import '../material_icon/material_icon.dart' as import21;
import '../material_button/material_button.template.dart' as import22;
import '../material_icon/material_icon.template.dart' as import23;

const List<dynamic> styles$ScoreboardComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_ScoreboardComponent0 = [
  null,
  null,
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  new StaticNodeDebugInfo([import4.ScorecardBarDirective], null, <String, dynamic>{}),
  null,
  null,
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  null
];

class ViewScoreboardComponent0 extends DebugAppView<import6.ScoreboardComponent> {
  import7.QueryList _viewQuery_ScorecardBarDirective_0;
  import8.DivElement _el_1;
  ViewContainer _appEl_3;
  NgIf _NgIf_3_7;
  import8.DivElement _el_5;
  import4.ScorecardBarDirective _ScorecardBarDirective_5_4;
  ViewContainer _appEl_9;
  NgIf _NgIf_9_7;
  bool _expr_0;
  bool _expr_1;
  var _expr_3;
  static RenderComponentType _renderType;
  ViewScoreboardComponent0(AppView<dynamic> parentView, num parentIndex) : super(import12.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckOnce, nodeDebugInfos_ScoreboardComponent0) {
    rootEl = import8.document.createElement('acx-scoreboard');
    _renderType ??= import14.appViewUtils.createRenderType('package:angular_components/scorecard/scoreboard.html', ViewEncapsulation.Emulated, styles$ScoreboardComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import8.HtmlElement parentRenderNode = initViewRoot(rootEl);
    _viewQuery_ScorecardBarDirective_0 = new import7.QueryList();
    import8.Text _text_0 = new import8.Text('\n');
    parentRenderNode.append(_text_0);
    dbgElm(this, _text_0, 0, 4, 3);
    var doc = import8.document;
    _el_1 = createAndAppendDbg(this, doc, 'div', parentRenderNode, 1, 5, 0);
    _el_1.className = 'acx-scoreboard';
    addShimC(_el_1);
    import8.Text _text_2 = new import8.Text('\n  ');
    _el_1.append(_text_2);
    dbgElm(this, _text_2, 2, 7, 50);
    var _anchor_3 = ngAnchor.clone(false);
    _el_1.append(_anchor_3);
    dbgElm(this, _anchor_3, 3, 8, 2);
    _appEl_3 = new ViewContainer(3, 1, this, _anchor_3);
    TemplateRef _TemplateRef_3_6 = new TemplateRef(_appEl_3, viewFactory_ScoreboardComponent1);
    _NgIf_3_7 = new NgIf(_appEl_3, _TemplateRef_3_6);
    import8.Text _text_4 = new import8.Text('\n  ');
    _el_1.append(_text_4);
    dbgElm(this, _text_4, 4, 15, 20);
    _el_5 = createAndAppendDbg(this, doc, 'div', _el_1, 5, 16, 2);
    _el_5.className = 'scorecard-bar';
    createAttr(_el_5, 'scorecardBar', '');
    addShimC(_el_5);
    _ScorecardBarDirective_5_4 = new import4.ScorecardBarDirective(parentView.injectorGet(import16.DomService, viewData.parentIndex), new ElementRef(_el_5), parentView.injectorGet(const OpaqueToken('isRtl'), viewData.parentIndex, null));
    import8.Text _text_6 = new import8.Text('\n    ');
    _el_5.append(_text_6);
    dbgElm(this, _text_6, 6, 16, 68);
    dbg(null, 17, 4);
    project(_el_5, 0);
    import8.Text _text_7 = new import8.Text('\n  ');
    _el_5.append(_text_7);
    dbgElm(this, _text_7, 7, 17, 29);
    import8.Text _text_8 = new import8.Text('\n  ');
    _el_1.append(_text_8);
    dbgElm(this, _text_8, 8, 18, 8);
    var _anchor_9 = ngAnchor.clone(false);
    _el_1.append(_anchor_9);
    dbgElm(this, _anchor_9, 9, 19, 2);
    _appEl_9 = new ViewContainer(9, 1, this, _anchor_9);
    TemplateRef _TemplateRef_9_6 = new TemplateRef(_appEl_9, viewFactory_ScoreboardComponent2);
    _NgIf_9_7 = new NgIf(_appEl_9, _TemplateRef_9_6);
    import8.Text _text_10 = new import8.Text('\n');
    _el_1.append(_text_10);
    dbgElm(this, _text_10, 10, 26, 20);
    import8.Text _text_11 = new import8.Text('\n');
    parentRenderNode.append(_text_11);
    dbgElm(this, _text_11, 11, 27, 6);
    _viewQuery_ScorecardBarDirective_0.reset([_ScorecardBarDirective_5_4]);
    ctx.scorecardBar = _viewQuery_ScorecardBarDirective_0.first;
    init(const [], const [], [_text_0, _el_1, _text_2, _anchor_3, _text_4, _el_5, _text_6, _text_7, _text_8, _anchor_9, _text_10, _text_11]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import4.ScorecardBarDirective) && ((5 <= nodeIndex) && (nodeIndex <= 7)))) {
      return _ScorecardBarDirective_5_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import6.ScoreboardComponent _ctx = ctx;
    bool firstCheck = (this.cdState == 0);
    dbg(3, 11, 19);
    _NgIf_3_7.ngIf = _ctx.isScrollable;
    dbg(5, 16, 42);
    final currVal_3 = _ctx.isVertical;
    if (import14.checkBinding(_expr_3, currVal_3)) {
      _ScorecardBarDirective_5_4.isVertical = currVal_3;
      _expr_3 = currVal_3;
    }
    if ((firstCheck && !import14.AppViewUtils.throwOnChanges)) {
      _ScorecardBarDirective_5_4.ngOnInit();
    }
    dbg(9, 22, 19);
    _NgIf_9_7.ngIf = _ctx.isScrollable;
    _appEl_3.detectChangesInNestedViews();
    _appEl_9.detectChangesInNestedViews();
    final bool currVal_0 = !_ctx.isVertical;
    if (import14.checkBinding(_expr_0, currVal_0)) {
      updateClass(_el_1, 'acx-scoreboard-horizontal', currVal_0);
      _expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.isVertical;
    if (import14.checkBinding(_expr_1, currVal_1)) {
      updateClass(_el_1, 'acx-scoreboard-vertical', currVal_1);
      _expr_1 = currVal_1;
    }
    if (!import14.AppViewUtils.throwOnChanges) {
      dbg(5, 16, 2);
      _ScorecardBarDirective_5_4.ngAfterViewChecked();
    }
  }

  @override
  void destroyInternal() {
    _appEl_3.destroyNestedViews();
    _appEl_9.destroyNestedViews();
    dbg(5, 16, 2);
    _ScorecardBarDirective_5_4.ngOnDestroy();
  }
}

AppView<import6.ScoreboardComponent> viewFactory_ScoreboardComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewScoreboardComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_ScoreboardComponent1 = [
  new StaticNodeDebugInfo([import18.AcxDarkTheme, import19.MaterialButtonComponent, import20.ButtonDirective], import19.MaterialButtonComponent, <String, dynamic>{}),
  null,
  new StaticNodeDebugInfo([import21.MaterialIconComponent], import21.MaterialIconComponent, <String, dynamic>{}),
  null,
  null
];

class _ViewScoreboardComponent1 extends DebugAppView<import6.ScoreboardComponent> {
  import8.Element _el_0;
  import22.ViewMaterialButtonComponent0 _compView_0;
  import18.AcxDarkTheme _AcxDarkTheme_0_4;
  import19.MaterialButtonComponent _MaterialButtonComponent_0_5;
  import8.Element _el_2;
  import23.ViewMaterialIconComponent0 _compView_2;
  import21.MaterialIconComponent _MaterialIconComponent_2_4;
  bool _expr_0;
  var _expr_1;
  var _expr_2;
  _ViewScoreboardComponent1(AppView<dynamic> parentView, num parentIndex) : super(import12.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_ScoreboardComponent1) {
    componentType = ViewScoreboardComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import22.ViewMaterialButtonComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 8, 2);
    _el_0.className = 'scroll-button scroll-back-button';
    addShimC(_el_0);
    _AcxDarkTheme_0_4 = new import18.AcxDarkTheme(parentView.parentView.injectorGet(const OpaqueToken('acxDarkTheme'), parentView.viewData.parentIndex, null));
    _MaterialButtonComponent_0_5 = new import19.MaterialButtonComponent(_el_0, _AcxDarkTheme_0_4, _compView_0.ref);
    import8.Text _text_1 = new import8.Text('\n    ');
    dbgElm(this, _text_1, 1, 11, 40);
    _compView_2 = new import23.ViewMaterialIconComponent0(this, 2);
    _el_2 = _compView_2.rootEl;
    dbgElm(this, _el_2, 2, 12, 4);
    addShimC(_el_2);
    _MaterialIconComponent_2_4 = new import21.MaterialIconComponent(_el_2);
    import8.Text _text_3 = new import8.Text('\n    ');
    dbgElm(this, _text_3, 3, 13, 62);
    _compView_2.create(_MaterialIconComponent_2_4, []);
    import8.Text _text_4 = new import8.Text('\n  ');
    dbgElm(this, _text_4, 4, 14, 20);
    _compView_0.create(_MaterialButtonComponent_0_5, [
      [_text_1, _el_2, _text_4]
    ]);
    final subscription_0 = _MaterialButtonComponent_0_5.trigger.listen(eventHandler0(ctx.scrollBack));
    init([_el_0], [subscription_0], [_el_0, _text_1, _el_2, _text_3, _text_4]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import21.MaterialIconComponent) && ((2 <= nodeIndex) && (nodeIndex <= 3)))) {
      return _MaterialIconComponent_2_4;
    }
    if ((identical(token, import18.AcxDarkTheme) && ((0 <= nodeIndex) && (nodeIndex <= 4)))) {
      return _AcxDarkTheme_0_4;
    }
    if (((identical(token, import19.MaterialButtonComponent) || identical(token, import20.ButtonDirective)) && ((0 <= nodeIndex) && (nodeIndex <= 4)))) {
      return _MaterialButtonComponent_0_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import6.ScoreboardComponent _ctx = ctx;
    bool changed = true;
    bool firstCheck = (this.cdState == 0);
    changed = false;
    if (changed) {
      _compView_0.markAsCheckOnce();
    }
    changed = false;
    dbg(2, 12, 19);
    final currVal_2 = _ctx.backIconType;
    if (import14.checkBinding(_expr_2, currVal_2)) {
      _MaterialIconComponent_2_4.icon = currVal_2;
      changed = true;
      _expr_2 = currVal_2;
    }
    if (changed) {
      _compView_2.markAsCheckOnce();
    }
    final currVal_0 = _ctx.atScorecardBarStart;
    if (import14.checkBinding(_expr_0, currVal_0)) {
      updateElemClass(_el_0, 'hide', currVal_0);
      _expr_0 = currVal_0;
    }
    _compView_0.detectHostChanges(firstCheck);
    final currVal_1 = _ctx.scrollScorecardBarBack;
    if (import14.checkBinding(_expr_1, currVal_1)) {
      setAttr(_el_2, 'aria-label', currVal_1?.toString());
      _expr_1 = currVal_1;
    }
    _compView_0.detectChanges();
    _compView_2.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
    _compView_2.destroy();
  }
}

AppView<import6.ScoreboardComponent> viewFactory_ScoreboardComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewScoreboardComponent1(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_ScoreboardComponent2 = [
  new StaticNodeDebugInfo([import18.AcxDarkTheme, import19.MaterialButtonComponent, import20.ButtonDirective], import19.MaterialButtonComponent, <String, dynamic>{}),
  null,
  new StaticNodeDebugInfo([import21.MaterialIconComponent], import21.MaterialIconComponent, <String, dynamic>{}),
  null,
  null
];

class _ViewScoreboardComponent2 extends DebugAppView<import6.ScoreboardComponent> {
  import8.Element _el_0;
  import22.ViewMaterialButtonComponent0 _compView_0;
  import18.AcxDarkTheme _AcxDarkTheme_0_4;
  import19.MaterialButtonComponent _MaterialButtonComponent_0_5;
  import8.Element _el_2;
  import23.ViewMaterialIconComponent0 _compView_2;
  import21.MaterialIconComponent _MaterialIconComponent_2_4;
  bool _expr_0;
  var _expr_1;
  var _expr_2;
  _ViewScoreboardComponent2(AppView<dynamic> parentView, num parentIndex) : super(import12.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_ScoreboardComponent2) {
    componentType = ViewScoreboardComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import22.ViewMaterialButtonComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 19, 2);
    _el_0.className = 'scroll-button scroll-forward-button';
    addShimC(_el_0);
    _AcxDarkTheme_0_4 = new import18.AcxDarkTheme(parentView.parentView.injectorGet(const OpaqueToken('acxDarkTheme'), parentView.viewData.parentIndex, null));
    _MaterialButtonComponent_0_5 = new import19.MaterialButtonComponent(_el_0, _AcxDarkTheme_0_4, _compView_0.ref);
    import8.Text _text_1 = new import8.Text('\n    ');
    dbgElm(this, _text_1, 1, 22, 40);
    _compView_2 = new import23.ViewMaterialIconComponent0(this, 2);
    _el_2 = _compView_2.rootEl;
    dbgElm(this, _el_2, 2, 23, 4);
    addShimC(_el_2);
    _MaterialIconComponent_2_4 = new import21.MaterialIconComponent(_el_2);
    import8.Text _text_3 = new import8.Text('\n    ');
    dbgElm(this, _text_3, 3, 24, 65);
    _compView_2.create(_MaterialIconComponent_2_4, []);
    import8.Text _text_4 = new import8.Text('\n  ');
    dbgElm(this, _text_4, 4, 25, 20);
    _compView_0.create(_MaterialButtonComponent_0_5, [
      [_text_1, _el_2, _text_4]
    ]);
    final subscription_0 = _MaterialButtonComponent_0_5.trigger.listen(eventHandler0(ctx.scrollForward));
    init([_el_0], [subscription_0], [_el_0, _text_1, _el_2, _text_3, _text_4]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import21.MaterialIconComponent) && ((2 <= nodeIndex) && (nodeIndex <= 3)))) {
      return _MaterialIconComponent_2_4;
    }
    if ((identical(token, import18.AcxDarkTheme) && ((0 <= nodeIndex) && (nodeIndex <= 4)))) {
      return _AcxDarkTheme_0_4;
    }
    if (((identical(token, import19.MaterialButtonComponent) || identical(token, import20.ButtonDirective)) && ((0 <= nodeIndex) && (nodeIndex <= 4)))) {
      return _MaterialButtonComponent_0_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import6.ScoreboardComponent _ctx = ctx;
    bool changed = true;
    bool firstCheck = (this.cdState == 0);
    changed = false;
    if (changed) {
      _compView_0.markAsCheckOnce();
    }
    changed = false;
    dbg(2, 23, 19);
    final currVal_2 = _ctx.forwardIconType;
    if (import14.checkBinding(_expr_2, currVal_2)) {
      _MaterialIconComponent_2_4.icon = currVal_2;
      changed = true;
      _expr_2 = currVal_2;
    }
    if (changed) {
      _compView_2.markAsCheckOnce();
    }
    final currVal_0 = _ctx.atScorecardBarEnd;
    if (import14.checkBinding(_expr_0, currVal_0)) {
      updateElemClass(_el_0, 'hide', currVal_0);
      _expr_0 = currVal_0;
    }
    _compView_0.detectHostChanges(firstCheck);
    final currVal_1 = _ctx.scrollScorecardBarForward;
    if (import14.checkBinding(_expr_1, currVal_1)) {
      setAttr(_el_2, 'aria-label', currVal_1?.toString());
      _expr_1 = currVal_1;
    }
    _compView_0.detectChanges();
    _compView_2.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
    _compView_2.destroy();
  }
}

AppView<import6.ScoreboardComponent> viewFactory_ScoreboardComponent2(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewScoreboardComponent2(parentView, parentIndex);
}

const List<dynamic> styles$ScoreboardComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_ScoreboardComponentHost0 = [
  new StaticNodeDebugInfo([import6.ScoreboardComponent], import6.ScoreboardComponent, <String, dynamic>{})
];

class _ViewScoreboardComponentHost0 extends DebugAppView<dynamic> {
  ViewScoreboardComponent0 _compView_0;
  import6.ScoreboardComponent _ScoreboardComponent_0_4;
  import7.QueryList _query_ScorecardComponent_0_0;
  static RenderComponentType _renderType;
  _ViewScoreboardComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import12.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_ScoreboardComponentHost0) {
    _renderType ??= import14.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$ScoreboardComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewScoreboardComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _ScoreboardComponent_0_4 = new import6.ScoreboardComponent(null, this.injectorGet(import16.DomService, viewData.parentIndex), _compView_0.ref);
    _query_ScorecardComponent_0_0 = new import7.QueryList();
    _compView_0.create(_ScoreboardComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _ScoreboardComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import6.ScoreboardComponent) && (0 == nodeIndex))) {
      return _ScoreboardComponent_0_4;
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
    if ((firstCheck && !import14.AppViewUtils.throwOnChanges)) {
      _ScoreboardComponent_0_4.ngOnInit();
    }
    if (!import14.AppViewUtils.throwOnChanges) {
      if (_query_ScorecardComponent_0_0.dirty) {
        _query_ScorecardComponent_0_0.reset([]);
        _ScoreboardComponent_0_4.scoreCards = _query_ScorecardComponent_0_0;
        _query_ScorecardComponent_0_0.notifyOnChanges();
      }
    }
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
    dbg(0, 0, 0);
    _ScoreboardComponent_0_4.ngOnDestroy();
  }
}

AppView viewFactory_ScoreboardComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewScoreboardComponentHost0(parentView, parentIndex);
}

const ComponentFactory _ScoreboardComponentNgFactory = const ComponentFactory('acx-scoreboard', viewFactory_ScoreboardComponentHost0, import6.ScoreboardComponent, _ScoreboardComponentMetadata);
final ComponentFactory ScoreboardComponentNgFactory = _ScoreboardComponentNgFactory;
const _ScoreboardComponentMetadata = const [];
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
  _ref6.initReflector();
  _ref7.initReflector();
  _ref8.initReflector();
  _ngRef.registerComponent(
    ScoreboardComponent,
    ScoreboardComponentNgFactory,
  );
  _ngRef.registerFactory(
    ScoreboardComponent,
    (String p0, DomService p1, ChangeDetectorRef p2) => new ScoreboardComponent(p0, p1, p2),
  );
  _ngRef.registerDependencies(
    ScoreboardComponent,
    const [
      const [
        String,
      ],
      const [
        DomService,
      ],
      const [
        ChangeDetectorRef,
      ],
    ],
  );
}
