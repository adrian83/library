// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'dashboard_component.dart';
export 'dashboard_component.dart';
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_router/angular_router.template.dart' as _ref1;
import 'route_paths.template.dart' as _ref2;
import 'routes.template.dart' as _ref3;
import 'store.template.dart' as _ref4;
import 'package:angular/src/core/linker/app_view.dart';
import 'dashboard_component.dart' as import1;
import 'package:angular_router/src/directives/router_link_directive.template.dart' as import2;
import 'package:angular_router/src/directives/router_link_active_directive.dart' as import3;
import 'dart:html' as import4;
import 'package:angular/src/core/linker/style_encapsulation.dart' as import5;
import 'package:angular/src/core/linker/view_type.dart' as import6;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/runtime.dart' as import8;
import 'package:angular/angular.dart';
import 'package:angular/src/runtime/dom_helpers.dart' as import10;
import 'package:angular/src/di/errors.dart' as import11;
import 'package:angular_router/src/directives/router_link_directive.dart' as import12;
import 'package:angular_router/src/router/router.dart' as import13;
import 'package:angular_router/src/location/location.dart' as import14;
import 'route_paths.dart' as import15;
import 'package:angular/src/core/linker/app_view_utils.dart' as import16;
import 'store.dart' as import17;

final List<dynamic> styles$DashboardComponent = const [];

class ViewDashboardComponent0 extends AppView<import1.DashboardComponent> {
  import2.RouterLinkNgCd _RouterLink_7_5;
  import3.RouterLinkActive _RouterLinkActive_7_6;
  String _expr_0;
  import4.AnchorElement _el_7;
  static import5.ComponentStyles _componentStyles;
  ViewDashboardComponent0(AppView<dynamic> parentView, int parentIndex) : super(import6.ViewType.component, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    initComponentStyles();
    rootEl = import4.document.createElement('dashboard');
  }
  static String get _debugComponentUrl {
    return (import8.isDevMode ? 'asset:todo_fe/lib/src/dashboard_component.dart' : null);
  }

  @override
  ComponentRef<import1.DashboardComponent> build() {
    final _rootEl = rootEl;
    final import4.HtmlElement parentRenderNode = initViewRoot(_rootEl);
    final doc = import4.document;
    final _el_0 = import10.appendElement(doc, parentRenderNode, 'h2');
    final _text_1 = import10.appendText(_el_0, 'Dashboard');
    final _el_2 = import10.appendElement(doc, parentRenderNode, 'h4');
    final _text_3 = import10.appendText(_el_2, 'This is your home page');
    final _el_4 = import10.appendElement(doc, parentRenderNode, 'br');
    final _el_5 = import10.appendElement(doc, parentRenderNode, 'br');
    final _el_6 = import10.appendDiv(doc, parentRenderNode);
    _el_7 = import10.appendElement(doc, _el_6, 'a');
    this.updateChildClass(_el_7, 'p-2 text-dark');
    _RouterLink_7_5 = import2.RouterLinkNgCd((import8.isDevMode
        ? import11.debugInjectorWrap(import12.RouterLink, () {
            return import12.RouterLink(parentView.injectorGet(import13.Router, viewData.parentIndex), parentView.injectorGet(import14.Location, viewData.parentIndex), null, _el_7);
          })
        : import12.RouterLink(parentView.injectorGet(import13.Router, viewData.parentIndex), parentView.injectorGet(import14.Location, viewData.parentIndex), null, _el_7)));
    _RouterLinkActive_7_6 = (import8.isDevMode
        ? import11.debugInjectorWrap(import3.RouterLinkActive, () {
            return import3.RouterLinkActive(_el_7, parentView.injectorGet(import13.Router, viewData.parentIndex));
          })
        : import3.RouterLinkActive(_el_7, parentView.injectorGet(import13.Router, viewData.parentIndex)));
    final _text_8 = import10.appendText(_el_7, 'Manage your TODOs');
    _RouterLinkActive_7_6.links = [_RouterLink_7_5.instance];
    final _el_9 = import10.appendElement(doc, parentRenderNode, 'br');
    final _el_10 = import10.appendElement(doc, parentRenderNode, 'br');
    _el_7.addEventListener('click', eventHandler1(_RouterLink_7_5.instance.onClick));
    init0();
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = (this.cdState == 0);
    final currVal_0 = import15.RoutePaths.todos.toUrl();
    if (import16.checkBinding(_expr_0, currVal_0)) {
      _RouterLink_7_5.instance.routerLink = currVal_0;
      _expr_0 = currVal_0;
    }
    if (firstCheck) {
      (_RouterLinkActive_7_6.routerLinkActive = 'active');
    }
    _RouterLink_7_5.detectHostChanges(this, _el_7);
    if ((!import16.AppViewUtils.throwOnChanges)) {
      if (firstCheck) {
        _RouterLinkActive_7_6.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    _RouterLink_7_5.instance.ngOnDestroy();
    _RouterLinkActive_7_6.ngOnDestroy();
  }

  @override
  void initComponentStyles() {
    var styles = _componentStyles;
    if (identical(styles, null)) {
      (_componentStyles = (styles = (_componentStyles = import5.ComponentStyles.unscoped(styles$DashboardComponent, _debugComponentUrl))));
    }
    componentStyles = styles;
  }
}

const ComponentFactory<import1.DashboardComponent> _DashboardComponentNgFactory = const ComponentFactory('dashboard', viewFactory_DashboardComponentHost0);
ComponentFactory<import1.DashboardComponent> get DashboardComponentNgFactory {
  return _DashboardComponentNgFactory;
}

final List<dynamic> styles$DashboardComponentHost = const [];

class _ViewDashboardComponentHost0 extends AppView<import1.DashboardComponent> {
  ViewDashboardComponent0 _compView_0;
  import1.DashboardComponent _DashboardComponent_0_5;
  _ViewDashboardComponentHost0(AppView<dynamic> parentView, int parentIndex) : super(import6.ViewType.host, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways);
  @override
  ComponentRef<import1.DashboardComponent> build() {
    _compView_0 = ViewDashboardComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    _DashboardComponent_0_5 = (import8.isDevMode
        ? import11.debugInjectorWrap(import1.DashboardComponent, () {
            return import1.DashboardComponent(this.injectorGet(import17.Store, viewData.parentIndex), this.injectorGet(import13.Router, viewData.parentIndex));
          })
        : import1.DashboardComponent(this.injectorGet(import17.Store, viewData.parentIndex), this.injectorGet(import13.Router, viewData.parentIndex)));
    _compView_0.create(_DashboardComponent_0_5, projectedNodes);
    init1(rootEl);
    return ComponentRef(0, this, rootEl, _DashboardComponent_0_5);
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = (this.cdState == 0);
    if (((!import16.AppViewUtils.throwOnChanges) && firstCheck)) {
      _DashboardComponent_0_5.ngOnInit();
    }
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroyInternalState();
  }
}

AppView<import1.DashboardComponent> viewFactory_DashboardComponentHost0(AppView<dynamic> parentView, int parentIndex) {
  return _ViewDashboardComponentHost0(parentView, parentIndex);
}

var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(DashboardComponent, DashboardComponentNgFactory);
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
}
