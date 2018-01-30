// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'fixed_material_tab_strip.dart';
export 'fixed_material_tab_strip.dart';
import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_components/annotations/rtl_annotation.dart';
import 'package:angular_components/focus/focus_item.dart';
import 'package:angular_components/focus/focus_list.dart';
import 'tab_button.dart';
import 'tab_change_event.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/annotations/rtl_annotation.template.dart' as _ref1;
import 'package:angular_components/focus/focus_item.template.dart' as _ref2;
import 'package:angular_components/focus/focus_list.template.dart' as _ref3;
import 'tab_button.template.dart' as _ref4;
import 'tab_change_event.template.dart' as _ref5;

import 'package:angular_components/material_tab/fixed_material_tab_strip.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import '../focus/focus_list.dart' as import2;
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/common/directives/ng_for.dart' as import4;
import 'package:angular/src/debug/debug_app_view.dart';
import 'fixed_material_tab_strip.dart' as import6;
import 'dart:html' as import7;
import '../focus/focus_list.template.dart' as import8;
import 'package:angular/src/core/linker/query_list.dart' as import9;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import13;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import15;
import 'package:angular/angular.dart';
import '../src/utils/angular/managed_zone/managed_zone.dart' as import17;
import '../focus/focus_item.dart' as import18;
import 'tab_button.dart' as import19;
import '../focus/focus.dart' as import20;
import 'tab_button.template.dart' as import21;
import '../focus/focus_item.template.dart' as import22;

const List<dynamic> styles$FixedMaterialTabStripComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_FixedMaterialTabStripComponent0 = [
  new StaticNodeDebugInfo([import2.FocusListDirective], null, <String, dynamic>{}),
  null,
  new StaticNodeDebugInfo([TemplateRef, import4.NgFor], null, <String, dynamic>{})
];

class ViewFixedMaterialTabStripComponent0 extends DebugAppView<import6.FixedMaterialTabStripComponent> {
  import7.DivElement _el_0;
  import8.FocusListDirectiveNgCd _FocusListDirective_0_4;
  import9.QueryList _query_FocusableItem_0_0;
  import7.DivElement _el_1;
  ViewContainer _appEl_2;
  import4.NgFor _NgFor_2_7;
  var _expr_0;
  var _expr_1;
  static RenderComponentType _renderType;
  ViewFixedMaterialTabStripComponent0(AppView<dynamic> parentView, num parentIndex) : super(import13.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckOnce, nodeDebugInfos_FixedMaterialTabStripComponent0) {
    rootEl = import7.document.createElement('material-tab-strip');
    this.rootEl.className = 'themeable';
    _renderType ??= import15.appViewUtils.createRenderType('package:angular_components/material_tab/fixed_material_tab_strip.html', ViewEncapsulation.Emulated, styles$FixedMaterialTabStripComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import7.HtmlElement parentRenderNode = initViewRoot(rootEl);
    var doc = import7.document;
    _el_0 = createAndAppendDbg(this, doc, 'div', parentRenderNode, 0, 5, 0);
    _el_0.className = 'navi-bar';
    createAttr(_el_0, 'focusList', '');
    createAttr(_el_0, 'role', 'tablist');
    addShimC(_el_0);
    _FocusListDirective_0_4 = new import8.FocusListDirectiveNgCd(new import2.FocusListDirective(parentView.injectorGet(import17.ManagedZone, viewData.parentIndex), 'tablist'));
    _query_FocusableItem_0_0 = new import9.QueryList();
    _el_1 = createAndAppendDbg(this, doc, 'div', _el_0, 1, 6, 2);
    _el_1.className = 'tab-indicator';
    addShimC(_el_1);
    var _anchor_2 = ngAnchor.clone(false);
    _el_0.append(_anchor_2);
    dbgElm(this, _anchor_2, 2, 7, 2);
    _appEl_2 = new ViewContainer(2, 0, this, _anchor_2);
    TemplateRef _TemplateRef_2_6 = new TemplateRef(_appEl_2, viewFactory_FixedMaterialTabStripComponent1);
    _NgFor_2_7 = new import4.NgFor(_appEl_2, _TemplateRef_2_6);
    init(const [], const [], [_el_0, _el_1, _anchor_2]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import2.FocusListDirective) && ((0 <= nodeIndex) && (nodeIndex <= 2)))) {
      return _FocusListDirective_0_4.instance;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import6.FixedMaterialTabStripComponent _ctx = ctx;
    bool firstCheck = (this.cdState == 0);
    dbg(2, 7, 14);
    final currVal_1 = _ctx.tabLabels;
    if (import15.checkBinding(_expr_1, currVal_1)) {
      _NgFor_2_7.ngForOf = currVal_1;
      _expr_1 = currVal_1;
    }
    if (!import15.AppViewUtils.throwOnChanges) {
      _NgFor_2_7.ngDoCheck();
    }
    _appEl_2.detectChangesInNestedViews();
    if (!import15.AppViewUtils.throwOnChanges) {
      if (_query_FocusableItem_0_0.dirty) {
        _query_FocusableItem_0_0.reset([
          _appEl_2.mapNestedViews(_ViewFixedMaterialTabStripComponent1, (_ViewFixedMaterialTabStripComponent1 nestedView) {
            return [nestedView._FocusableItem_0_6];
          })
        ]);
        _FocusListDirective_0_4.instance.listItems = _query_FocusableItem_0_0;
        _query_FocusableItem_0_0.notifyOnChanges();
      }
    }
    _FocusListDirective_0_4.detectHostChanges(this, _el_0, firstCheck);
    final currVal_0 = _ctx.tabIndicatorTransform;
    if (import15.checkBinding(_expr_0, currVal_0)) {
      _el_1.style.setProperty('transform', currVal_0?.toString());
      _expr_0 = currVal_0;
    }
  }

  @override
  void destroyInternal() {
    _appEl_2.destroyNestedViews();
    dbg(0, 5, 0);
    _FocusListDirective_0_4.instance.ngOnDestroy();
  }
}

AppView<import6.FixedMaterialTabStripComponent> viewFactory_FixedMaterialTabStripComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewFixedMaterialTabStripComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_FixedMaterialTabStripComponent1 = [
  new StaticNodeDebugInfo([import18.FocusItemDirective, import19.TabButtonComponent, import20.FocusableItem], import19.TabButtonComponent, <String, dynamic>{})
];

class _ViewFixedMaterialTabStripComponent1 extends DebugAppView<import6.FixedMaterialTabStripComponent> {
  import7.Element _el_0;
  import21.ViewTabButtonComponent0 _compView_0;
  import22.FocusItemDirectiveNgCd _FocusItemDirective_0_4;
  import19.TabButtonComponent _TabButtonComponent_0_5;
  import18.FocusItemDirective _FocusableItem_0_6;
  var _expr_0;
  var _expr_1;
  String _expr_2;
  bool _expr_3;
  _ViewFixedMaterialTabStripComponent1(AppView<dynamic> parentView, num parentIndex) : super(import13.ViewType.EMBEDDED, {'\$implicit': null, 'index': null}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_FixedMaterialTabStripComponent1) {
    componentType = ViewFixedMaterialTabStripComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import21.ViewTabButtonComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 7, 2);
    _el_0.className = 'tab-button';
    createAttr(_el_0, 'focusItem', '');
    createAttr(_el_0, 'role', 'tab');
    addShimC(_el_0);
    _FocusItemDirective_0_4 = new import22.FocusItemDirectiveNgCd(new import18.FocusItemDirective(_el_0, 'tab'));
    _TabButtonComponent_0_5 = new import19.TabButtonComponent(_el_0);
    _FocusableItem_0_6 = _FocusItemDirective_0_4.instance;
    _compView_0.create(_TabButtonComponent_0_5, []);
    _el_0.addEventListener('keydown', eventHandler1(_FocusItemDirective_0_4.instance.keydown));
    final subscription_0 = _TabButtonComponent_0_5.trigger.listen(eventHandler1(_handle_trigger_0_0));
    init([_el_0], [subscription_0], [_el_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import18.FocusItemDirective) && (0 == nodeIndex))) {
      return _FocusItemDirective_0_4.instance;
    }
    if ((identical(token, import19.TabButtonComponent) && (0 == nodeIndex))) {
      return _TabButtonComponent_0_5;
    }
    if ((identical(token, import20.FocusableItem) && (0 == nodeIndex))) {
      return _FocusableItem_0_6;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import6.FixedMaterialTabStripComponent _ctx = ctx;
    bool firstCheck = (this.cdState == 0);
    dbg(0, 13, 14);
    final currVal_2 = locals['\$implicit'];
    if (import15.checkBinding(_expr_2, currVal_2)) {
      _TabButtonComponent_0_5.label = currVal_2;
      _expr_2 = currVal_2;
    }
    dbg(0, 11, 14);
    final currVal_3 = (_ctx.activeTabIndex == locals['index']);
    if (import15.checkBinding(_expr_3, currVal_3)) {
      _TabButtonComponent_0_5.isActive = currVal_3;
      _expr_3 = currVal_3;
    }
    final currVal_0 = _ctx.tabId(locals['index']);
    if (import15.checkBinding(_expr_0, currVal_0)) {
      setProp(_el_0, 'id', currVal_0);
      _expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.activeStr(locals['index']);
    if (import15.checkBinding(_expr_1, currVal_1)) {
      setAttr(_el_0, 'aria-selected', currVal_1?.toString());
      _expr_1 = currVal_1;
    }
    _FocusItemDirective_0_4.detectHostChanges(_compView_0, _el_0, firstCheck);
    _compView_0.detectHostChanges(firstCheck);
    _compView_0.detectChanges();
  }

  @override
  void dirtyParentQueriesInternal() {
    (parentView as ViewFixedMaterialTabStripComponent0)._query_FocusableItem_0_0.setDirty();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
  }

  void _handle_trigger_0_0($event) {
    dbg(0, 8, 14);
    ctx.switchTo(locals['index']);
  }
}

AppView<import6.FixedMaterialTabStripComponent> viewFactory_FixedMaterialTabStripComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewFixedMaterialTabStripComponent1(parentView, parentIndex);
}

const List<dynamic> styles$FixedMaterialTabStripComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_FixedMaterialTabStripComponentHost0 = [
  new StaticNodeDebugInfo([import6.FixedMaterialTabStripComponent], import6.FixedMaterialTabStripComponent, <String, dynamic>{})
];

class _ViewFixedMaterialTabStripComponentHost0 extends DebugAppView<dynamic> {
  ViewFixedMaterialTabStripComponent0 _compView_0;
  import6.FixedMaterialTabStripComponent _FixedMaterialTabStripComponent_0_4;
  static RenderComponentType _renderType;
  _ViewFixedMaterialTabStripComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import13.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_FixedMaterialTabStripComponentHost0) {
    _renderType ??= import15.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$FixedMaterialTabStripComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewFixedMaterialTabStripComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _FixedMaterialTabStripComponent_0_4 = new import6.FixedMaterialTabStripComponent(_compView_0.ref, this.injectorGet(const OpaqueToken('isRtl'), viewData.parentIndex, null));
    _compView_0.create(_FixedMaterialTabStripComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _FixedMaterialTabStripComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import6.FixedMaterialTabStripComponent) && (0 == nodeIndex))) {
      return _FixedMaterialTabStripComponent_0_4;
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

AppView viewFactory_FixedMaterialTabStripComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewFixedMaterialTabStripComponentHost0(parentView, parentIndex);
}

const ComponentFactory _FixedMaterialTabStripComponentNgFactory = const ComponentFactory('material-tab-strip', viewFactory_FixedMaterialTabStripComponentHost0, import6.FixedMaterialTabStripComponent, _FixedMaterialTabStripComponentMetadata);
final ComponentFactory FixedMaterialTabStripComponentNgFactory = _FixedMaterialTabStripComponentNgFactory;
const _FixedMaterialTabStripComponentMetadata = const [];
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
    FixedMaterialTabStripComponent,
    FixedMaterialTabStripComponentNgFactory,
  );
  _ngRef.registerFactory(
    FixedMaterialTabStripComponent,
    (ChangeDetectorRef p0, bool p1) => new FixedMaterialTabStripComponent(p0, p1),
  );
  _ngRef.registerDependencies(
    FixedMaterialTabStripComponent,
    const [
      const [
        ChangeDetectorRef,
      ],
      const [
        const _ngRef.Inject(const _ngRef.OpaqueToken(r'isRtl')),
        const _ngRef.Optional(),
      ],
    ],
  );
}
