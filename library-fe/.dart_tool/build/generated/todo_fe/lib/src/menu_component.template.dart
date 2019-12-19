// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'menu_component.dart';
export 'menu_component.dart';
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'event_bus.template.dart' as _ref0;
import 'package:angular/angular.template.dart' as _ref1;
import 'package:angular_router/angular_router.template.dart' as _ref2;
import 'route_paths.template.dart' as _ref3;
import 'routes.template.dart' as _ref4;
import 'store.template.dart' as _ref5;
import 'package:angular/src/core/linker/app_view.dart';
import 'menu_component.dart' as import1;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/common/directives/ng_if.dart';
import 'package:angular/src/core/linker/style_encapsulation.dart' as import4;
import 'package:angular/src/core/linker/view_type.dart' as import5;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'dart:html' as import7;
import 'package:angular/src/runtime.dart' as import8;
import 'package:angular/angular.dart';
import 'package:angular/src/runtime/dom_helpers.dart' as import10;
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular_router/src/directives/router_link_directive.template.dart' as import12;
import 'package:angular_router/src/directives/router_link_active_directive.dart' as import13;
import 'package:angular/src/di/errors.dart' as import14;
import 'package:angular_router/src/directives/router_link_directive.dart' as import15;
import 'package:angular_router/src/router/router.dart' as import16;
import 'package:angular_router/src/location/location.dart' as import17;
import 'route_paths.dart' as import18;
import 'package:angular/src/core/linker/app_view_utils.dart' as import19;
import 'event_bus.dart' as import20;
import 'store.dart' as import21;

final List<dynamic> styles$MenuComponent = const [];

class ViewMenuComponent0 extends AppView<import1.MenuComponent> {
  ViewContainer _appEl_4;
  NgIf _NgIf_4_9;
  ViewContainer _appEl_6;
  NgIf _NgIf_6_9;
  ViewContainer _appEl_7;
  NgIf _NgIf_7_9;
  ViewContainer _appEl_9;
  NgIf _NgIf_9_9;
  static import4.ComponentStyles _componentStyles;
  ViewMenuComponent0(AppView<dynamic> parentView, int parentIndex) : super(import5.ViewType.component, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    initComponentStyles();
    rootEl = import7.document.createElement('menu');
  }
  static String get _debugComponentUrl {
    return (import8.isDevMode ? 'asset:todo_fe/lib/src/menu_component.dart' : null);
  }

  @override
  ComponentRef<import1.MenuComponent> build() {
    final _rootEl = rootEl;
    final import7.HtmlElement parentRenderNode = initViewRoot(_rootEl);
    final doc = import7.document;
    final _el_0 = import10.appendDiv(doc, parentRenderNode);
    this.updateChildClass(_el_0, 'd-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm');
    final _el_1 = import10.appendElement(doc, _el_0, 'h5');
    this.updateChildClass(_el_1, 'my-0 mr-md-auto font-weight-normal');
    final _text_2 = import10.appendText(_el_1, 'Todos');
    final _el_3 = import10.appendElement(doc, _el_0, 'nav');
    this.updateChildClass(_el_3, 'my-2 my-md-0 mr-md-3');
    final _anchor_4 = import10.appendAnchor(_el_3);
    _appEl_4 = ViewContainer(4, 3, this, _anchor_4);
    TemplateRef _TemplateRef_4_8 = TemplateRef(_appEl_4, viewFactory_MenuComponent1);
    _NgIf_4_9 = NgIf(_appEl_4, _TemplateRef_4_8);
    final _text_5 = import10.appendText(_el_3, ' ');
    final _anchor_6 = import10.appendAnchor(_el_3);
    _appEl_6 = ViewContainer(6, 3, this, _anchor_6);
    TemplateRef _TemplateRef_6_8 = TemplateRef(_appEl_6, viewFactory_MenuComponent2);
    _NgIf_6_9 = NgIf(_appEl_6, _TemplateRef_6_8);
    final _anchor_7 = import10.appendAnchor(_el_0);
    _appEl_7 = ViewContainer(7, 0, this, _anchor_7);
    TemplateRef _TemplateRef_7_8 = TemplateRef(_appEl_7, viewFactory_MenuComponent3);
    _NgIf_7_9 = NgIf(_appEl_7, _TemplateRef_7_8);
    final _text_8 = import10.appendText(_el_0, ' ');
    final _anchor_9 = import10.appendAnchor(_el_0);
    _appEl_9 = ViewContainer(9, 0, this, _anchor_9);
    TemplateRef _TemplateRef_9_8 = TemplateRef(_appEl_9, viewFactory_MenuComponent4);
    _NgIf_9_9 = NgIf(_appEl_9, _TemplateRef_9_8);
    init0();
  }

  @override
  void detectChangesInternal() {
    final _ctx = ctx;
    _NgIf_4_9.ngIf = (!_ctx.signedIn);
    _NgIf_6_9.ngIf = _ctx.signedIn;
    _NgIf_7_9.ngIf = (!_ctx.signedIn);
    _NgIf_9_9.ngIf = _ctx.signedIn;
    _appEl_4.detectChangesInNestedViews();
    _appEl_6.detectChangesInNestedViews();
    _appEl_7.detectChangesInNestedViews();
    _appEl_9.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    _appEl_4.destroyNestedViews();
    _appEl_6.destroyNestedViews();
    _appEl_7.destroyNestedViews();
    _appEl_9.destroyNestedViews();
  }

  @override
  void initComponentStyles() {
    var styles = _componentStyles;
    if (identical(styles, null)) {
      (_componentStyles = (styles = (_componentStyles = import4.ComponentStyles.unscoped(styles$MenuComponent, _debugComponentUrl))));
    }
    componentStyles = styles;
  }
}

const ComponentFactory<import1.MenuComponent> _MenuComponentNgFactory = const ComponentFactory('menu', viewFactory_MenuComponentHost0);
ComponentFactory<import1.MenuComponent> get MenuComponentNgFactory {
  return _MenuComponentNgFactory;
}

class _ViewMenuComponent1 extends AppView<import1.MenuComponent> {
  import12.RouterLinkNgCd _RouterLink_0_5;
  import13.RouterLinkActive _RouterLinkActive_0_6;
  String _expr_0;
  import7.AnchorElement _el_0;
  _ViewMenuComponent1(AppView<dynamic> parentView, int parentIndex) : super(import5.ViewType.embedded, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    initComponentStyles();
  }
  @override
  ComponentRef<import1.MenuComponent> build() {
    final doc = import7.document;
    _el_0 = doc.createElement('a');
    this.updateChildClass(_el_0, 'p-2 text-dark');
    _RouterLink_0_5 = import12.RouterLinkNgCd((import8.isDevMode
        ? import14.debugInjectorWrap(import15.RouterLink, () {
            return import15.RouterLink(parentView.parentView.injectorGet(import16.Router, parentView.viewData.parentIndex), parentView.parentView.injectorGet(import17.Location, parentView.viewData.parentIndex), null, _el_0);
          })
        : import15.RouterLink(parentView.parentView.injectorGet(import16.Router, parentView.viewData.parentIndex), parentView.parentView.injectorGet(import17.Location, parentView.viewData.parentIndex), null, _el_0)));
    _RouterLinkActive_0_6 = (import8.isDevMode
        ? import14.debugInjectorWrap(import13.RouterLinkActive, () {
            return import13.RouterLinkActive(_el_0, parentView.parentView.injectorGet(import16.Router, parentView.viewData.parentIndex));
          })
        : import13.RouterLinkActive(_el_0, parentView.parentView.injectorGet(import16.Router, parentView.viewData.parentIndex)));
    final _text_1 = import10.appendText(_el_0, 'Register');
    _RouterLinkActive_0_6.links = [_RouterLink_0_5.instance];
    _el_0.addEventListener('click', eventHandler1(_RouterLink_0_5.instance.onClick));
    init1(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = (this.cdState == 0);
    final currVal_0 = import18.RoutePaths.register.toUrl();
    if (import19.checkBinding(_expr_0, currVal_0)) {
      _RouterLink_0_5.instance.routerLink = currVal_0;
      _expr_0 = currVal_0;
    }
    if (firstCheck) {
      (_RouterLinkActive_0_6.routerLinkActive = 'active');
    }
    _RouterLink_0_5.detectHostChanges(this, _el_0);
    if ((!import19.AppViewUtils.throwOnChanges)) {
      if (firstCheck) {
        _RouterLinkActive_0_6.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    _RouterLink_0_5.instance.ngOnDestroy();
    _RouterLinkActive_0_6.ngOnDestroy();
  }
}

AppView<void> viewFactory_MenuComponent1(AppView<dynamic> parentView, int parentIndex) {
  return _ViewMenuComponent1(parentView, parentIndex);
}

class _ViewMenuComponent2 extends AppView<import1.MenuComponent> {
  import12.RouterLinkNgCd _RouterLink_0_5;
  import13.RouterLinkActive _RouterLinkActive_0_6;
  String _expr_0;
  import7.AnchorElement _el_0;
  _ViewMenuComponent2(AppView<dynamic> parentView, int parentIndex) : super(import5.ViewType.embedded, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    initComponentStyles();
  }
  @override
  ComponentRef<import1.MenuComponent> build() {
    final doc = import7.document;
    _el_0 = doc.createElement('a');
    this.updateChildClass(_el_0, 'p-2 text-dark');
    _RouterLink_0_5 = import12.RouterLinkNgCd((import8.isDevMode
        ? import14.debugInjectorWrap(import15.RouterLink, () {
            return import15.RouterLink(parentView.parentView.injectorGet(import16.Router, parentView.viewData.parentIndex), parentView.parentView.injectorGet(import17.Location, parentView.viewData.parentIndex), null, _el_0);
          })
        : import15.RouterLink(parentView.parentView.injectorGet(import16.Router, parentView.viewData.parentIndex), parentView.parentView.injectorGet(import17.Location, parentView.viewData.parentIndex), null, _el_0)));
    _RouterLinkActive_0_6 = (import8.isDevMode
        ? import14.debugInjectorWrap(import13.RouterLinkActive, () {
            return import13.RouterLinkActive(_el_0, parentView.parentView.injectorGet(import16.Router, parentView.viewData.parentIndex));
          })
        : import13.RouterLinkActive(_el_0, parentView.parentView.injectorGet(import16.Router, parentView.viewData.parentIndex)));
    final _text_1 = import10.appendText(_el_0, 'Todos');
    _RouterLinkActive_0_6.links = [_RouterLink_0_5.instance];
    _el_0.addEventListener('click', eventHandler1(_RouterLink_0_5.instance.onClick));
    init1(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = (this.cdState == 0);
    final currVal_0 = import18.RoutePaths.todos.toUrl();
    if (import19.checkBinding(_expr_0, currVal_0)) {
      _RouterLink_0_5.instance.routerLink = currVal_0;
      _expr_0 = currVal_0;
    }
    if (firstCheck) {
      (_RouterLinkActive_0_6.routerLinkActive = 'active');
    }
    _RouterLink_0_5.detectHostChanges(this, _el_0);
    if ((!import19.AppViewUtils.throwOnChanges)) {
      if (firstCheck) {
        _RouterLinkActive_0_6.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    _RouterLink_0_5.instance.ngOnDestroy();
    _RouterLinkActive_0_6.ngOnDestroy();
  }
}

AppView<void> viewFactory_MenuComponent2(AppView<dynamic> parentView, int parentIndex) {
  return _ViewMenuComponent2(parentView, parentIndex);
}

class _ViewMenuComponent3 extends AppView<import1.MenuComponent> {
  import12.RouterLinkNgCd _RouterLink_0_5;
  import13.RouterLinkActive _RouterLinkActive_0_6;
  String _expr_0;
  import7.AnchorElement _el_0;
  _ViewMenuComponent3(AppView<dynamic> parentView, int parentIndex) : super(import5.ViewType.embedded, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    initComponentStyles();
  }
  @override
  ComponentRef<import1.MenuComponent> build() {
    final doc = import7.document;
    _el_0 = doc.createElement('a');
    this.updateChildClass(_el_0, 'btn btn-outline-primary');
    _RouterLink_0_5 = import12.RouterLinkNgCd((import8.isDevMode
        ? import14.debugInjectorWrap(import15.RouterLink, () {
            return import15.RouterLink(parentView.parentView.injectorGet(import16.Router, parentView.viewData.parentIndex), parentView.parentView.injectorGet(import17.Location, parentView.viewData.parentIndex), null, _el_0);
          })
        : import15.RouterLink(parentView.parentView.injectorGet(import16.Router, parentView.viewData.parentIndex), parentView.parentView.injectorGet(import17.Location, parentView.viewData.parentIndex), null, _el_0)));
    _RouterLinkActive_0_6 = (import8.isDevMode
        ? import14.debugInjectorWrap(import13.RouterLinkActive, () {
            return import13.RouterLinkActive(_el_0, parentView.parentView.injectorGet(import16.Router, parentView.viewData.parentIndex));
          })
        : import13.RouterLinkActive(_el_0, parentView.parentView.injectorGet(import16.Router, parentView.viewData.parentIndex)));
    final _text_1 = import10.appendText(_el_0, 'Login');
    _RouterLinkActive_0_6.links = [_RouterLink_0_5.instance];
    _el_0.addEventListener('click', eventHandler1(_RouterLink_0_5.instance.onClick));
    init1(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = (this.cdState == 0);
    final currVal_0 = import18.RoutePaths.login.toUrl();
    if (import19.checkBinding(_expr_0, currVal_0)) {
      _RouterLink_0_5.instance.routerLink = currVal_0;
      _expr_0 = currVal_0;
    }
    if (firstCheck) {
      (_RouterLinkActive_0_6.routerLinkActive = 'active');
    }
    _RouterLink_0_5.detectHostChanges(this, _el_0);
    if ((!import19.AppViewUtils.throwOnChanges)) {
      if (firstCheck) {
        _RouterLinkActive_0_6.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    _RouterLink_0_5.instance.ngOnDestroy();
    _RouterLinkActive_0_6.ngOnDestroy();
  }
}

AppView<void> viewFactory_MenuComponent3(AppView<dynamic> parentView, int parentIndex) {
  return _ViewMenuComponent3(parentView, parentIndex);
}

class _ViewMenuComponent4 extends AppView<import1.MenuComponent> {
  import12.RouterLinkNgCd _RouterLink_0_5;
  import13.RouterLinkActive _RouterLinkActive_0_6;
  String _expr_0;
  import7.AnchorElement _el_0;
  _ViewMenuComponent4(AppView<dynamic> parentView, int parentIndex) : super(import5.ViewType.embedded, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    initComponentStyles();
  }
  @override
  ComponentRef<import1.MenuComponent> build() {
    final doc = import7.document;
    _el_0 = doc.createElement('a');
    this.updateChildClass(_el_0, 'btn btn-outline-primary');
    _RouterLink_0_5 = import12.RouterLinkNgCd((import8.isDevMode
        ? import14.debugInjectorWrap(import15.RouterLink, () {
            return import15.RouterLink(parentView.parentView.injectorGet(import16.Router, parentView.viewData.parentIndex), parentView.parentView.injectorGet(import17.Location, parentView.viewData.parentIndex), null, _el_0);
          })
        : import15.RouterLink(parentView.parentView.injectorGet(import16.Router, parentView.viewData.parentIndex), parentView.parentView.injectorGet(import17.Location, parentView.viewData.parentIndex), null, _el_0)));
    _RouterLinkActive_0_6 = (import8.isDevMode
        ? import14.debugInjectorWrap(import13.RouterLinkActive, () {
            return import13.RouterLinkActive(_el_0, parentView.parentView.injectorGet(import16.Router, parentView.viewData.parentIndex));
          })
        : import13.RouterLinkActive(_el_0, parentView.parentView.injectorGet(import16.Router, parentView.viewData.parentIndex)));
    final _text_1 = import10.appendText(_el_0, 'Logout');
    _RouterLinkActive_0_6.links = [_RouterLink_0_5.instance];
    _el_0.addEventListener('click', eventHandler1(_RouterLink_0_5.instance.onClick));
    init1(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = (this.cdState == 0);
    final currVal_0 = import18.RoutePaths.logout.toUrl();
    if (import19.checkBinding(_expr_0, currVal_0)) {
      _RouterLink_0_5.instance.routerLink = currVal_0;
      _expr_0 = currVal_0;
    }
    if (firstCheck) {
      (_RouterLinkActive_0_6.routerLinkActive = 'active');
    }
    _RouterLink_0_5.detectHostChanges(this, _el_0);
    if ((!import19.AppViewUtils.throwOnChanges)) {
      if (firstCheck) {
        _RouterLinkActive_0_6.ngAfterViewInit();
      }
    }
  }

  @override
  void destroyInternal() {
    _RouterLink_0_5.instance.ngOnDestroy();
    _RouterLinkActive_0_6.ngOnDestroy();
  }
}

AppView<void> viewFactory_MenuComponent4(AppView<dynamic> parentView, int parentIndex) {
  return _ViewMenuComponent4(parentView, parentIndex);
}

final List<dynamic> styles$MenuComponentHost = const [];

class _ViewMenuComponentHost0 extends AppView<import1.MenuComponent> {
  ViewMenuComponent0 _compView_0;
  import20.EventBus _EventBus_0_5;
  import1.MenuComponent _MenuComponent_0_6;
  import21.Store __Store_0_7;
  _ViewMenuComponentHost0(AppView<dynamic> parentView, int parentIndex) : super(import5.ViewType.host, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways);
  import21.Store get _Store_0_7 {
    if ((__Store_0_7 == null)) {
      (__Store_0_7 = import21.Store());
    }
    return __Store_0_7;
  }

  @override
  ComponentRef<import1.MenuComponent> build() {
    _compView_0 = ViewMenuComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    _EventBus_0_5 = import20.EventBus();
    _MenuComponent_0_6 = import1.MenuComponent(_EventBus_0_5);
    _compView_0.create(_MenuComponent_0_6, projectedNodes);
    init1(rootEl);
    return ComponentRef(0, this, rootEl, _MenuComponent_0_6);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((0 == nodeIndex)) {
      if (identical(token, import20.EventBus)) {
        return _EventBus_0_5;
      }
      if (identical(token, import21.Store)) {
        return _Store_0_7;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = (this.cdState == 0);
    if (((!import19.AppViewUtils.throwOnChanges) && firstCheck)) {
      _MenuComponent_0_6.ngOnInit();
    }
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroyInternalState();
  }
}

AppView<import1.MenuComponent> viewFactory_MenuComponentHost0(AppView<dynamic> parentView, int parentIndex) {
  return _ViewMenuComponentHost0(parentView, parentIndex);
}

var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(MenuComponent, MenuComponentNgFactory);
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
  _ref5.initReflector();
}
