// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'logout_component.dart';
export 'logout_component.dart';
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'event_bus.template.dart' as _ref0;
import 'package:angular/angular.template.dart' as _ref1;
import 'store.template.dart' as _ref2;
import 'package:angular/src/core/linker/app_view.dart';
import 'logout_component.dart' as import1;
import 'package:angular/src/core/linker/style_encapsulation.dart' as import2;
import 'package:angular/src/core/linker/view_type.dart' as import3;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'dart:html' as import5;
import 'package:angular/src/runtime.dart' as import6;
import 'package:angular/angular.dart';
import 'package:angular/src/runtime/dom_helpers.dart' as import8;
import 'store.dart' as import9;
import 'event_bus.dart' as import10;
import 'package:angular/src/core/linker/app_view_utils.dart' as import11;

final List<dynamic> styles$LogoutComponent = const [];

class ViewLogoutComponent0 extends AppView<import1.LogoutComponent> {
  static import2.ComponentStyles _componentStyles;
  ViewLogoutComponent0(AppView<dynamic> parentView, int parentIndex) : super(import3.ViewType.component, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    initComponentStyles();
    rootEl = import5.document.createElement('logout');
  }
  static String get _debugComponentUrl {
    return (import6.isDevMode ? 'asset:todo_fe/lib/src/logout_component.dart' : null);
  }

  @override
  ComponentRef<import1.LogoutComponent> build() {
    final _rootEl = rootEl;
    final import5.HtmlElement parentRenderNode = initViewRoot(_rootEl);
    final doc = import5.document;
    final _el_0 = import8.appendElement(doc, parentRenderNode, 'h3');
    final _text_1 = import8.appendText(_el_0, 'You\'ve been logged out');
    init0();
  }

  @override
  void initComponentStyles() {
    var styles = _componentStyles;
    if (identical(styles, null)) {
      (_componentStyles = (styles = (_componentStyles = import2.ComponentStyles.unscoped(styles$LogoutComponent, _debugComponentUrl))));
    }
    componentStyles = styles;
  }
}

const ComponentFactory<import1.LogoutComponent> _LogoutComponentNgFactory = const ComponentFactory('logout', viewFactory_LogoutComponentHost0);
ComponentFactory<import1.LogoutComponent> get LogoutComponentNgFactory {
  return _LogoutComponentNgFactory;
}

final List<dynamic> styles$LogoutComponentHost = const [];

class _ViewLogoutComponentHost0 extends AppView<import1.LogoutComponent> {
  ViewLogoutComponent0 _compView_0;
  import9.Store _Store_0_5;
  import10.EventBus _EventBus_0_6;
  import1.LogoutComponent _LogoutComponent_0_7;
  _ViewLogoutComponentHost0(AppView<dynamic> parentView, int parentIndex) : super(import3.ViewType.host, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways);
  @override
  ComponentRef<import1.LogoutComponent> build() {
    _compView_0 = ViewLogoutComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    _Store_0_5 = import9.Store();
    _EventBus_0_6 = import10.EventBus();
    _LogoutComponent_0_7 = import1.LogoutComponent(_Store_0_5, _EventBus_0_6);
    _compView_0.create(_LogoutComponent_0_7, projectedNodes);
    init1(rootEl);
    return ComponentRef(0, this, rootEl, _LogoutComponent_0_7);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((0 == nodeIndex)) {
      if (identical(token, import9.Store)) {
        return _Store_0_5;
      }
      if (identical(token, import10.EventBus)) {
        return _EventBus_0_6;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = (this.cdState == 0);
    if (((!import11.AppViewUtils.throwOnChanges) && firstCheck)) {
      _LogoutComponent_0_7.ngOnInit();
    }
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroyInternalState();
  }
}

AppView<import1.LogoutComponent> viewFactory_LogoutComponentHost0(AppView<dynamic> parentView, int parentIndex) {
  return _ViewLogoutComponentHost0(parentView, parentIndex);
}

var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(LogoutComponent, LogoutComponentNgFactory);
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
}
