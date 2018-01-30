// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_yes_no_buttons.dart';
export 'material_yes_no_buttons.dart';
import 'dart:async';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'package:angular_components/material_spinner/material_spinner.dart';
import 'package:intl/intl.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/material_button/material_button.template.dart' as _ref1;
import 'package:angular_components/material_spinner/material_spinner.template.dart' as _ref2;

import 'package:angular_components/material_yes_no_buttons/material_yes_no_buttons.scss.css.shim.dart' as import0;
import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/common/directives/ng_if.dart';
import 'package:angular/src/debug/debug_app_view.dart';
import 'material_yes_no_buttons.dart' as import5;
import 'package:angular/src/core/linker/query_list.dart' as import6;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import10;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'dart:html' as import12;
import 'package:angular/src/core/linker/app_view_utils.dart' as import13;
import 'package:angular/angular.dart';
import '../material_spinner/material_spinner.dart' as import15;
import '../material_spinner/material_spinner.template.dart' as import16;
import '../theme/dark_theme.dart' as import17;
import '../material_button/material_button.dart' as import18;
import '../button_decorator/button_decorator.dart' as import19;
import '../material_button/material_button.template.dart' as import20;

const List<dynamic> styles$MaterialYesNoButtonsComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialYesNoButtonsComponent0 = [
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null
];

class ViewMaterialYesNoButtonsComponent0 extends DebugAppView<import5.MaterialYesNoButtonsComponent> {
  import6.QueryList _viewQuery_yesButton_0;
  import6.QueryList _viewQuery_noButton_1;
  ViewContainer _appEl_1;
  NgIf _NgIf_1_7;
  ViewContainer _appEl_3;
  NgIf _NgIf_3_7;
  ViewContainer _appEl_5;
  NgIf _NgIf_5_7;
  static RenderComponentType _renderType;
  ViewMaterialYesNoButtonsComponent0(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckOnce, nodeDebugInfos_MaterialYesNoButtonsComponent0) {
    rootEl = import12.document.createElement('material-yes-no-buttons');
    _renderType ??= import13.appViewUtils.createRenderType('package:angular_components/material_yes_no_buttons/material_yes_no_buttons.html', ViewEncapsulation.Emulated, styles$MaterialYesNoButtonsComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import12.HtmlElement parentRenderNode = initViewRoot(rootEl);
    _viewQuery_yesButton_0 = new import6.QueryList();
    _viewQuery_noButton_1 = new import6.QueryList();
    import12.Text _text_0 = new import12.Text('\n');
    parentRenderNode.append(_text_0);
    dbgElm(this, _text_0, 0, 4, 3);
    var _anchor_1 = ngAnchor.clone(false);
    parentRenderNode.append(_anchor_1);
    dbgElm(this, _anchor_1, 1, 5, 0);
    _appEl_1 = new ViewContainer(1, null, this, _anchor_1);
    TemplateRef _TemplateRef_1_6 = new TemplateRef(_appEl_1, viewFactory_MaterialYesNoButtonsComponent1);
    _NgIf_1_7 = new NgIf(_appEl_1, _TemplateRef_1_6);
    import12.Text _text_2 = new import12.Text('\n');
    parentRenderNode.append(_text_2);
    dbgElm(this, _text_2, 2, 8, 6);
    var _anchor_3 = ngAnchor.clone(false);
    parentRenderNode.append(_anchor_3);
    dbgElm(this, _anchor_3, 3, 9, 0);
    _appEl_3 = new ViewContainer(3, null, this, _anchor_3);
    TemplateRef _TemplateRef_3_6 = new TemplateRef(_appEl_3, viewFactory_MaterialYesNoButtonsComponent2);
    _NgIf_3_7 = new NgIf(_appEl_3, _TemplateRef_3_6);
    import12.Text _text_4 = new import12.Text('\n');
    parentRenderNode.append(_text_4);
    dbgElm(this, _text_4, 4, 17, 18);
    var _anchor_5 = ngAnchor.clone(false);
    parentRenderNode.append(_anchor_5);
    dbgElm(this, _anchor_5, 5, 18, 0);
    _appEl_5 = new ViewContainer(5, null, this, _anchor_5);
    TemplateRef _TemplateRef_5_6 = new TemplateRef(_appEl_5, viewFactory_MaterialYesNoButtonsComponent3);
    _NgIf_5_7 = new NgIf(_appEl_5, _TemplateRef_5_6);
    import12.Text _text_6 = new import12.Text('\n');
    parentRenderNode.append(_text_6);
    dbgElm(this, _text_6, 6, 25, 18);
    init(const [], const [], [_text_0, _anchor_1, _text_2, _anchor_3, _text_4, _anchor_5, _text_6]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialYesNoButtonsComponent _ctx = ctx;
    dbg(1, 5, 5);
    _NgIf_1_7.ngIf = _ctx.pending;
    dbg(3, 10, 17);
    _NgIf_3_7.ngIf = (!_ctx.pending && _ctx.yesDisplayed);
    dbg(5, 19, 17);
    _NgIf_5_7.ngIf = (!_ctx.pending && _ctx.noDisplayed);
    _appEl_1.detectChangesInNestedViews();
    _appEl_3.detectChangesInNestedViews();
    _appEl_5.detectChangesInNestedViews();
    if (!import13.AppViewUtils.throwOnChanges) {
      if (_viewQuery_yesButton_0.dirty) {
        _viewQuery_yesButton_0.reset([
          _appEl_3.mapNestedViews(_ViewMaterialYesNoButtonsComponent2, (_ViewMaterialYesNoButtonsComponent2 nestedView) {
            return [nestedView._MaterialButtonComponent_0_5];
          })
        ]);
        ctx.yesButton = _viewQuery_yesButton_0.first;
      }
      if (_viewQuery_noButton_1.dirty) {
        _viewQuery_noButton_1.reset([
          _appEl_5.mapNestedViews(_ViewMaterialYesNoButtonsComponent3, (_ViewMaterialYesNoButtonsComponent3 nestedView) {
            return [nestedView._MaterialButtonComponent_0_5];
          })
        ]);
        ctx.noButton = _viewQuery_noButton_1.first;
      }
    }
  }

  @override
  void destroyInternal() {
    _appEl_1.destroyNestedViews();
    _appEl_3.destroyNestedViews();
    _appEl_5.destroyNestedViews();
  }
}

AppView<import5.MaterialYesNoButtonsComponent> viewFactory_MaterialYesNoButtonsComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewMaterialYesNoButtonsComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialYesNoButtonsComponent1 = [
  null,
  null,
  new StaticNodeDebugInfo([import15.MaterialSpinnerComponent], import15.MaterialSpinnerComponent, <String, dynamic>{}),
  null
];

class _ViewMaterialYesNoButtonsComponent1 extends DebugAppView<import5.MaterialYesNoButtonsComponent> {
  import12.DivElement _el_0;
  import12.Element _el_2;
  import16.ViewMaterialSpinnerComponent0 _compView_2;
  import15.MaterialSpinnerComponent _MaterialSpinnerComponent_2_4;
  _ViewMaterialYesNoButtonsComponent1(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialYesNoButtonsComponent1) {
    componentType = ViewMaterialYesNoButtonsComponent0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import12.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 5, 0);
    _el_0.className = 'btn spinner';
    addShimC(_el_0);
    import12.Text _text_1 = new import12.Text('\n  ');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 6, 25);
    _compView_2 = new import16.ViewMaterialSpinnerComponent0(this, 2);
    _el_2 = _compView_2.rootEl;
    _el_0.append(_el_2);
    dbgElm(this, _el_2, 2, 7, 2);
    addShimC(_el_2);
    _MaterialSpinnerComponent_2_4 = new import15.MaterialSpinnerComponent();
    _compView_2.create(_MaterialSpinnerComponent_2_4, []);
    import12.Text _text_3 = new import12.Text('\n');
    _el_0.append(_text_3);
    dbgElm(this, _text_3, 3, 7, 39);
    init([_el_0], const [], [_el_0, _text_1, _el_2, _text_3]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import15.MaterialSpinnerComponent) && (2 == nodeIndex))) {
      return _MaterialSpinnerComponent_2_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    _compView_2.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_2.destroy();
  }
}

AppView<import5.MaterialYesNoButtonsComponent> viewFactory_MaterialYesNoButtonsComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialYesNoButtonsComponent1(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialYesNoButtonsComponent2 = [
  new StaticNodeDebugInfo([import17.AcxDarkTheme, import18.MaterialButtonComponent, import19.ButtonDirective], import18.MaterialButtonComponent, <String, dynamic>{'yesButton': import18.MaterialButtonComponent}),
  null
];

class _ViewMaterialYesNoButtonsComponent2 extends DebugAppView<import5.MaterialYesNoButtonsComponent> {
  import12.Element _el_0;
  import20.ViewMaterialButtonComponent0 _compView_0;
  import17.AcxDarkTheme _AcxDarkTheme_0_4;
  import18.MaterialButtonComponent _MaterialButtonComponent_0_5;
  import12.Text _text_1;
  bool _expr_0;
  bool _expr_1;
  bool _expr_2;
  var _expr_3;
  _ViewMaterialYesNoButtonsComponent2(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialYesNoButtonsComponent2) {
    componentType = ViewMaterialYesNoButtonsComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import20.ViewMaterialButtonComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 9, 0);
    _el_0.className = 'btn btn-yes';
    addShimC(_el_0);
    _AcxDarkTheme_0_4 = new import17.AcxDarkTheme(parentView.injectorGet(const OpaqueToken('acxDarkTheme'), viewData.parentIndex, null));
    _MaterialButtonComponent_0_5 = new import18.MaterialButtonComponent(_el_0, _AcxDarkTheme_0_4, _compView_0.ref);
    _text_1 = new import12.Text('');
    dbgElm(this, _text_1, 1, 15, 43);
    _compView_0.create(_MaterialButtonComponent_0_5, [
      [_text_1]
    ]);
    final subscription_0 = _MaterialButtonComponent_0_5.trigger.listen(eventHandler1(ctx.onYes));
    init([_el_0], [subscription_0], [_el_0, _text_1]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import17.AcxDarkTheme) && ((0 <= nodeIndex) && (nodeIndex <= 1)))) {
      return _AcxDarkTheme_0_4;
    }
    if (((identical(token, import18.MaterialButtonComponent) || identical(token, import19.ButtonDirective)) && ((0 <= nodeIndex) && (nodeIndex <= 1)))) {
      return _MaterialButtonComponent_0_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialYesNoButtonsComponent _ctx = ctx;
    bool changed = true;
    bool firstCheck = (this.cdState == 0);
    changed = false;
    dbg(0, 14, 17);
    final currVal_1 = (_ctx.yesDisabled || _ctx.disabled);
    if (import13.checkBinding(_expr_1, currVal_1)) {
      _MaterialButtonComponent_0_5.disabled = currVal_1;
      changed = true;
      _expr_1 = currVal_1;
    }
    dbg(0, 12, 17);
    final currVal_2 = (_ctx.yesRaised || _ctx.raised);
    if (import13.checkBinding(_expr_2, currVal_2)) {
      _MaterialButtonComponent_0_5.raised = currVal_2;
      changed = true;
      _expr_2 = currVal_2;
    }
    if (changed) {
      _compView_0.markAsCheckOnce();
    }
    final currVal_0 = _ctx.yesHighlighted;
    if (import13.checkBinding(_expr_0, currVal_0)) {
      updateElemClass(_el_0, 'highlighted', currVal_0);
      _expr_0 = currVal_0;
    }
    _compView_0.detectHostChanges(firstCheck);
    dbg(1, 15, 43);
    final currVal_3 = import13.interpolate1('\n  ', _ctx.yesText, '\n');
    if (import13.checkBinding(_expr_3, currVal_3)) {
      _text_1.text = currVal_3;
      _expr_3 = currVal_3;
    }
    _compView_0.detectChanges();
  }

  @override
  void dirtyParentQueriesInternal() {
    (parentView as ViewMaterialYesNoButtonsComponent0)._viewQuery_yesButton_0.setDirty();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
  }
}

AppView<import5.MaterialYesNoButtonsComponent> viewFactory_MaterialYesNoButtonsComponent2(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialYesNoButtonsComponent2(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_MaterialYesNoButtonsComponent3 = [
  new StaticNodeDebugInfo([import17.AcxDarkTheme, import18.MaterialButtonComponent, import19.ButtonDirective], import18.MaterialButtonComponent, <String, dynamic>{'noButton': import18.MaterialButtonComponent}),
  null
];

class _ViewMaterialYesNoButtonsComponent3 extends DebugAppView<import5.MaterialYesNoButtonsComponent> {
  import12.Element _el_0;
  import20.ViewMaterialButtonComponent0 _compView_0;
  import17.AcxDarkTheme _AcxDarkTheme_0_4;
  import18.MaterialButtonComponent _MaterialButtonComponent_0_5;
  import12.Text _text_1;
  bool _expr_0;
  bool _expr_1;
  var _expr_2;
  _ViewMaterialYesNoButtonsComponent3(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialYesNoButtonsComponent3) {
    componentType = ViewMaterialYesNoButtonsComponent0._renderType;
  }
  @override
  ComponentRef build() {
    _compView_0 = new import20.ViewMaterialButtonComponent0(this, 0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this, _el_0, 0, 18, 0);
    _el_0.className = 'btn btn-no';
    addShimC(_el_0);
    _AcxDarkTheme_0_4 = new import17.AcxDarkTheme(parentView.injectorGet(const OpaqueToken('acxDarkTheme'), viewData.parentIndex, null));
    _MaterialButtonComponent_0_5 = new import18.MaterialButtonComponent(_el_0, _AcxDarkTheme_0_4, _compView_0.ref);
    _text_1 = new import12.Text('');
    dbgElm(this, _text_1, 1, 23, 42);
    _compView_0.create(_MaterialButtonComponent_0_5, [
      [_text_1]
    ]);
    final subscription_0 = _MaterialButtonComponent_0_5.trigger.listen(eventHandler1(ctx.onNo));
    init([_el_0], [subscription_0], [_el_0, _text_1]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import17.AcxDarkTheme) && ((0 <= nodeIndex) && (nodeIndex <= 1)))) {
      return _AcxDarkTheme_0_4;
    }
    if (((identical(token, import18.MaterialButtonComponent) || identical(token, import19.ButtonDirective)) && ((0 <= nodeIndex) && (nodeIndex <= 1)))) {
      return _MaterialButtonComponent_0_5;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import5.MaterialYesNoButtonsComponent _ctx = ctx;
    bool changed = true;
    bool firstCheck = (this.cdState == 0);
    changed = false;
    dbg(0, 22, 17);
    final currVal_0 = _ctx.disabled;
    if (import13.checkBinding(_expr_0, currVal_0)) {
      _MaterialButtonComponent_0_5.disabled = currVal_0;
      changed = true;
      _expr_0 = currVal_0;
    }
    dbg(0, 21, 17);
    final currVal_1 = _ctx.raised;
    if (import13.checkBinding(_expr_1, currVal_1)) {
      _MaterialButtonComponent_0_5.raised = currVal_1;
      changed = true;
      _expr_1 = currVal_1;
    }
    if (changed) {
      _compView_0.markAsCheckOnce();
    }
    _compView_0.detectHostChanges(firstCheck);
    dbg(1, 23, 42);
    final currVal_2 = import13.interpolate1('\n  ', _ctx.noText, '\n');
    if (import13.checkBinding(_expr_2, currVal_2)) {
      _text_1.text = currVal_2;
      _expr_2 = currVal_2;
    }
    _compView_0.detectChanges();
  }

  @override
  void dirtyParentQueriesInternal() {
    (parentView as ViewMaterialYesNoButtonsComponent0)._viewQuery_noButton_1.setDirty();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
  }
}

AppView<import5.MaterialYesNoButtonsComponent> viewFactory_MaterialYesNoButtonsComponent3(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialYesNoButtonsComponent3(parentView, parentIndex);
}

const List<dynamic> styles$MaterialYesNoButtonsComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_MaterialYesNoButtonsComponentHost0 = [
  new StaticNodeDebugInfo([import5.MaterialYesNoButtonsComponent], import5.MaterialYesNoButtonsComponent, <String, dynamic>{})
];

class _ViewMaterialYesNoButtonsComponentHost0 extends DebugAppView<dynamic> {
  ViewMaterialYesNoButtonsComponent0 _compView_0;
  import5.MaterialYesNoButtonsComponent _MaterialYesNoButtonsComponent_0_4;
  static RenderComponentType _renderType;
  _ViewMaterialYesNoButtonsComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_MaterialYesNoButtonsComponentHost0) {
    _renderType ??= import13.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$MaterialYesNoButtonsComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewMaterialYesNoButtonsComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _MaterialYesNoButtonsComponent_0_4 = new import5.MaterialYesNoButtonsComponent();
    _compView_0.create(_MaterialYesNoButtonsComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _MaterialYesNoButtonsComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import5.MaterialYesNoButtonsComponent) && (0 == nodeIndex))) {
      return _MaterialYesNoButtonsComponent_0_4;
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

AppView viewFactory_MaterialYesNoButtonsComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewMaterialYesNoButtonsComponentHost0(parentView, parentIndex);
}

const ComponentFactory _MaterialYesNoButtonsComponentNgFactory = const ComponentFactory('material-yes-no-buttons', viewFactory_MaterialYesNoButtonsComponentHost0, import5.MaterialYesNoButtonsComponent, _MaterialYesNoButtonsComponentMetadata);
final ComponentFactory MaterialYesNoButtonsComponentNgFactory = _MaterialYesNoButtonsComponentNgFactory;
const _MaterialYesNoButtonsComponentMetadata = const [];
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ngRef.registerComponent(
    MaterialYesNoButtonsComponent,
    MaterialYesNoButtonsComponentNgFactory,
  );
  _ngRef.registerFactory(
    MaterialYesNoButtonsComponent,
    () => new MaterialYesNoButtonsComponent(),
  );

  _ngRef.registerFactory(
    MaterialSaveCancelButtonsDirective,
    (MaterialYesNoButtonsComponent p0) => new MaterialSaveCancelButtonsDirective(p0),
  );
  _ngRef.registerDependencies(
    MaterialSaveCancelButtonsDirective,
    const [
      const [
        MaterialYesNoButtonsComponent,
      ],
    ],
  );

  _ngRef.registerFactory(
    MaterialSubmitCancelButtonsDirective,
    (MaterialYesNoButtonsComponent p0) => new MaterialSubmitCancelButtonsDirective(p0),
  );
  _ngRef.registerDependencies(
    MaterialSubmitCancelButtonsDirective,
    const [
      const [
        MaterialYesNoButtonsComponent,
      ],
    ],
  );

  _ngRef.registerFactory(
    KeyUpBoundaryDirective,
    (Element p0) => new KeyUpBoundaryDirective(p0),
  );
  _ngRef.registerDependencies(
    KeyUpBoundaryDirective,
    const [
      const [
        Element,
      ],
    ],
  );

  _ngRef.registerFactory(
    EscapeCancelsDirective,
    (MaterialYesNoButtonsComponent p0, Element p1, KeyUpBoundaryDirective p2) => new EscapeCancelsDirective(p0, p1, p2),
  );
  _ngRef.registerDependencies(
    EscapeCancelsDirective,
    const [
      const [
        MaterialYesNoButtonsComponent,
      ],
      const [
        Element,
      ],
      const [
        KeyUpBoundaryDirective,
        const _ngRef.Optional(),
      ],
    ],
  );

  _ngRef.registerFactory(
    EnterAcceptsDirective,
    (MaterialYesNoButtonsComponent p0, Element p1, KeyUpBoundaryDirective p2) => new EnterAcceptsDirective(p0, p1, p2),
  );
  _ngRef.registerDependencies(
    EnterAcceptsDirective,
    const [
      const [
        MaterialYesNoButtonsComponent,
      ],
      const [
        Element,
      ],
      const [
        KeyUpBoundaryDirective,
        const _ngRef.Optional(),
      ],
    ],
  );
}
