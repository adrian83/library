// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'icon_tooltip.dart';
export 'icon_tooltip.dart';
import 'dart:async';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/content/deferred_content_aware.dart';
import 'package:angular_components/focus/keyboard_only_focus_indicator.dart';
import 'package:angular_components/glyph/glyph.dart';
import 'package:angular_components/theme/dark_theme.dart';
import 'package:intl/intl.dart';
import 'paper_tooltip.dart';
import 'tooltip_target.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/content/deferred_content_aware.template.dart' as _ref1;
import 'package:angular_components/focus/keyboard_only_focus_indicator.template.dart' as _ref2;
import 'package:angular_components/glyph/glyph.template.dart' as _ref3;
import 'package:angular_components/theme/dark_theme.template.dart' as _ref4;
import 'paper_tooltip.template.dart' as _ref5;
import 'tooltip_target.template.dart' as _ref6;

import 'package:angular_components/src/material_tooltip/icon_tooltip.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'tooltip_target.dart' as import2;
import '../../glyph/glyph.dart' as import3;
import '../../focus/keyboard_only_focus_indicator.dart' as import4;
import 'tooltip_controller.dart' as import5;
import 'paper_tooltip.dart' as import6;
import '../../content/deferred_content_aware.dart' as import7;
import 'package:angular/src/debug/debug_app_view.dart';
import 'icon_tooltip.dart' as import9;
import 'package:angular/src/core/linker/query_list.dart' as import10;
import 'dart:html' as import11;
import '../../glyph/glyph.template.dart' as import12;
import 'package:angular/src/core/linker/view_container.dart';
import 'paper_tooltip.template.dart' as import14;
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import17;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import19;
import 'package:angular/angular.dart';
import '../laminate/popup/dom_popup_source.dart' as import21;
import '../../utils/browser/dom_service/dom_service.dart' as import22;
import '../../material_tooltip/module.dart' as import23;
import '../../utils/disposer/disposer.dart' as import24;
import '../../theme/dark_theme.dart' as import25;

const List<dynamic> styles$MaterialIconTooltipComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialIconTooltipComponent0 = [
  null,
  new StaticNodeDebugInfo([import2.ClickableTooltipTargetDirective, import3.GlyphComponent, import4.KeyboardOnlyFocusIndicatorDirective], import3.GlyphComponent, <String, dynamic>{'tooltipRef': import2.ClickableTooltipTargetDirective}),
  null,
  null,
  new StaticNodeDebugInfo([import5.TooltipController, import6.MaterialPaperTooltipComponent, import5.Tooltip, import7.DeferredContentAware], import6.MaterialPaperTooltipComponent, <String, dynamic>{}),
  null,
  null
];

class ViewMaterialIconTooltipComponent0 extends DebugAppView<import9.MaterialIconTooltipComponent> {
  import10.QueryList _viewQuery_tooltipRef_0;
  import11.Element _el_1;
  import12.ViewGlyphComponent0 _compView_1;
  ViewContainer _appEl_1;
  import2.ClickableTooltipTargetDirective _ClickableTooltipTargetDirective_1_6;
  import3.GlyphComponent _GlyphComponent_1_7;
  import4.KeyboardOnlyFocusIndicatorDirective _KeyboardOnlyFocusIndicatorDirective_1_8;
  import11.Element _el_4;
  import14.ViewMaterialPaperTooltipComponent0 _compView_4;
  dynamic _TooltipController_4_4;
  import6.MaterialPaperTooltipComponent _MaterialPaperTooltipComponent_4_5;
  dynamic __Tooltip_4_6;
  var _expr_1;
  var _expr_3;
  static RenderComponentType _renderType;
  ViewMaterialIconTooltipComponent0(AppView<dynamic> parentView, num parentIndex) : super(import17.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckOnce, nodeDebugInfos_MaterialIconTooltipComponent0) {
    rootEl = import11.document.createElement('material-icon-tooltip');
    _renderType ??= import19.appViewUtils.createRenderType('asset:angular_components/lib/src/material_tooltip/icon_tooltip.dart class MaterialIconTooltipComponent - inline template', ViewEncapsulation.Emulated, styles$MaterialIconTooltipComponent);
    setupComponentType(_renderType);
  }
  dynamic get _Tooltip_4_6 {
    dbg(4, 5, 4);
    if ((this.__Tooltip_4_6 == null)) {
      (__Tooltip_4_6 = import6.getTooltipHandle(this._MaterialPaperTooltipComponent_4_5));
    }
    return this.__Tooltip_4_6;
  }

  @override
  ComponentRef build() {
    final import11.HtmlElement parentRenderNode = initViewRoot(rootEl);
    _viewQuery_tooltipRef_0 = new import10.QueryList();
    import11.Text _text_0 = new import11.Text('    ');
    parentRenderNode.append(_text_0);
    dbgElm(this, _text_0, 0, 0, 0);
    _compView_1 = new import12.ViewGlyphComponent0(this, 1);
    _el_1 = _compView_1.rootEl;
    parentRenderNode.append(_el_1);
    dbgElm(this, _el_1, 1, 0, 4);
    createAttr(_el_1, 'clickableTooltipTarget', '');
    createAttr(_el_1, 'keyboardOnlyFocusIndicator', '');
    _el_1.tabIndex = 0;
    addShimC(_el_1);
    _appEl_1 = new ViewContainer(1, null, this, _el_1);
    _ClickableTooltipTargetDirective_1_6 = new import2.ClickableTooltipTargetDirective(parentView.injectorGet(import21.DomPopupSourceFactory, viewData.parentIndex), _appEl_1, _el_1, ref);
    _GlyphComponent_1_7 = new import3.GlyphComponent(_el_1);
    _KeyboardOnlyFocusIndicatorDirective_1_8 = new import4.KeyboardOnlyFocusIndicatorDirective(_el_1, parentView.injectorGet(import22.DomService, viewData.parentIndex));
    import11.Text _text_2 = new import11.Text('\n    ');
    dbgElm(this, _text_2, 2, 3, 59);
    _compView_1.create(_GlyphComponent_1_7, []);
    import11.Text _text_3 = new import11.Text('\n    ');
    parentRenderNode.append(_text_3);
    dbgElm(this, _text_3, 3, 4, 12);
    _compView_4 = new import14.ViewMaterialPaperTooltipComponent0(this, 4);
    _el_4 = _compView_4.rootEl;
    parentRenderNode.append(_el_4);
    dbgElm(this, _el_4, 4, 5, 4);
    addShimC(_el_4);
    _TooltipController_4_4 = import23.createTooltipController(parentView.injectorGet(import5.TooltipController, viewData.parentIndex, null), parentView.injectorGet(import24.Disposer, viewData.parentIndex, null));
    _MaterialPaperTooltipComponent_4_5 = new import6.MaterialPaperTooltipComponent(_TooltipController_4_4, _compView_4.ref);
    import11.Text _text_5 = new import11.Text('\n      ');
    dbgElm(this, _text_5, 5, 5, 46);
    dbg(null, 6, 6);
    import11.Text _text_6 = new import11.Text('\n    ');
    dbgElm(this, _text_6, 6, 6, 31);
    _compView_4.create(_MaterialPaperTooltipComponent_4_5, [
      const [],
      <dynamic>[_text_5]..addAll(projectableNodes[0])..addAll([_text_6]),
      const []
    ]);
    _el_1.addEventListener('mouseover', eventHandler0(_ClickableTooltipTargetDirective_1_6.onMouseOver));
    _el_1.addEventListener('mouseleave', eventHandler0(_ClickableTooltipTargetDirective_1_6.onMouseLeave));
    _el_1.addEventListener('click', eventHandler1(_handle_click_1_2));
    _el_1.addEventListener('keypress', eventHandler1(_ClickableTooltipTargetDirective_1_6.kbTrigger));
    _el_1.addEventListener('blur', eventHandler1(_handle_blur_1_4));
    _el_1.addEventListener('keyup', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_1_8.resetOutline));
    _el_1.addEventListener('mousedown', eventHandler0(_KeyboardOnlyFocusIndicatorDirective_1_8.hideOutline));
    _viewQuery_tooltipRef_0.reset([_ClickableTooltipTargetDirective_1_6]);
    ctx.tooltipBehavior = _viewQuery_tooltipRef_0.first;
    init(const [], const [], [_text_0, _el_1, _text_2, _text_3, _el_4, _text_5, _text_6]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import2.ClickableTooltipTargetDirective) && ((1 <= nodeIndex) && (nodeIndex <= 2)))) {
      return _ClickableTooltipTargetDirective_1_6;
    }
    if ((identical(token, import3.GlyphComponent) && ((1 <= nodeIndex) && (nodeIndex <= 2)))) {
      return _GlyphComponent_1_7;
    }
    if ((identical(token, import4.KeyboardOnlyFocusIndicatorDirective) && ((1 <= nodeIndex) && (nodeIndex <= 2)))) {
      return _KeyboardOnlyFocusIndicatorDirective_1_8;
    }
    if ((identical(token, import5.TooltipController) && ((4 <= nodeIndex) && (nodeIndex <= 6)))) {
      return _TooltipController_4_4;
    }
    if (((identical(token, import6.MaterialPaperTooltipComponent) || identical(token, import7.DeferredContentAware)) && ((4 <= nodeIndex) && (nodeIndex <= 6)))) {
      return _MaterialPaperTooltipComponent_4_5;
    }
    if ((identical(token, import5.Tooltip) && ((4 <= nodeIndex) && (nodeIndex <= 6)))) {
      return _Tooltip_4_6;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import9.MaterialIconTooltipComponent _ctx = ctx;
    bool changed = true;
    bool firstCheck = (this.cdState == 0);
    changed = false;
    if (firstCheck) {
      if (!identical(_ctx.icon, null)) {
        _GlyphComponent_1_7.icon = _ctx.icon;
        changed = true;
      }
    }
    if (changed) {
      _compView_1.markAsCheckOnce();
    }
    changed = false;
    dbg(4, 5, 27);
    final currVal_3 = _ClickableTooltipTargetDirective_1_6;
    if (import19.checkBinding(_expr_3, currVal_3)) {
      _MaterialPaperTooltipComponent_4_5.tooltipRef = currVal_3;
      changed = true;
      _expr_3 = currVal_3;
    }
    if (changed) {
      _compView_4.markAsCheckOnce();
    }
    _appEl_1.detectChangesInNestedViews();
    if (firstCheck) {
      if (!identical(_ctx.iconSize, null)) {
        setAttr(_el_1, 'size', _ctx.iconSize?.toString());
      }
    }
    final currVal_1 = _ctx.helpTooltipLabel;
    if (import19.checkBinding(_expr_1, currVal_1)) {
      setAttr(_el_1, 'aria-label', currVal_1?.toString());
      _expr_1 = currVal_1;
    }
    _compView_1.detectChanges();
    _compView_4.detectChanges();
    if (!import19.AppViewUtils.throwOnChanges) {
      dbg(1, 0, 4);
      if (firstCheck) {
        _ClickableTooltipTargetDirective_1_6.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    _appEl_1.destroyNestedViews();
    _compView_1.destroy();
    _compView_4.destroy();
    dbg(1, 0, 4);
    _ClickableTooltipTargetDirective_1_6.ngOnDestroy();
  }

  void _handle_click_1_2($event) {
    dbg(1, 0, 4);
    _ClickableTooltipTargetDirective_1_6.onClick();
    _KeyboardOnlyFocusIndicatorDirective_1_8.hideOutline();
  }

  void _handle_blur_1_4($event) {
    dbg(1, 0, 4);
    _ClickableTooltipTargetDirective_1_6.onBlur($event);
    _KeyboardOnlyFocusIndicatorDirective_1_8.resetOutline();
  }
}

AppView<import9.MaterialIconTooltipComponent> viewFactory_MaterialIconTooltipComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialIconTooltipComponent0(parentView, parentIndex);
}

const List<dynamic> styles$MaterialIconTooltipComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialIconTooltipComponentHost0 = [
  new StaticNodeDebugInfo([import25.AcxDarkTheme, import9.MaterialIconTooltipComponent, import7.DeferredContentAware], import9.MaterialIconTooltipComponent, <String, dynamic>{})
];

class _ViewMaterialIconTooltipComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialIconTooltipComponent0 _compView_0;
  import25.AcxDarkTheme _AcxDarkTheme_0_4;
  import9.MaterialIconTooltipComponent _MaterialIconTooltipComponent_0_5;
  static RenderComponentType _renderType;
  _ViewMaterialIconTooltipComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import17.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialIconTooltipComponentHost0) {
    _renderType ??= import19.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialIconTooltipComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialIconTooltipComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _AcxDarkTheme_0_4 = new import25.AcxDarkTheme(this.injectorGet(const OpaqueToken('acxDarkTheme'), viewData.parentIndex, null));
    _MaterialIconTooltipComponent_0_5 = new import9.MaterialIconTooltipComponent(_AcxDarkTheme_0_4, rootEl, null, null);
    _compView_0.create(_MaterialIconTooltipComponent_0_5, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialIconTooltipComponent_0_5);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import25.AcxDarkTheme) && (0 == nodeIndex))) {
      return _AcxDarkTheme_0_4;
    }
    if (((identical(token, import9.MaterialIconTooltipComponent) || identical(token, import7.DeferredContentAware)) && (0 == nodeIndex))) {
      return _MaterialIconTooltipComponent_0_5;
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

AppView viewFactory_MaterialIconTooltipComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialIconTooltipComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialIconTooltipComponentNgFactory = const ComponentFactory('material-icon-tooltip', viewFactory_MaterialIconTooltipComponentHost0, import9.MaterialIconTooltipComponent, _MaterialIconTooltipComponentMetadata);
final ComponentFactory MaterialIconTooltipComponentNgFactory = _MaterialIconTooltipComponentNgFactory;
const _MaterialIconTooltipComponentMetadata = const [];
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
  _ngRef.registerComponent(
    MaterialIconTooltipComponent,
    MaterialIconTooltipComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialIconTooltipComponent,
    (AcxDarkTheme p0, HtmlElement p1, String p2, String p3) => new MaterialIconTooltipComponent(p0, p1, p2, p3),
  );
  _ngRef.registerDependencies(
    MaterialIconTooltipComponent,
    const [
      const [
        AcxDarkTheme,
      ],
      const [
        HtmlElement,
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
