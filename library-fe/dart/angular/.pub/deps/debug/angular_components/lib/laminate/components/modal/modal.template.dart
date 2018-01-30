// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'modal.dart';
export 'modal.dart';
import 'dart:async';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/content/deferred_content_aware.dart';
import 'package:angular_components/laminate/overlay/overlay.dart';
import 'package:angular_components/model/action/async_action.dart';
import 'package:angular_components/src/laminate/components/modal/modal_controller_directive.dart';
import 'package:angular_components/utils/disposer/disposer.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/content/deferred_content_aware.template.dart' as _ref1;
import 'package:angular_components/laminate/overlay/overlay.template.dart' as _ref2;
import 'package:angular_components/model/action/async_action.template.dart' as _ref3;
import 'package:angular_components/src/laminate/components/modal/modal_controller_directive.template.dart' as _ref4;
import 'package:angular_components/utils/disposer/disposer.template.dart' as _ref5;

import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/core/linker/template_ref.dart';
import '../../../src/laminate/components/modal/modal_controller_directive.dart' as import2;
import 'package:angular/src/debug/debug_app_view.dart';
import 'modal.dart' as import4;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import8;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'dart:html' as import10;
import 'package:angular/src/core/linker/app_view_utils.dart' as import11;
import 'package:angular/angular.dart';
import '../../../content/deferred_content_aware.dart' as import13;
import '../../../src/laminate/overlay/overlay_service.dart' as import14;

const List<dynamic> styles$ModalComponent = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_ModalComponent0 = [
  null,
  new StaticNodeDebugInfo([TemplateRef, import2.ModalControllerDirective], null, <String, dynamic>{}),
  null
];

class ViewModalComponent0 extends DebugAppView<import4.ModalComponent> {
  ViewContainer _appEl_1;
  import2.ModalControllerDirective _ModalControllerDirective_1_7;
  var _expr_0;
  var _expr_1;
  static RenderComponentType _renderType;
  ViewModalComponent0(AppView<dynamic> parentView, num parentIndex) : super(import8.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_ModalComponent0) {
    rootEl = import10.document.createElement('modal');
    _renderType ??= import11.appViewUtils.createRenderType('asset:angular_components/lib/laminate/components/modal/modal.dart class ModalComponent - inline template', ViewEncapsulation.None, styles$ModalComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import10.HtmlElement parentRenderNode = initViewRoot(rootEl);
    import10.Text _text_0 = new import10.Text('    ');
    parentRenderNode.append(_text_0);
    dbgElm(this, _text_0, 0, 0, 0);
    var _anchor_1 = ngAnchor.clone(false);
    parentRenderNode.append(_anchor_1);
    dbgElm(this, _anchor_1, 1, 0, 4);
    _appEl_1 = new ViewContainer(1, null, this, _anchor_1);
    TemplateRef _TemplateRef_1_6 = new TemplateRef(_appEl_1, viewFactory_ModalComponent1);
    _ModalControllerDirective_1_7 = new import2.ModalControllerDirective(_TemplateRef_1_6, _appEl_1);
    import10.Text _text_2 = new import10.Text('\n  ');
    parentRenderNode.append(_text_2);
    dbgElm(this, _text_2, 2, 2, 15);
    init(const [], const [], [_text_0, _anchor_1, _text_2]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import2.ModalControllerDirective) && (1 == nodeIndex))) {
      return _ModalControllerDirective_1_7;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import4.ModalComponent _ctx = ctx;
    dbg(1, 0, 14);
    final currVal_0 = _ctx.resolvedOverlayRef;
    if (import11.checkBinding(_expr_0, currVal_0)) {
      _ModalControllerDirective_1_7.overlay = currVal_0;
      _expr_0 = currVal_0;
    }
    _appEl_1.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    _appEl_1.destroyNestedViews();
    dbg(1, 0, 4);
    _ModalControllerDirective_1_7.ngOnDestroy();
  }

  void detectHostChanges(bool firstCheck) {
    final currVal_1 = ctx.uniquePaneId;
    if (import11.checkBinding(_expr_1, currVal_1)) {
      setAttr(rootEl, 'pane-id', currVal_1?.toString());
      _expr_1 = currVal_1;
    }
  }
}

AppView<import4.ModalComponent> viewFactory_ModalComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewModalComponent0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_ModalComponent1 = [null, null];

class _ViewModalComponent1 extends DebugAppView<import4.ModalComponent> {
  _ViewModalComponent1(AppView<dynamic> parentView, num parentIndex) : super(import8.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_ModalComponent1) {
    componentType = ViewModalComponent0._renderType;
  }
  @override
  ComponentRef build() {
    import10.Text _text_0 = new import10.Text('\n      ');
    dbgElm(this, _text_0, 0, 0, 53);
    dbg(null, 1, 6);
    import10.Text _text_1 = new import10.Text('\n    ');
    dbgElm(this, _text_1, 1, 1, 31);
    init(<dynamic>[_text_0]..addAll(projectableNodes[0])..addAll([_text_1]), const [], [_text_0, _text_1]);
    return null;
  }
}

AppView<import4.ModalComponent> viewFactory_ModalComponent1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewModalComponent1(parentView, parentIndex);
}

const List<dynamic> styles$ModalComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_ModalComponentHost0 = [
  new StaticNodeDebugInfo([import4.ModalComponent, import13.DeferredContentAware, import4.Modal], import4.ModalComponent, <String, dynamic>{})
];

class _ViewModalComponentHost0 extends DebugAppView<dynamic> {
  ViewModalComponent0 _compView_0;
  import4.ModalComponent _ModalComponent_0_4;
  static RenderComponentType _renderType;
  _ViewModalComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import8.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_ModalComponentHost0) {
    _renderType ??= import11.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$ModalComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewModalComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _ModalComponent_0_4 = new import4.ModalComponent(this.injectorGet(import14.OverlayService, viewData.parentIndex), this.injectorGet(import4.Modal, viewData.parentIndex, null), this.injectorGet(import4.GlobalModalStack, viewData.parentIndex, null));
    _compView_0.create(_ModalComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _ModalComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((((identical(token, import4.ModalComponent) || identical(token, import13.DeferredContentAware)) || identical(token, import4.Modal)) && (0 == nodeIndex))) {
      return _ModalComponent_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = (this.cdState == 0);
    _compView_0.detectHostChanges(firstCheck);
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
    dbg(0, 0, 0);
    _ModalComponent_0_4.ngOnDestroy();
  }
}

AppView viewFactory_ModalComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewModalComponentHost0(parentView, parentIndex);
}

const ComponentFactory _ModalComponentNgFactory = const ComponentFactory('modal', viewFactory_ModalComponentHost0, import4.ModalComponent, _ModalComponentMetadata);
final ComponentFactory ModalComponentNgFactory = _ModalComponentNgFactory;
const _ModalComponentMetadata = const [];
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
  _ngRef.registerFactory(
    GlobalModalStack,
    () => new GlobalModalStack(),
  );

  _ngRef.registerComponent(
    ModalComponent,
    ModalComponentNgFactory,
  );
  _ngRef.registerFactory(
    ModalComponent,
    (OverlayService p0, Modal p1, GlobalModalStack p2) => new ModalComponent(p0, p1, p2),
  );
  _ngRef.registerDependencies(
    ModalComponent,
    const [
      const [
        OverlayService,
      ],
      const [
        Modal,
        const _ngRef.SkipSelf(),
        const _ngRef.Optional(),
      ],
      const [
        GlobalModalStack,
        const _ngRef.Optional(),
      ],
    ],
  );
}
