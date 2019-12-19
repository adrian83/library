// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'login_component.dart';
export 'login_component.dart';
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'auth_service.template.dart' as _ref0;
import 'error_component.template.dart' as _ref1;
import 'event_bus.template.dart' as _ref2;
import 'form_component.template.dart' as _ref3;
import 'info_component.template.dart' as _ref4;
import 'package:angular/angular.template.dart' as _ref5;
import 'package:angular_router/angular_router.template.dart' as _ref6;
import 'route_paths.template.dart' as _ref7;
import 'store.template.dart' as _ref8;
import 'user.template.dart' as _ref9;
import 'validation_component.template.dart' as _ref10;
import 'package:angular/src/core/linker/app_view.dart';
import 'login_component.dart' as import1;
import 'error_component.template.dart' as import2;
import 'error_component.dart' as import3;
import 'validation_component.template.dart' as import4;
import 'validation_component.dart' as import5;
import 'info_component.template.dart' as import6;
import 'info_component.dart' as import7;
import 'dart:html' as import8;
import 'package:angular/src/core/linker/style_encapsulation.dart' as import9;
import 'package:angular/src/core/linker/view_type.dart' as import10;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/runtime.dart' as import12;
import 'package:angular/angular.dart';
import 'package:angular/src/runtime/dom_helpers.dart' as import14;
import 'package:angular/src/core/linker/app_view_utils.dart' as import15;
import 'event_bus.dart' as import16;
import 'package:angular/src/di/errors.dart' as import17;
import 'auth_service.dart' as import18;
import 'package:http/src/client.dart' as import19;
import 'package:angular_router/src/router/router.dart' as import20;
import 'store.dart' as import21;

final List<dynamic> styles$LoginComponent = const [];

class ViewLoginComponent0 extends AppView<import1.LoginComponent> {
  import2.ViewErrorComponent0 _compView_4;
  import3.ErrorComponent _ErrorComponent_4_5;
  import4.ViewValidationComponent0 _compView_6;
  import5.ValidationComponent _ValidationComponent_6_5;
  import6.ViewInfoComponent0 _compView_8;
  import7.InfoComponent _InfoComponent_8_5;
  String _expr_0;
  var _expr_1;
  var _expr_2;
  var _expr_3;
  String _expr_4;
  var _expr_5;
  import8.InputElement _el_14;
  import8.InputElement _el_19;
  static import9.ComponentStyles _componentStyles;
  ViewLoginComponent0(AppView<dynamic> parentView, int parentIndex) : super(import10.ViewType.component, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    initComponentStyles();
    rootEl = import8.document.createElement('login');
  }
  static String get _debugComponentUrl {
    return (import12.isDevMode ? 'asset:todo_fe/lib/src/login_component.dart' : null);
  }

  @override
  ComponentRef<import1.LoginComponent> build() {
    final _rootEl = rootEl;
    final import8.HtmlElement parentRenderNode = initViewRoot(_rootEl);
    final doc = import8.document;
    final _el_0 = import14.appendElement(doc, parentRenderNode, 'h3');
    final _text_1 = import14.appendText(_el_0, 'Login');
    final _el_2 = import14.appendElement(doc, parentRenderNode, 'br');
    final _el_3 = import14.appendDiv(doc, parentRenderNode);
    _compView_4 = import2.ViewErrorComponent0(this, 4);
    final _el_4 = _compView_4.rootEl;
    _el_3.append(_el_4);
    _ErrorComponent_4_5 = import3.ErrorComponent();
    _compView_4.create0(_ErrorComponent_4_5);
    final _el_5 = import14.appendDiv(doc, parentRenderNode);
    _compView_6 = import4.ViewValidationComponent0(this, 6);
    final _el_6 = _compView_6.rootEl;
    _el_5.append(_el_6);
    _ValidationComponent_6_5 = import5.ValidationComponent();
    _compView_6.create0(_ValidationComponent_6_5);
    final _el_7 = import14.appendDiv(doc, parentRenderNode);
    _compView_8 = import6.ViewInfoComponent0(this, 8);
    final _el_8 = _compView_8.rootEl;
    _el_7.append(_el_8);
    _InfoComponent_8_5 = import7.InfoComponent();
    _compView_8.create0(_InfoComponent_8_5);
    final _el_9 = import14.appendDiv(doc, parentRenderNode);
    final _el_10 = import14.appendDiv(doc, _el_9);
    this.updateChildClass(_el_10, 'form-group');
    final _el_11 = import14.appendElement(doc, _el_10, 'label');
    import14.setAttribute(_el_11, 'for', 'exampleInputEmail1');
    final _text_12 = import14.appendText(_el_11, 'Email address');
    final _text_13 = import14.appendText(_el_10, ' ');
    _el_14 = import14.appendElement(doc, _el_10, 'input');
    import14.setAttribute(_el_14, 'aria-describedby', 'emailHelp');
    this.updateChildClass(_el_14, 'form-control');
    import14.setAttribute(_el_14, 'id', 'exampleInputEmail1');
    import14.setAttribute(_el_14, 'placeholder', 'Enter email');
    import14.setAttribute(_el_14, 'type', 'email');
    final _el_15 = import14.appendDiv(doc, _el_9);
    this.updateChildClass(_el_15, 'form-group');
    final _el_16 = import14.appendElement(doc, _el_15, 'label');
    import14.setAttribute(_el_16, 'for', 'exampleInputPassword1');
    final _text_17 = import14.appendText(_el_16, 'Password');
    final _text_18 = import14.appendText(_el_15, ' ');
    _el_19 = import14.appendElement(doc, _el_15, 'input');
    this.updateChildClass(_el_19, 'form-control');
    import14.setAttribute(_el_19, 'id', 'exampleInputPassword1');
    import14.setAttribute(_el_19, 'placeholder', 'Password');
    import14.setAttribute(_el_19, 'type', 'password');
    final _el_20 = import14.appendElement(doc, _el_9, 'button');
    this.updateChildClass(_el_20, 'btn btn-primary');
    final _text_21 = import14.appendText(_el_20, 'Login');
    _el_20.addEventListener('click', eventHandler1(_handle_click_20_0));
    init0();
  }

  @override
  void detectChangesInternal() {
    final _ctx = ctx;
    final currVal_0 = _ctx.errorMsg;
    if (import15.checkBinding(_expr_0, currVal_0)) {
      _ErrorComponent_4_5.message = currVal_0;
      _expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.hideError;
    if (import15.checkBinding(_expr_1, currVal_1)) {
      _ErrorComponent_4_5.hide = currVal_1;
      _expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.violations;
    if (import15.checkBinding(_expr_2, currVal_2)) {
      _ValidationComponent_6_5.violations = currVal_2;
      _expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.hideConstraintViolation;
    if (import15.checkBinding(_expr_3, currVal_3)) {
      _ValidationComponent_6_5.hide = currVal_3;
      _expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.infoMsg;
    if (import15.checkBinding(_expr_4, currVal_4)) {
      _InfoComponent_8_5.message = currVal_4;
      _expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.hideInfo;
    if (import15.checkBinding(_expr_5, currVal_5)) {
      _InfoComponent_8_5.hide = currVal_5;
      _expr_5 = currVal_5;
    }
    _compView_4.detectChanges();
    _compView_6.detectChanges();
    _compView_8.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_4.destroyInternalState();
    _compView_6.destroyInternalState();
    _compView_8.destroyInternalState();
  }

  void _handle_click_20_0($event) {
    final local_email = _el_14;
    final local_password = _el_19;
    final _ctx = ctx;
    _ctx.login(local_email.value, local_password.value);
  }

  @override
  void initComponentStyles() {
    var styles = _componentStyles;
    if (identical(styles, null)) {
      (_componentStyles = (styles = (_componentStyles = import9.ComponentStyles.unscoped(styles$LoginComponent, _debugComponentUrl))));
    }
    componentStyles = styles;
  }
}

const ComponentFactory<import1.LoginComponent> _LoginComponentNgFactory = const ComponentFactory('login', viewFactory_LoginComponentHost0);
ComponentFactory<import1.LoginComponent> get LoginComponentNgFactory {
  return _LoginComponentNgFactory;
}

final List<dynamic> styles$LoginComponentHost = const [];

class _ViewLoginComponentHost0 extends AppView<import1.LoginComponent> {
  ViewLoginComponent0 _compView_0;
  dynamic _AuthService_0_5;
  import16.EventBus _EventBus_0_6;
  import1.LoginComponent _LoginComponent_0_7;
  _ViewLoginComponentHost0(AppView<dynamic> parentView, int parentIndex) : super(import10.ViewType.host, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways);
  @override
  ComponentRef<import1.LoginComponent> build() {
    _compView_0 = ViewLoginComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    _AuthService_0_5 = (import12.isDevMode
        ? import17.debugInjectorWrap(import18.AuthService, () {
            return import18.AuthService(this.injectorGet(import19.Client, viewData.parentIndex));
          })
        : import18.AuthService(this.injectorGet(import19.Client, viewData.parentIndex)));
    _EventBus_0_6 = import16.EventBus();
    _LoginComponent_0_7 = (import12.isDevMode
        ? import17.debugInjectorWrap(import1.LoginComponent, () {
            return import1.LoginComponent(_AuthService_0_5, this.injectorGet(import20.Router, viewData.parentIndex), _EventBus_0_6, this.injectorGet(import21.Store, viewData.parentIndex));
          })
        : import1.LoginComponent(_AuthService_0_5, this.injectorGet(import20.Router, viewData.parentIndex), _EventBus_0_6, this.injectorGet(import21.Store, viewData.parentIndex)));
    _compView_0.create(_LoginComponent_0_7, projectedNodes);
    init1(rootEl);
    return ComponentRef(0, this, rootEl, _LoginComponent_0_7);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((0 == nodeIndex)) {
      if (identical(token, import18.AuthService)) {
        return _AuthService_0_5;
      }
      if (identical(token, import16.EventBus)) {
        return _EventBus_0_6;
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

AppView<import1.LoginComponent> viewFactory_LoginComponentHost0(AppView<dynamic> parentView, int parentIndex) {
  return _ViewLoginComponentHost0(parentView, parentIndex);
}

var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(LoginComponent, LoginComponentNgFactory);
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
  _ref5.initReflector();
  _ref6.initReflector();
  _ref7.initReflector();
  _ref8.initReflector();
  _ref9.initReflector();
  _ref10.initReflector();
}
