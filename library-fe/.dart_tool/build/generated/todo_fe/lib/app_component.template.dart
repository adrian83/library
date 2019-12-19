// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'app_component.dart';
export 'app_component.dart';
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_router/angular_router.template.dart' as _ref1;
import 'src/auth_service.template.dart' as _ref2;
import 'src/menu_component.template.dart' as _ref3;
import 'src/route_paths.template.dart' as _ref4;
import 'src/routes.template.dart' as _ref5;
import 'src/store.template.dart' as _ref6;
import 'src/todo_service.template.dart' as _ref7;
import 'package:angular/src/core/linker/app_view.dart';
import 'app_component.dart' as import1;
import 'src/menu_component.template.dart' as import2;
import 'src/event_bus.dart' as import3;
import 'src/menu_component.dart' as import4;
import 'src/store.dart' as import5;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular_router/src/directives/router_outlet_directive.dart' as import7;
import 'package:angular/src/core/linker/style_encapsulation.dart' as import8;
import 'package:angular/src/core/linker/view_type.dart' as import9;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'dart:html' as import11;
import 'package:angular/src/runtime.dart' as import12;
import 'package:angular/angular.dart';
import 'package:angular/src/runtime/dom_helpers.dart' as import14;
import 'package:angular/src/di/errors.dart' as import15;
import 'package:angular_router/src/router/router_outlet_token.dart' as import16;
import 'package:angular_router/src/router/router.dart' as import17;
import 'package:angular_router/src/router_hook.dart' as import18;
import 'package:angular/src/core/linker/app_view_utils.dart' as import19;
import 'src/routes.dart' as import20;
import 'src/auth_service.dart' as import21;
import 'package:http/src/client.dart' as import22;
import 'src/todo_service.dart' as import23;

final List<dynamic> styles$AppComponent = const [];

class ViewAppComponent0 extends AppView<import1.AppComponent> {
  import2.ViewMenuComponent0 _compView_0;
  import3.EventBus _EventBus_0_5;
  import4.MenuComponent _MenuComponent_0_6;
  import5.Store __Store_0_7;
  ViewContainer _appEl_3;
  import7.RouterOutlet _RouterOutlet_3_8;
  static import8.ComponentStyles _componentStyles;
  ViewAppComponent0(AppView<dynamic> parentView, int parentIndex) : super(import9.ViewType.component, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    initComponentStyles();
    rootEl = import11.document.createElement('my-app');
  }
  import5.Store get _Store_0_7 {
    if ((__Store_0_7 == null)) {
      (__Store_0_7 = import5.Store());
    }
    return __Store_0_7;
  }

  static String get _debugComponentUrl {
    return (import12.isDevMode ? 'asset:todo_fe/lib/app_component.dart' : null);
  }

  @override
  ComponentRef<import1.AppComponent> build() {
    final _rootEl = rootEl;
    final import11.HtmlElement parentRenderNode = initViewRoot(_rootEl);
    _compView_0 = import2.ViewMenuComponent0(this, 0);
    final _el_0 = _compView_0.rootEl;
    parentRenderNode.append(_el_0);
    _EventBus_0_5 = import3.EventBus();
    _MenuComponent_0_6 = import4.MenuComponent(_EventBus_0_5);
    _compView_0.create0(_MenuComponent_0_6);
    final doc = import11.document;
    final _el_1 = import14.appendDiv(doc, parentRenderNode);
    this.updateChildClass(_el_1, 'container text-center');
    final _el_2 = import14.appendElement(doc, _el_1, 'br');
    final _el_3 = import14.appendElement(doc, _el_1, 'router-outlet');
    _appEl_3 = ViewContainer(3, 1, this, _el_3);
    _RouterOutlet_3_8 = (import12.isDevMode
        ? import15.debugInjectorWrap(import7.RouterOutlet, () {
            return import7.RouterOutlet(parentView.injectorGetOptional(import16.RouterOutletToken, viewData.parentIndex), _appEl_3, parentView.injectorGet(import17.Router, viewData.parentIndex), parentView.injectorGetOptional(import18.RouterHook, viewData.parentIndex));
          })
        : import7.RouterOutlet(parentView.injectorGetOptional(import16.RouterOutletToken, viewData.parentIndex), _appEl_3, parentView.injectorGet(import17.Router, viewData.parentIndex), parentView.injectorGetOptional(import18.RouterHook, viewData.parentIndex)));
    final _el_4 = import14.appendElement(doc, _el_1, 'footer');
    this.updateChildClass(_el_4, 'pt-4 my-md-5 pt-md-5 border-top');
    final _el_5 = import14.appendDiv(doc, _el_4);
    this.updateChildClass(_el_5, 'row');
    final _el_6 = import14.appendDiv(doc, _el_5);
    this.updateChildClass(_el_6, 'col-12 col-md');
    final _el_7 = import14.appendElement(doc, _el_6, 'small');
    this.updateChildClass(_el_7, 'd-block mb-3 text-muted');
    final _text_8 = import14.appendText(_el_7, '© 2017-2019');
    init0();
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((0 == nodeIndex)) {
      if (identical(token, import3.EventBus)) {
        return _EventBus_0_5;
      }
      if (identical(token, import5.Store)) {
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
    if (firstCheck) {
      if (!identical(import20.Routes.all, null)) {
        (_RouterOutlet_3_8.routes = import20.Routes.all);
      }
    }
    if (((!import19.AppViewUtils.throwOnChanges) && firstCheck)) {
      _RouterOutlet_3_8.ngOnInit();
    }
    _appEl_3.detectChangesInNestedViews();
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _appEl_3.destroyNestedViews();
    _compView_0.destroyInternalState();
    _RouterOutlet_3_8.ngOnDestroy();
  }

  @override
  void initComponentStyles() {
    var styles = _componentStyles;
    if (identical(styles, null)) {
      (_componentStyles = (styles = (_componentStyles = import8.ComponentStyles.unscoped(styles$AppComponent, _debugComponentUrl))));
    }
    componentStyles = styles;
  }
}

const ComponentFactory<import1.AppComponent> _AppComponentNgFactory = const ComponentFactory('my-app', viewFactory_AppComponentHost0);
ComponentFactory<import1.AppComponent> get AppComponentNgFactory {
  return _AppComponentNgFactory;
}

final List<dynamic> styles$AppComponentHost = const [];

class _ViewAppComponentHost0 extends AppView<import1.AppComponent> {
  ViewAppComponent0 _compView_0;
  import1.AppComponent _AppComponent_0_5;
  dynamic __AuthService_0_6;
  import5.Store __Store_0_7;
  dynamic __TodoService_0_8;
  _ViewAppComponentHost0(AppView<dynamic> parentView, int parentIndex) : super(import9.ViewType.host, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways);
  dynamic get _AuthService_0_6 {
    if ((__AuthService_0_6 == null)) {
      (__AuthService_0_6 = (import12.isDevMode
          ? import15.debugInjectorWrap(import21.AuthService, () {
              return import21.AuthService(this.injectorGet(import22.Client, viewData.parentIndex));
            })
          : import21.AuthService(this.injectorGet(import22.Client, viewData.parentIndex))));
    }
    return __AuthService_0_6;
  }

  import5.Store get _Store_0_7 {
    if ((__Store_0_7 == null)) {
      (__Store_0_7 = import5.Store());
    }
    return __Store_0_7;
  }

  dynamic get _TodoService_0_8 {
    if ((__TodoService_0_8 == null)) {
      (__TodoService_0_8 = (import12.isDevMode
          ? import15.debugInjectorWrap(import23.TodoService, () {
              return import23.TodoService(this.injectorGet(import22.Client, viewData.parentIndex), _Store_0_7);
            })
          : import23.TodoService(this.injectorGet(import22.Client, viewData.parentIndex), _Store_0_7)));
    }
    return __TodoService_0_8;
  }

  @override
  ComponentRef<import1.AppComponent> build() {
    _compView_0 = ViewAppComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    _AppComponent_0_5 = import1.AppComponent();
    _compView_0.create(_AppComponent_0_5, projectedNodes);
    init1(rootEl);
    return ComponentRef(0, this, rootEl, _AppComponent_0_5);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((0 == nodeIndex)) {
      if (identical(token, import21.AuthService)) {
        return _AuthService_0_6;
      }
      if (identical(token, import5.Store)) {
        return _Store_0_7;
      }
      if (identical(token, import23.TodoService)) {
        return _TodoService_0_8;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroyInternalState();
  }
}

AppView<import1.AppComponent> viewFactory_AppComponentHost0(AppView<dynamic> parentView, int parentIndex) {
  return _ViewAppComponentHost0(parentView, parentIndex);
}

var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(AppComponent, AppComponentNgFactory);
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
  _ref5.initReflector();
  _ref6.initReflector();
  _ref7.initReflector();
}
