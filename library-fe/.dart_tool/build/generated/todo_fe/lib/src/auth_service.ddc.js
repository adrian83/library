define(['dart_sdk', 'packages/angular/src/bootstrap/modules', 'packages/angular/src/core/change_detection/change_detection', 'packages/angular_router/angular_router.template', 'packages/angular_router/src/constants', 'packages/angular_router/src/directives/router_outlet_directive', 'packages/angular/angular.template', 'packages/http/src/base_client', 'packages/angular/src/runtime/text_binding', 'packages/angular/src/runtime/interpolate', 'packages/angular_forms/src/directives', 'packages/angular_forms/angular_forms.template'], function(dart_sdk, packages__angular__src__bootstrap__modules, packages__angular__src__core__change_detection__change_detection, packages__angular_router__angular_router$46template, packages__angular_router__src__constants, packages__angular_router__src__directives__router_outlet_directive, packages__angular__angular$46template, packages__http__src__base_client, packages__angular__src__runtime__text_binding, packages__angular__src__runtime__interpolate, packages__angular_forms__src__directives, packages__angular_forms__angular_forms$46template) {
  'use strict';
  const core = dart_sdk.core;
  const html = dart_sdk.html;
  const _interceptors = dart_sdk._interceptors;
  const async = dart_sdk.async;
  const convert = dart_sdk.convert;
  const _js_helper = dart_sdk._js_helper;
  const dart = dart_sdk.dart;
  const dartx = dart_sdk.dartx;
  const view_type = packages__angular__src__bootstrap__modules.src__core__linker__view_type;
  const dom_helpers = packages__angular__src__bootstrap__modules.src__runtime__dom_helpers;
  const app_view_utils = packages__angular__src__bootstrap__modules.src__core__linker__app_view_utils;
  const style_encapsulation = packages__angular__src__bootstrap__modules.src__core__linker__style_encapsulation;
  const app_view = packages__angular__src__bootstrap__modules.src__core__linker__app_view;
  const component_factory = packages__angular__src__bootstrap__modules.src__core__linker__component_factory;
  const view_container = packages__angular__src__bootstrap__modules.src__core__linker__view_container;
  const template_ref = packages__angular__src__bootstrap__modules.src__core__linker__template_ref;
  const ng_if = packages__angular__src__bootstrap__modules.src__common__directives__ng_if;
  const ng_for = packages__angular__src__bootstrap__modules.src__common__directives__ng_for;
  const optimizations = packages__angular__src__core__change_detection__change_detection.src__runtime__optimizations;
  const errors = packages__angular__src__core__change_detection__change_detection.src__di__errors;
  const lifecycle_hooks = packages__angular__src__core__change_detection__change_detection.src__core__metadata__lifecycle_hooks;
  const reflector = packages__angular__src__core__change_detection__change_detection.src__di__reflector;
  const opaque_token = packages__angular__src__core__change_detection__change_detection.src__core__di__opaque_token;
  const router_link_directive$46template = packages__angular_router__angular_router$46template.src__directives__router_link_directive$46template;
  const angular_router$46template = packages__angular_router__angular_router$46template.angular_router$46template;
  const router_link_directive = packages__angular_router__src__constants.src__directives__router_link_directive;
  const router_link_active_directive = packages__angular_router__src__constants.src__directives__router_link_active_directive;
  const router = packages__angular_router__src__directives__router_outlet_directive.src__router__router;
  const location = packages__angular_router__src__directives__router_outlet_directive.src__location__location;
  const route_path = packages__angular_router__src__directives__router_outlet_directive.src__route_path;
  const route_definition = packages__angular_router__src__directives__router_outlet_directive.src__route_definition;
  const angular$46template = packages__angular__angular$46template.angular$46template;
  const response = packages__http__src__base_client.src__response;
  const client = packages__http__src__base_client.src__client;
  const text_binding = packages__angular__src__runtime__text_binding.src__runtime__text_binding;
  const interpolate = packages__angular__src__runtime__interpolate.src__runtime__interpolate;
  const default_value_accessor = packages__angular_forms__src__directives.src__directives__default_value_accessor;
  const control_value_accessor = packages__angular_forms__src__directives.src__directives__control_value_accessor;
  const ng_model = packages__angular_forms__src__directives.src__directives__ng_model;
  const ng_control = packages__angular_forms__src__directives.src__directives__ng_control;
  const angular_forms$46template = packages__angular_forms__angular_forms$46template.angular_forms$46template;
  const info_component = Object.create(dart.library);
  const error = Object.create(dart.library);
  const dashboard_component$46template = Object.create(dart.library);
  const store = Object.create(dart.library);
  const route_paths = Object.create(dart.library);
  const dashboard_component = Object.create(dart.library);
  const routes = Object.create(dart.library);
  const logout_component$46template = Object.create(dart.library);
  const event_bus = Object.create(dart.library);
  const logout_component = Object.create(dart.library);
  const store$46template = Object.create(dart.library);
  const event_bus$46template = Object.create(dart.library);
  const login_component$46template = Object.create(dart.library);
  const auth_service = Object.create(dart.library);
  const user = Object.create(dart.library);
  const info_component$46template = Object.create(dart.library);
  const validation_component = Object.create(dart.library);
  const validation_component$46template = Object.create(dart.library);
  const error$46template = Object.create(dart.library);
  const error_component = Object.create(dart.library);
  const error_component$46template = Object.create(dart.library);
  const login_component = Object.create(dart.library);
  const form_component = Object.create(dart.library);
  const user$46template = Object.create(dart.library);
  const route_paths$46template = Object.create(dart.library);
  const form_component$46template = Object.create(dart.library);
  const auth_service$46template = Object.create(dart.library);
  const register_component$46template = Object.create(dart.library);
  const register_component = Object.create(dart.library);
  const todo_list_component$46template = Object.create(dart.library);
  const todo_service = Object.create(dart.library);
  const todo$ = Object.create(dart.library);
  const todo_list_component = Object.create(dart.library);
  const todo_service$46template = Object.create(dart.library);
  const todo$46template = Object.create(dart.library);
  const routes$46template = Object.create(dart.library);
  const menu_component = Object.create(dart.library);
  const $_get = dartx._get;
  const $createElement = dartx.createElement;
  const $addEventListener = dartx.addEventListener;
  const $_set = dartx._set;
  const $append = dartx.append;
  const $map = dartx.map;
  const $toList = dartx.toList;
  const $length = dartx.length;
  const $compareTo = dartx.compareTo;
  const $sort = dartx.sort;
  const $insert = dartx.insert;
  const $removeWhere = dartx.removeWhere;
  let VoidToRouterLink = () => (VoidToRouterLink = dart.constFn(dart.fnType(router_link_directive.RouterLink, [])))();
  let VoidToRouterLinkActive = () => (VoidToRouterLinkActive = dart.constFn(dart.fnType(router_link_active_directive.RouterLinkActive, [])))();
  let JSArrayOfRouterLink = () => (JSArrayOfRouterLink = dart.constFn(_interceptors.JSArray$(router_link_directive.RouterLink)))();
  let VoidToDashboardComponent = () => (VoidToDashboardComponent = dart.constFn(dart.fnType(dashboard_component.DashboardComponent, [])))();
  let ComponentRefOfDashboardComponent = () => (ComponentRefOfDashboardComponent = dart.constFn(component_factory.ComponentRef$(dashboard_component.DashboardComponent)))();
  let ComponentFactoryOfDashboardComponent = () => (ComponentFactoryOfDashboardComponent = dart.constFn(component_factory.ComponentFactory$(dashboard_component.DashboardComponent)))();
  let AppViewOfDashboardComponent = () => (AppViewOfDashboardComponent = dart.constFn(app_view.AppView$(dashboard_component.DashboardComponent)))();
  let AppViewAndintToAppViewOfDashboardComponent = () => (AppViewAndintToAppViewOfDashboardComponent = dart.constFn(dart.fnType(AppViewOfDashboardComponent(), [app_view.AppView, core.int])))();
  let JSArrayOfRouteDefinition = () => (JSArrayOfRouteDefinition = dart.constFn(_interceptors.JSArray$(route_definition.RouteDefinition)))();
  let ComponentRefOfLogoutComponent = () => (ComponentRefOfLogoutComponent = dart.constFn(component_factory.ComponentRef$(logout_component.LogoutComponent)))();
  let ComponentFactoryOfLogoutComponent = () => (ComponentFactoryOfLogoutComponent = dart.constFn(component_factory.ComponentFactory$(logout_component.LogoutComponent)))();
  let AppViewOfLogoutComponent = () => (AppViewOfLogoutComponent = dart.constFn(app_view.AppView$(logout_component.LogoutComponent)))();
  let AppViewAndintToAppViewOfLogoutComponent = () => (AppViewAndintToAppViewOfLogoutComponent = dart.constFn(dart.fnType(AppViewOfLogoutComponent(), [app_view.AppView, core.int])))();
  let StreamControllerOfbool = () => (StreamControllerOfbool = dart.constFn(async.StreamController$(core.bool)))();
  let JSArrayOfConstraintViolation = () => (JSArrayOfConstraintViolation = dart.constFn(_interceptors.JSArray$(error.ConstraintViolation)))();
  let MapOfString$dynamic = () => (MapOfString$dynamic = dart.constFn(core.Map$(core.String, dart.dynamic)))();
  let dynamicToConstraintViolation = () => (dynamicToConstraintViolation = dart.constFn(dart.fnType(error.ConstraintViolation, [dart.dynamic])))();
  let ResponseToNull = () => (ResponseToNull = dart.constFn(dart.fnType(core.Null, [response.Response])))();
  let dynamicToNull = () => (dynamicToNull = dart.constFn(dart.fnType(core.Null, [dart.dynamic])))();
  let VoidToString = () => (VoidToString = dart.constFn(dart.fnType(core.String, [])))();
  let ListOfConstraintViolation = () => (ListOfConstraintViolation = dart.constFn(core.List$(error.ConstraintViolation)))();
  let VoidToListOfConstraintViolation = () => (VoidToListOfConstraintViolation = dart.constFn(dart.fnType(ListOfConstraintViolation(), [])))();
  let VoidToAuthService = () => (VoidToAuthService = dart.constFn(dart.fnType(auth_service.AuthService, [])))();
  let VoidToLoginComponent = () => (VoidToLoginComponent = dart.constFn(dart.fnType(login_component.LoginComponent, [])))();
  let ComponentRefOfLoginComponent = () => (ComponentRefOfLoginComponent = dart.constFn(component_factory.ComponentRef$(login_component.LoginComponent)))();
  let ComponentFactoryOfLoginComponent = () => (ComponentFactoryOfLoginComponent = dart.constFn(component_factory.ComponentFactory$(login_component.LoginComponent)))();
  let AppViewOfLoginComponent = () => (AppViewOfLoginComponent = dart.constFn(app_view.AppView$(login_component.LoginComponent)))();
  let AppViewAndintToAppViewOfLoginComponent = () => (AppViewAndintToAppViewOfLoginComponent = dart.constFn(dart.fnType(AppViewOfLoginComponent(), [app_view.AppView, core.int])))();
  let IdentityMapOfString$String = () => (IdentityMapOfString$String = dart.constFn(_js_helper.IdentityMap$(core.String, core.String)))();
  let AppViewOfvoid = () => (AppViewOfvoid = dart.constFn(app_view.AppView$(dart.void)))();
  let AppViewAndintToAppViewOfvoid = () => (AppViewAndintToAppViewOfvoid = dart.constFn(dart.fnType(AppViewOfvoid(), [app_view.AppView, core.int])))();
  let ComponentRefOfInfoComponent = () => (ComponentRefOfInfoComponent = dart.constFn(component_factory.ComponentRef$(info_component.InfoComponent)))();
  let ComponentFactoryOfInfoComponent = () => (ComponentFactoryOfInfoComponent = dart.constFn(component_factory.ComponentFactory$(info_component.InfoComponent)))();
  let AppViewOfInfoComponent = () => (AppViewOfInfoComponent = dart.constFn(app_view.AppView$(info_component.InfoComponent)))();
  let AppViewAndintToAppViewOfInfoComponent = () => (AppViewAndintToAppViewOfInfoComponent = dart.constFn(dart.fnType(AppViewOfInfoComponent(), [app_view.AppView, core.int])))();
  let ComponentRefOfValidationComponent = () => (ComponentRefOfValidationComponent = dart.constFn(component_factory.ComponentRef$(validation_component.ValidationComponent)))();
  let ComponentFactoryOfValidationComponent = () => (ComponentFactoryOfValidationComponent = dart.constFn(component_factory.ComponentFactory$(validation_component.ValidationComponent)))();
  let AppViewOfValidationComponent = () => (AppViewOfValidationComponent = dart.constFn(app_view.AppView$(validation_component.ValidationComponent)))();
  let AppViewAndintToAppViewOfValidationComponent = () => (AppViewAndintToAppViewOfValidationComponent = dart.constFn(dart.fnType(AppViewOfValidationComponent(), [app_view.AppView, core.int])))();
  let ComponentRefOfErrorComponent = () => (ComponentRefOfErrorComponent = dart.constFn(component_factory.ComponentRef$(error_component.ErrorComponent)))();
  let ComponentFactoryOfErrorComponent = () => (ComponentFactoryOfErrorComponent = dart.constFn(component_factory.ComponentFactory$(error_component.ErrorComponent)))();
  let AppViewOfErrorComponent = () => (AppViewOfErrorComponent = dart.constFn(app_view.AppView$(error_component.ErrorComponent)))();
  let AppViewAndintToAppViewOfErrorComponent = () => (AppViewAndintToAppViewOfErrorComponent = dart.constFn(dart.fnType(AppViewOfErrorComponent(), [app_view.AppView, core.int])))();
  let VoidToRegisterComponent = () => (VoidToRegisterComponent = dart.constFn(dart.fnType(register_component.RegisterComponent, [])))();
  let ComponentRefOfRegisterComponent = () => (ComponentRefOfRegisterComponent = dart.constFn(component_factory.ComponentRef$(register_component.RegisterComponent)))();
  let ComponentFactoryOfRegisterComponent = () => (ComponentFactoryOfRegisterComponent = dart.constFn(component_factory.ComponentFactory$(register_component.RegisterComponent)))();
  let AppViewOfRegisterComponent = () => (AppViewOfRegisterComponent = dart.constFn(app_view.AppView$(register_component.RegisterComponent)))();
  let AppViewAndintToAppViewOfRegisterComponent = () => (AppViewAndintToAppViewOfRegisterComponent = dart.constFn(dart.fnType(AppViewOfRegisterComponent(), [app_view.AppView, core.int])))();
  let JSArrayOfTodo = () => (JSArrayOfTodo = dart.constFn(_interceptors.JSArray$(todo$.Todo)))();
  let dynamicToTodo = () => (dynamicToTodo = dart.constFn(dart.fnType(todo$.Todo, [dart.dynamic])))();
  let TodoAndTodoToint = () => (TodoAndTodoToint = dart.constFn(dart.fnType(core.int, [todo$.Todo, todo$.Todo])))();
  let TodoTobool = () => (TodoTobool = dart.constFn(dart.fnType(core.bool, [todo$.Todo])))();
  let JSArrayOfControlValueAccessor = () => (JSArrayOfControlValueAccessor = dart.constFn(_interceptors.JSArray$(control_value_accessor.ControlValueAccessor)))();
  let JSArrayOfObject = () => (JSArrayOfObject = dart.constFn(_interceptors.JSArray$(core.Object)))();
  let StreamSubscriptionOfvoid = () => (StreamSubscriptionOfvoid = dart.constFn(async.StreamSubscription$(dart.void)))();
  let JSArrayOfStreamSubscriptionOfvoid = () => (JSArrayOfStreamSubscriptionOfvoid = dart.constFn(_interceptors.JSArray$(StreamSubscriptionOfvoid())))();
  let MultiTokenOfControlValueAccessor = () => (MultiTokenOfControlValueAccessor = dart.constFn(opaque_token.MultiToken$(control_value_accessor.ControlValueAccessor)))();
  let VoidToTodoService = () => (VoidToTodoService = dart.constFn(dart.fnType(todo_service.TodoService, [])))();
  let VoidToTodoListComponent = () => (VoidToTodoListComponent = dart.constFn(dart.fnType(todo_list_component.TodoListComponent, [])))();
  let ComponentRefOfTodoListComponent = () => (ComponentRefOfTodoListComponent = dart.constFn(component_factory.ComponentRef$(todo_list_component.TodoListComponent)))();
  let ComponentFactoryOfTodoListComponent = () => (ComponentFactoryOfTodoListComponent = dart.constFn(component_factory.ComponentFactory$(todo_list_component.TodoListComponent)))();
  let AppViewOfTodoListComponent = () => (AppViewOfTodoListComponent = dart.constFn(app_view.AppView$(todo_list_component.TodoListComponent)))();
  let AppViewAndintToAppViewOfTodoListComponent = () => (AppViewAndintToAppViewOfTodoListComponent = dart.constFn(dart.fnType(AppViewOfTodoListComponent(), [app_view.AppView, core.int])))();
  let FutureOfResponse = () => (FutureOfResponse = dart.constFn(async.Future$(response.Response)))();
  let MapOfString$String = () => (MapOfString$String = dart.constFn(core.Map$(core.String, core.String)))();
  let MapOfString$StringToFutureOfResponse = () => (MapOfString$StringToFutureOfResponse = dart.constFn(dart.fnType(FutureOfResponse(), [MapOfString$String()])))();
  let VoidToMapOfString$String = () => (VoidToMapOfString$String = dart.constFn(dart.fnType(MapOfString$String(), [])))();
  let FutureOfMapOfString$String = () => (FutureOfMapOfString$String = dart.constFn(async.Future$(MapOfString$String())))();
  let boolToNull = () => (boolToNull = dart.constFn(dart.fnType(core.Null, [core.bool])))();
  const CT = Object.create(null);
  dart.defineLazy(CT, {
    get C0() {
      return C0 = dart.constList([], dart.dynamic);
    },
    get C2() {
      return C2 = dart.fn(dashboard_component$46template.viewFactory_DashboardComponentHost0, AppViewAndintToAppViewOfDashboardComponent());
    },
    get C1() {
      return C1 = dart.const({
        __proto__: ComponentFactoryOfDashboardComponent().prototype,
        [ComponentFactory__viewFactory]: C2 || CT.C2,
        [ComponentFactory_selector]: "dashboard"
      });
    },
    get C4() {
      return C4 = dart.fn(logout_component$46template.viewFactory_LogoutComponentHost0, AppViewAndintToAppViewOfLogoutComponent());
    },
    get C3() {
      return C3 = dart.const({
        __proto__: ComponentFactoryOfLogoutComponent().prototype,
        [ComponentFactory__viewFactory]: C4 || CT.C4,
        [ComponentFactory_selector]: "logout"
      });
    },
    get C6() {
      return C6 = dart.fn(login_component$46template.viewFactory_LoginComponentHost0, AppViewAndintToAppViewOfLoginComponent());
    },
    get C5() {
      return C5 = dart.const({
        __proto__: ComponentFactoryOfLoginComponent().prototype,
        [ComponentFactory__viewFactory]: C6 || CT.C6,
        [ComponentFactory_selector]: "login"
      });
    },
    get C7() {
      return C7 = dart.fn(info_component$46template.viewFactory_InfoComponent1, AppViewAndintToAppViewOfvoid());
    },
    get C9() {
      return C9 = dart.fn(info_component$46template.viewFactory_InfoComponentHost0, AppViewAndintToAppViewOfInfoComponent());
    },
    get C8() {
      return C8 = dart.const({
        __proto__: ComponentFactoryOfInfoComponent().prototype,
        [ComponentFactory__viewFactory]: C9 || CT.C9,
        [ComponentFactory_selector]: "info"
      });
    },
    get C10() {
      return C10 = dart.fn(validation_component$46template.viewFactory_ValidationComponent1, AppViewAndintToAppViewOfvoid());
    },
    get C11() {
      return C11 = dart.fn(validation_component$46template.viewFactory_ValidationComponent2, AppViewAndintToAppViewOfvoid());
    },
    get C13() {
      return C13 = dart.fn(validation_component$46template.viewFactory_ValidationComponentHost0, AppViewAndintToAppViewOfValidationComponent());
    },
    get C12() {
      return C12 = dart.const({
        __proto__: ComponentFactoryOfValidationComponent().prototype,
        [ComponentFactory__viewFactory]: C13 || CT.C13,
        [ComponentFactory_selector]: "validation"
      });
    },
    get C14() {
      return C14 = dart.fn(error_component$46template.viewFactory_ErrorComponent1, AppViewAndintToAppViewOfvoid());
    },
    get C16() {
      return C16 = dart.fn(error_component$46template.viewFactory_ErrorComponentHost0, AppViewAndintToAppViewOfErrorComponent());
    },
    get C15() {
      return C15 = dart.const({
        __proto__: ComponentFactoryOfErrorComponent().prototype,
        [ComponentFactory__viewFactory]: C16 || CT.C16,
        [ComponentFactory_selector]: "error"
      });
    },
    get C18() {
      return C18 = dart.fn(register_component$46template.viewFactory_RegisterComponentHost0, AppViewAndintToAppViewOfRegisterComponent());
    },
    get C17() {
      return C17 = dart.const({
        __proto__: ComponentFactoryOfRegisterComponent().prototype,
        [ComponentFactory__viewFactory]: C18 || CT.C18,
        [ComponentFactory_selector]: "register"
      });
    },
    get C19() {
      return C19 = dart.fn(todo_list_component$46template.viewFactory_TodoListComponent1, AppViewAndintToAppViewOfvoid());
    },
    get C20() {
      return C20 = dart.fn(todo_list_component$46template.viewFactory_TodoListComponent2, AppViewAndintToAppViewOfvoid());
    },
    get C21() {
      return C21 = dart.fn(todo_list_component$46template.viewFactory_TodoListComponent3, AppViewAndintToAppViewOfvoid());
    },
    get C22() {
      return C22 = dart.const({
        __proto__: MultiTokenOfControlValueAccessor().prototype,
        [OpaqueToken__uniqueName]: "NgValueAccessor"
      });
    },
    get C24() {
      return C24 = dart.fn(todo_list_component$46template.viewFactory_TodoListComponentHost0, AppViewAndintToAppViewOfTodoListComponent());
    },
    get C23() {
      return C23 = dart.const({
        __proto__: ComponentFactoryOfTodoListComponent().prototype,
        [ComponentFactory__viewFactory]: C24 || CT.C24,
        [ComponentFactory_selector]: "todo-list"
      });
    }
  });
  const InfoComponent_message = dart.privateName(info_component, "InfoComponent.message");
  const InfoComponent_hide = dart.privateName(info_component, "InfoComponent.hide");
  info_component.InfoComponent = class InfoComponent extends core.Object {
    get message() {
      return this[message];
    }
    set message(value) {
      this[message] = value;
    }
    get hide() {
      return this[hide];
    }
    set hide(value) {
      this[hide] = value;
    }
    close() {
      return dart.dsend(this, 'hide', []);
    }
  };
  (info_component.InfoComponent.new = function() {
    this[message] = null;
    this[hide] = null;
    ;
  }).prototype = info_component.InfoComponent.prototype;
  dart.addTypeTests(info_component.InfoComponent);
  const message = InfoComponent_message;
  const hide = InfoComponent_hide;
  dart.setMethodSignature(info_component.InfoComponent, () => ({
    __proto__: dart.getMethods(info_component.InfoComponent.__proto__),
    close: dart.fnType(dart.void, [])
  }));
  dart.setLibraryUri(info_component.InfoComponent, "package:todo_fe/src/info_component.dart");
  dart.setFieldSignature(info_component.InfoComponent, () => ({
    __proto__: dart.getFields(info_component.InfoComponent.__proto__),
    message: dart.fieldType(core.String),
    hide: dart.fieldType(core.Function)
  }));
  const ConstraintViolation_field = dart.privateName(error, "ConstraintViolation.field");
  const ConstraintViolation_message = dart.privateName(error, "ConstraintViolation.message");
  error.ConstraintViolation = class ConstraintViolation extends core.Object {
    get field() {
      return this[field$];
    }
    set field(value) {
      this[field$] = value;
    }
    get message() {
      return this[message$];
    }
    set message(value) {
      this[message$] = value;
    }
    static fromJson(json) {
      return new error.ConstraintViolation.new(core.String._check(json[$_get]("field")), core.String._check(json[$_get]("message")));
    }
  };
  (error.ConstraintViolation.new = function(field, message) {
    this[field$] = field;
    this[message$] = message;
    ;
  }).prototype = error.ConstraintViolation.prototype;
  dart.addTypeTests(error.ConstraintViolation);
  const field$ = ConstraintViolation_field;
  const message$ = ConstraintViolation_message;
  dart.setLibraryUri(error.ConstraintViolation, "package:todo_fe/src/error.dart");
  dart.setFieldSignature(error.ConstraintViolation, () => ({
    __proto__: dart.getFields(error.ConstraintViolation.__proto__),
    field: dart.fieldType(core.String),
    message: dart.fieldType(core.String)
  }));
  const _RouterLink_7_5 = dart.privateName(dashboard_component$46template, "_RouterLink_7_5");
  const _RouterLinkActive_7_6 = dart.privateName(dashboard_component$46template, "_RouterLinkActive_7_6");
  const _expr_0 = dart.privateName(dashboard_component$46template, "_expr_0");
  const _el_7 = dart.privateName(dashboard_component$46template, "_el_7");
  const _store$ = dart.privateName(dashboard_component, "_store");
  const _router$ = dart.privateName(dashboard_component, "_router");
  dashboard_component.DashboardComponent = class DashboardComponent extends core.Object {
    ngOnInit() {
      if (this[_store$].getAuthToken() == null) {
        this[_router$].navigate(route_paths.RoutePaths.login.toUrl());
      }
    }
  };
  (dashboard_component.DashboardComponent.new = function(_store, _router) {
    this[_store$] = _store;
    this[_router$] = _router;
    ;
  }).prototype = dashboard_component.DashboardComponent.prototype;
  dart.addTypeTests(dashboard_component.DashboardComponent);
  dashboard_component.DashboardComponent[dart.implements] = () => [lifecycle_hooks.OnInit];
  dart.setMethodSignature(dashboard_component.DashboardComponent, () => ({
    __proto__: dart.getMethods(dashboard_component.DashboardComponent.__proto__),
    ngOnInit: dart.fnType(dart.void, [])
  }));
  dart.setLibraryUri(dashboard_component.DashboardComponent, "package:todo_fe/src/dashboard_component.dart");
  dart.setFieldSignature(dashboard_component.DashboardComponent, () => ({
    __proto__: dart.getFields(dashboard_component.DashboardComponent.__proto__),
    [_store$]: dart.fieldType(store.Store),
    [_router$]: dart.fieldType(router.Router)
  }));
  dashboard_component$46template.ViewDashboardComponent0 = class ViewDashboardComponent0 extends app_view.AppView$(dashboard_component.DashboardComponent) {
    static get _debugComponentUrl() {
      return dart.test(optimizations.isDevMode) ? "asset:todo_fe/lib/src/dashboard_component.dart" : null;
    }
    build() {
      let _rootEl = this.rootEl;
      let parentRenderNode = this.initViewRoot(_rootEl);
      let doc = html.document;
      let _el_0 = dom_helpers.appendElement(doc, parentRenderNode, "h2");
      let _text_1 = dom_helpers.appendText(_el_0, "Dashboard");
      let _el_2 = dom_helpers.appendElement(doc, parentRenderNode, "h4");
      let _text_3 = dom_helpers.appendText(_el_2, "This is your home page");
      let _el_4 = dom_helpers.appendElement(doc, parentRenderNode, "br");
      let _el_5 = dom_helpers.appendElement(doc, parentRenderNode, "br");
      let _el_6 = dom_helpers.appendDiv(doc, parentRenderNode);
      this[_el_7] = html.AnchorElement._check(dom_helpers.appendElement(doc, _el_6, "a"));
      this.updateChildClass(this[_el_7], "p-2 text-dark");
      this[_RouterLink_7_5] = new router_link_directive$46template.RouterLinkNgCd.new(dart.test(optimizations.isDevMode) ? errors.debugInjectorWrap(router_link_directive.RouterLink, dart.wrapType(router_link_directive.RouterLink), dart.fn(() => new router_link_directive.RouterLink.new(router.Router._check(this.parentView.injectorGet(dart.wrapType(router.Router), this.viewData.parentIndex)), location.Location._check(this.parentView.injectorGet(dart.wrapType(location.Location), this.viewData.parentIndex)), null, this[_el_7]), VoidToRouterLink())) : new router_link_directive.RouterLink.new(router.Router._check(this.parentView.injectorGet(dart.wrapType(router.Router), this.viewData.parentIndex)), location.Location._check(this.parentView.injectorGet(dart.wrapType(location.Location), this.viewData.parentIndex)), null, this[_el_7]));
      this[_RouterLinkActive_7_6] = dart.test(optimizations.isDevMode) ? errors.debugInjectorWrap(router_link_active_directive.RouterLinkActive, dart.wrapType(router_link_active_directive.RouterLinkActive), dart.fn(() => new router_link_active_directive.RouterLinkActive.new(this[_el_7], router.Router._check(this.parentView.injectorGet(dart.wrapType(router.Router), this.viewData.parentIndex))), VoidToRouterLinkActive())) : new router_link_active_directive.RouterLinkActive.new(this[_el_7], router.Router._check(this.parentView.injectorGet(dart.wrapType(router.Router), this.viewData.parentIndex)));
      let _text_8 = dom_helpers.appendText(this[_el_7], "Manage your TODOs");
      this[_RouterLinkActive_7_6].links = JSArrayOfRouterLink().of([this[_RouterLink_7_5].instance]);
      let _el_9 = dom_helpers.appendElement(doc, parentRenderNode, "br");
      let _el_10 = dom_helpers.appendElement(doc, parentRenderNode, "br");
      this[_el_7][$addEventListener]("click", this.eventHandler1(html.Event, html.MouseEvent, dart.bind(this[_RouterLink_7_5].instance, 'onClick')));
      this.init0();
    }
    detectChangesInternal() {
      let firstCheck = this.cdState === 0;
      let currVal_0 = route_paths.RoutePaths.todos.toUrl();
      if (dart.test(app_view_utils.checkBinding(this[_expr_0], currVal_0))) {
        this[_RouterLink_7_5].instance.routerLink = currVal_0;
        this[_expr_0] = currVal_0;
      }
      if (firstCheck) {
        this[_RouterLinkActive_7_6].routerLinkActive = "active";
      }
      this[_RouterLink_7_5].detectHostChanges(this, this[_el_7]);
      if (!dart.test(app_view_utils.AppViewUtils.throwOnChanges)) {
        if (firstCheck) {
          this[_RouterLinkActive_7_6].ngAfterViewInit();
        }
      }
    }
    destroyInternal() {
      this[_RouterLink_7_5].instance.ngOnDestroy();
      this[_RouterLinkActive_7_6].ngOnDestroy();
    }
    initComponentStyles() {
      let styles = dashboard_component$46template.ViewDashboardComponent0._componentStyles;
      if (styles == null) {
        dashboard_component$46template.ViewDashboardComponent0._componentStyles = styles = dashboard_component$46template.ViewDashboardComponent0._componentStyles = new style_encapsulation._UnscopedComponentStyles.new(dashboard_component$46template.styles$DashboardComponent, dashboard_component$46template.ViewDashboardComponent0._debugComponentUrl);
      }
      this.componentStyles = styles;
    }
  };
  (dashboard_component$46template.ViewDashboardComponent0.new = function(parentView, parentIndex) {
    this[_RouterLink_7_5] = null;
    this[_RouterLinkActive_7_6] = null;
    this[_expr_0] = null;
    this[_el_7] = null;
    dashboard_component$46template.ViewDashboardComponent0.__proto__.new.call(this, view_type.ViewType.component, parentView, parentIndex, 3);
    this.initComponentStyles();
    this.rootEl = html.HtmlElement._check(html.document[$createElement]("dashboard"));
  }).prototype = dashboard_component$46template.ViewDashboardComponent0.prototype;
  dart.addTypeTests(dashboard_component$46template.ViewDashboardComponent0);
  dart.setLibraryUri(dashboard_component$46template.ViewDashboardComponent0, "package:todo_fe/src/dashboard_component.template.dart");
  dart.setFieldSignature(dashboard_component$46template.ViewDashboardComponent0, () => ({
    __proto__: dart.getFields(dashboard_component$46template.ViewDashboardComponent0.__proto__),
    [_RouterLink_7_5]: dart.fieldType(router_link_directive$46template.RouterLinkNgCd),
    [_RouterLinkActive_7_6]: dart.fieldType(router_link_active_directive.RouterLinkActive),
    [_expr_0]: dart.fieldType(core.String),
    [_el_7]: dart.fieldType(html.AnchorElement)
  }));
  dart.defineLazy(dashboard_component$46template.ViewDashboardComponent0, {
    /*dashboard_component$46template.ViewDashboardComponent0._componentStyles*/get _componentStyles() {
      return null;
    },
    set _componentStyles(_) {}
  });
  const _compView_0 = dart.privateName(dashboard_component$46template, "_compView_0");
  const _DashboardComponent_0_5 = dart.privateName(dashboard_component$46template, "_DashboardComponent_0_5");
  dashboard_component$46template._ViewDashboardComponentHost0 = class _ViewDashboardComponentHost0 extends app_view.AppView$(dashboard_component.DashboardComponent) {
    build() {
      this[_compView_0] = new dashboard_component$46template.ViewDashboardComponent0.new(this, 0);
      this.rootEl = this[_compView_0].rootEl;
      this[_DashboardComponent_0_5] = dart.test(optimizations.isDevMode) ? errors.debugInjectorWrap(dashboard_component.DashboardComponent, dart.wrapType(dashboard_component.DashboardComponent), dart.fn(() => new dashboard_component.DashboardComponent.new(store.Store._check(this.injectorGet(dart.wrapType(store.Store), this.viewData.parentIndex)), router.Router._check(this.injectorGet(dart.wrapType(router.Router), this.viewData.parentIndex))), VoidToDashboardComponent())) : new dashboard_component.DashboardComponent.new(store.Store._check(this.injectorGet(dart.wrapType(store.Store), this.viewData.parentIndex)), router.Router._check(this.injectorGet(dart.wrapType(router.Router), this.viewData.parentIndex)));
      this[_compView_0].create(this[_DashboardComponent_0_5], this.projectedNodes);
      this.init1(this.rootEl);
      return new (ComponentRefOfDashboardComponent()).new(0, this, this.rootEl, this[_DashboardComponent_0_5]);
    }
    detectChangesInternal() {
      let firstCheck = this.cdState === 0;
      if (!dart.test(app_view_utils.AppViewUtils.throwOnChanges) && firstCheck) {
        this[_DashboardComponent_0_5].ngOnInit();
      }
      this[_compView_0].detectChanges();
    }
    destroyInternal() {
      this[_compView_0].destroyInternalState();
    }
  };
  (dashboard_component$46template._ViewDashboardComponentHost0.new = function(parentView, parentIndex) {
    this[_compView_0] = null;
    this[_DashboardComponent_0_5] = null;
    dashboard_component$46template._ViewDashboardComponentHost0.__proto__.new.call(this, view_type.ViewType.host, parentView, parentIndex, 3);
    ;
  }).prototype = dashboard_component$46template._ViewDashboardComponentHost0.prototype;
  dart.addTypeTests(dashboard_component$46template._ViewDashboardComponentHost0);
  dart.setLibraryUri(dashboard_component$46template._ViewDashboardComponentHost0, "package:todo_fe/src/dashboard_component.template.dart");
  dart.setFieldSignature(dashboard_component$46template._ViewDashboardComponentHost0, () => ({
    __proto__: dart.getFields(dashboard_component$46template._ViewDashboardComponentHost0.__proto__),
    [_compView_0]: dart.fieldType(dashboard_component$46template.ViewDashboardComponent0),
    [_DashboardComponent_0_5]: dart.fieldType(dashboard_component.DashboardComponent)
  }));
  dashboard_component$46template.viewFactory_DashboardComponentHost0 = function viewFactory_DashboardComponentHost0(parentView, parentIndex) {
    return new dashboard_component$46template._ViewDashboardComponentHost0.new(parentView, parentIndex);
  };
  dashboard_component$46template.initReflector = function initReflector() {
    if (dart.test(dashboard_component$46template._visited)) {
      return;
    }
    dashboard_component$46template._visited = true;
    reflector.registerComponent(dart.wrapType(dashboard_component.DashboardComponent), dashboard_component$46template.DashboardComponentNgFactory);
    angular$46template.initReflector();
    angular_router$46template.initReflector();
    route_paths$46template.initReflector();
    routes$46template.initReflector();
    store$46template.initReflector();
  };
  dart.copyProperties(dashboard_component$46template, {
    get DashboardComponentNgFactory() {
      return dashboard_component$46template._DashboardComponentNgFactory;
    }
  });
  let C0;
  let C2;
  const ComponentFactory__viewFactory = dart.privateName(component_factory, "ComponentFactory._viewFactory");
  const ComponentFactory_selector = dart.privateName(component_factory, "ComponentFactory.selector");
  let C1;
  dart.defineLazy(dashboard_component$46template, {
    /*dashboard_component$46template.styles$DashboardComponent*/get styles$DashboardComponent() {
      return C0 || CT.C0;
    },
    /*dashboard_component$46template._DashboardComponentNgFactory*/get _DashboardComponentNgFactory() {
      return C1 || CT.C1;
    },
    /*dashboard_component$46template.styles$DashboardComponentHost*/get styles$DashboardComponentHost() {
      return C0 || CT.C0;
    },
    /*dashboard_component$46template._visited*/get _visited() {
      return false;
    },
    set _visited(_) {}
  });
  store.Store = class Store extends core.Object {
    storeAuthToken(token) {
      html.window.localStorage[$_set](store.Store._tokenKey, token);
    }
    getAuthToken() {
      return html.window.localStorage[$_get](store.Store._tokenKey);
    }
  };
  (store.Store.new = function() {
    ;
  }).prototype = store.Store.prototype;
  dart.addTypeTests(store.Store);
  dart.setMethodSignature(store.Store, () => ({
    __proto__: dart.getMethods(store.Store.__proto__),
    storeAuthToken: dart.fnType(dart.void, [core.String]),
    getAuthToken: dart.fnType(core.String, [])
  }));
  dart.setLibraryUri(store.Store, "package:todo_fe/src/store.dart");
  dart.defineLazy(store.Store, {
    /*store.Store._tokenKey*/get _tokenKey() {
      return "authToken";
    },
    set _tokenKey(_) {}
  });
  route_paths.RoutePaths = class RoutePaths extends core.Object {};
  (route_paths.RoutePaths.new = function() {
    ;
  }).prototype = route_paths.RoutePaths.prototype;
  dart.addTypeTests(route_paths.RoutePaths);
  dart.setLibraryUri(route_paths.RoutePaths, "package:todo_fe/src/route_paths.dart");
  dart.defineLazy(route_paths.RoutePaths, {
    /*route_paths.RoutePaths.dashboard*/get dashboard() {
      return new route_path.RoutePath.new({path: "dashboard"});
    },
    /*route_paths.RoutePaths.register*/get register() {
      return new route_path.RoutePath.new({path: "register"});
    },
    /*route_paths.RoutePaths.login*/get login() {
      return new route_path.RoutePath.new({path: "login"});
    },
    /*route_paths.RoutePaths.logout*/get logout() {
      return new route_path.RoutePath.new({path: "logout"});
    },
    /*route_paths.RoutePaths.todos*/get todos() {
      return new route_path.RoutePath.new({path: "todos"});
    }
  });
  routes.Routes = class Routes extends core.Object {};
  (routes.Routes.new = function() {
    ;
  }).prototype = routes.Routes.prototype;
  dart.addTypeTests(routes.Routes);
  dart.setLibraryUri(routes.Routes, "package:todo_fe/src/routes.dart");
  dart.defineLazy(routes.Routes, {
    /*routes.Routes.dashboard*/get dashboard() {
      return new route_definition.ComponentRouteDefinition.__({routePath: route_paths.RoutePaths.dashboard, component: dashboard_component$46template.DashboardComponentNgFactory});
    },
    /*routes.Routes.register*/get register() {
      return new route_definition.ComponentRouteDefinition.__({routePath: route_paths.RoutePaths.register, component: register_component$46template.RegisterComponentNgFactory});
    },
    /*routes.Routes.login*/get login() {
      return new route_definition.ComponentRouteDefinition.__({routePath: route_paths.RoutePaths.login, component: login_component$46template.LoginComponentNgFactory});
    },
    /*routes.Routes.logout*/get logout() {
      return new route_definition.ComponentRouteDefinition.__({routePath: route_paths.RoutePaths.logout, component: logout_component$46template.LogoutComponentNgFactory});
    },
    /*routes.Routes.todos*/get todos() {
      return new route_definition.ComponentRouteDefinition.__({routePath: route_paths.RoutePaths.todos, component: todo_list_component$46template.TodoListComponentNgFactory});
    },
    /*routes.Routes.all*/get all() {
      return JSArrayOfRouteDefinition().of([routes.Routes.register, routes.Routes.login, routes.Routes.logout, routes.Routes.todos, routes.Routes.dashboard, new route_definition.RedirectRouteDefinition.__({path: "", redirectTo: route_paths.RoutePaths.dashboard.toUrl()})]);
    }
  });
  const _store$0 = dart.privateName(logout_component, "_store");
  const _eventBus$ = dart.privateName(logout_component, "_eventBus");
  logout_component.LogoutComponent = class LogoutComponent extends core.Object {
    ngOnInit() {
      this[_store$0].storeAuthToken(null);
      this[_eventBus$].onEvent(false);
    }
  };
  (logout_component.LogoutComponent.new = function(_store, _eventBus) {
    this[_store$0] = _store;
    this[_eventBus$] = _eventBus;
    ;
  }).prototype = logout_component.LogoutComponent.prototype;
  dart.addTypeTests(logout_component.LogoutComponent);
  logout_component.LogoutComponent[dart.implements] = () => [lifecycle_hooks.OnInit];
  dart.setMethodSignature(logout_component.LogoutComponent, () => ({
    __proto__: dart.getMethods(logout_component.LogoutComponent.__proto__),
    ngOnInit: dart.fnType(dart.void, [])
  }));
  dart.setLibraryUri(logout_component.LogoutComponent, "package:todo_fe/src/logout_component.dart");
  dart.setFieldSignature(logout_component.LogoutComponent, () => ({
    __proto__: dart.getFields(logout_component.LogoutComponent.__proto__),
    [_store$0]: dart.fieldType(store.Store),
    [_eventBus$]: dart.fieldType(event_bus.EventBus)
  }));
  logout_component$46template.ViewLogoutComponent0 = class ViewLogoutComponent0 extends app_view.AppView$(logout_component.LogoutComponent) {
    static get _debugComponentUrl() {
      return dart.test(optimizations.isDevMode) ? "asset:todo_fe/lib/src/logout_component.dart" : null;
    }
    build() {
      let _rootEl = this.rootEl;
      let parentRenderNode = this.initViewRoot(_rootEl);
      let doc = html.document;
      let _el_0 = dom_helpers.appendElement(doc, parentRenderNode, "h3");
      let _text_1 = dom_helpers.appendText(_el_0, "You've been logged out");
      this.init0();
    }
    initComponentStyles() {
      let styles = logout_component$46template.ViewLogoutComponent0._componentStyles;
      if (styles == null) {
        logout_component$46template.ViewLogoutComponent0._componentStyles = styles = logout_component$46template.ViewLogoutComponent0._componentStyles = new style_encapsulation._UnscopedComponentStyles.new(logout_component$46template.styles$LogoutComponent, logout_component$46template.ViewLogoutComponent0._debugComponentUrl);
      }
      this.componentStyles = styles;
    }
  };
  (logout_component$46template.ViewLogoutComponent0.new = function(parentView, parentIndex) {
    logout_component$46template.ViewLogoutComponent0.__proto__.new.call(this, view_type.ViewType.component, parentView, parentIndex, 3);
    this.initComponentStyles();
    this.rootEl = html.HtmlElement._check(html.document[$createElement]("logout"));
  }).prototype = logout_component$46template.ViewLogoutComponent0.prototype;
  dart.addTypeTests(logout_component$46template.ViewLogoutComponent0);
  dart.setLibraryUri(logout_component$46template.ViewLogoutComponent0, "package:todo_fe/src/logout_component.template.dart");
  dart.defineLazy(logout_component$46template.ViewLogoutComponent0, {
    /*logout_component$46template.ViewLogoutComponent0._componentStyles*/get _componentStyles() {
      return null;
    },
    set _componentStyles(_) {}
  });
  const _compView_0$ = dart.privateName(logout_component$46template, "_compView_0");
  const _Store_0_5 = dart.privateName(logout_component$46template, "_Store_0_5");
  const _EventBus_0_6 = dart.privateName(logout_component$46template, "_EventBus_0_6");
  const _LogoutComponent_0_7 = dart.privateName(logout_component$46template, "_LogoutComponent_0_7");
  logout_component$46template._ViewLogoutComponentHost0 = class _ViewLogoutComponentHost0 extends app_view.AppView$(logout_component.LogoutComponent) {
    build() {
      this[_compView_0$] = new logout_component$46template.ViewLogoutComponent0.new(this, 0);
      this.rootEl = this[_compView_0$].rootEl;
      this[_Store_0_5] = new store.Store.new();
      this[_EventBus_0_6] = event_bus.EventBus.new();
      this[_LogoutComponent_0_7] = new logout_component.LogoutComponent.new(this[_Store_0_5], this[_EventBus_0_6]);
      this[_compView_0$].create(this[_LogoutComponent_0_7], this.projectedNodes);
      this.init1(this.rootEl);
      return new (ComponentRefOfLogoutComponent()).new(0, this, this.rootEl, this[_LogoutComponent_0_7]);
    }
    injectorGetInternal(token, nodeIndex, notFoundResult) {
      if (0 === nodeIndex) {
        if (token === dart.wrapType(store.Store)) {
          return this[_Store_0_5];
        }
        if (token === dart.wrapType(event_bus.EventBus)) {
          return this[_EventBus_0_6];
        }
      }
      return notFoundResult;
    }
    detectChangesInternal() {
      let firstCheck = this.cdState === 0;
      if (!dart.test(app_view_utils.AppViewUtils.throwOnChanges) && firstCheck) {
        this[_LogoutComponent_0_7].ngOnInit();
      }
      this[_compView_0$].detectChanges();
    }
    destroyInternal() {
      this[_compView_0$].destroyInternalState();
    }
  };
  (logout_component$46template._ViewLogoutComponentHost0.new = function(parentView, parentIndex) {
    this[_compView_0$] = null;
    this[_Store_0_5] = null;
    this[_EventBus_0_6] = null;
    this[_LogoutComponent_0_7] = null;
    logout_component$46template._ViewLogoutComponentHost0.__proto__.new.call(this, view_type.ViewType.host, parentView, parentIndex, 3);
    ;
  }).prototype = logout_component$46template._ViewLogoutComponentHost0.prototype;
  dart.addTypeTests(logout_component$46template._ViewLogoutComponentHost0);
  dart.setMethodSignature(logout_component$46template._ViewLogoutComponentHost0, () => ({
    __proto__: dart.getMethods(logout_component$46template._ViewLogoutComponentHost0.__proto__),
    injectorGetInternal: dart.fnType(dart.dynamic, [dart.dynamic, core.int, dart.dynamic])
  }));
  dart.setLibraryUri(logout_component$46template._ViewLogoutComponentHost0, "package:todo_fe/src/logout_component.template.dart");
  dart.setFieldSignature(logout_component$46template._ViewLogoutComponentHost0, () => ({
    __proto__: dart.getFields(logout_component$46template._ViewLogoutComponentHost0.__proto__),
    [_compView_0$]: dart.fieldType(logout_component$46template.ViewLogoutComponent0),
    [_Store_0_5]: dart.fieldType(store.Store),
    [_EventBus_0_6]: dart.fieldType(event_bus.EventBus),
    [_LogoutComponent_0_7]: dart.fieldType(logout_component.LogoutComponent)
  }));
  logout_component$46template.viewFactory_LogoutComponentHost0 = function viewFactory_LogoutComponentHost0(parentView, parentIndex) {
    return new logout_component$46template._ViewLogoutComponentHost0.new(parentView, parentIndex);
  };
  logout_component$46template.initReflector = function initReflector$() {
    if (dart.test(logout_component$46template._visited)) {
      return;
    }
    logout_component$46template._visited = true;
    reflector.registerComponent(dart.wrapType(logout_component.LogoutComponent), logout_component$46template.LogoutComponentNgFactory);
    event_bus$46template.initReflector();
    angular$46template.initReflector();
    store$46template.initReflector();
  };
  dart.copyProperties(logout_component$46template, {
    get LogoutComponentNgFactory() {
      return logout_component$46template._LogoutComponentNgFactory;
    }
  });
  let C4;
  let C3;
  dart.defineLazy(logout_component$46template, {
    /*logout_component$46template.styles$LogoutComponent*/get styles$LogoutComponent() {
      return C0 || CT.C0;
    },
    /*logout_component$46template._LogoutComponentNgFactory*/get _LogoutComponentNgFactory() {
      return C3 || CT.C3;
    },
    /*logout_component$46template.styles$LogoutComponentHost*/get styles$LogoutComponentHost() {
      return C0 || CT.C0;
    },
    /*logout_component$46template._visited*/get _visited() {
      return false;
    },
    set _visited(_) {}
  });
  const _onLoginEvent = dart.privateName(event_bus, "_onLoginEvent");
  const EventBus_onLoginStream = dart.privateName(event_bus, "EventBus.onLoginStream");
  event_bus.EventBus = class EventBus extends core.Object {
    get onLoginStream() {
      return this[onLoginStream];
    }
    set onLoginStream(value) {
      this[onLoginStream] = value;
    }
    static new() {
      return event_bus.EventBus._singleton;
    }
    onEvent(signedIn) {
      this[_onLoginEvent].add(signedIn);
    }
  };
  (event_bus.EventBus._internal = function() {
    this[_onLoginEvent] = StreamControllerOfbool().new();
    this[onLoginStream] = null;
    this.onLoginStream = this[_onLoginEvent].stream.asBroadcastStream();
  }).prototype = event_bus.EventBus.prototype;
  dart.addTypeTests(event_bus.EventBus);
  const onLoginStream = EventBus_onLoginStream;
  dart.setMethodSignature(event_bus.EventBus, () => ({
    __proto__: dart.getMethods(event_bus.EventBus.__proto__),
    onEvent: dart.fnType(dart.dynamic, [core.bool])
  }));
  dart.setLibraryUri(event_bus.EventBus, "package:todo_fe/src/event_bus.dart");
  dart.setFieldSignature(event_bus.EventBus, () => ({
    __proto__: dart.getFields(event_bus.EventBus.__proto__),
    [_onLoginEvent]: dart.finalFieldType(async.StreamController$(core.bool)),
    onLoginStream: dart.fieldType(async.Stream$(core.bool))
  }));
  dart.defineLazy(event_bus.EventBus, {
    /*event_bus.EventBus._singleton*/get _singleton() {
      return new event_bus.EventBus._internal();
    }
  });
  store$46template.initReflector = function initReflector$0() {
  };
  event_bus$46template.initReflector = function initReflector$1() {
  };
  const _compView_4 = dart.privateName(login_component$46template, "_compView_4");
  const _ErrorComponent_4_5 = dart.privateName(login_component$46template, "_ErrorComponent_4_5");
  const _compView_6 = dart.privateName(login_component$46template, "_compView_6");
  const _ValidationComponent_6_5 = dart.privateName(login_component$46template, "_ValidationComponent_6_5");
  const _compView_8 = dart.privateName(login_component$46template, "_compView_8");
  const _InfoComponent_8_5 = dart.privateName(login_component$46template, "_InfoComponent_8_5");
  const _expr_0$ = dart.privateName(login_component$46template, "_expr_0");
  const _expr_1 = dart.privateName(login_component$46template, "_expr_1");
  const _expr_2 = dart.privateName(login_component$46template, "_expr_2");
  const _expr_3 = dart.privateName(login_component$46template, "_expr_3");
  const _expr_4 = dart.privateName(login_component$46template, "_expr_4");
  const _expr_5 = dart.privateName(login_component$46template, "_expr_5");
  const _el_14 = dart.privateName(login_component$46template, "_el_14");
  const _el_19 = dart.privateName(login_component$46template, "_el_19");
  const _handle_click_20_0 = dart.privateName(login_component$46template, "_handle_click_20_0");
  const _authService$ = dart.privateName(login_component, "_authService");
  const _router$0 = dart.privateName(login_component, "_router");
  const _eventBus$0 = dart.privateName(login_component, "_eventBus");
  const _store$1 = dart.privateName(login_component, "_store");
  const _violations = dart.privateName(form_component, "_violations");
  const _errorMsg = dart.privateName(form_component, "_errorMsg");
  const _infoMsg = dart.privateName(form_component, "_infoMsg");
  const _router$1 = dart.privateName(form_component, "_router");
  form_component.FormComponent = class FormComponent extends core.Object {
    handleErrors(future, onSuccess) {
      future.then(core.Null, dart.fn(response => {
        if (response.statusCode === 200 || response.statusCode === 201) {
          dart.dcall(onSuccess, [response]);
        } else if (response.statusCode === 400) {
          let l = core.Iterable._check(convert.json.decode(response.body));
          this.violations = l[$map](error.ConstraintViolation, dart.fn(j => error.ConstraintViolation.fromJson(MapOfString$dynamic()._check(j)), dynamicToConstraintViolation()))[$toList]();
        } else {
          this.errorMsg = response.body != null ? response.body : "unknown error";
        }
      }, ResponseToNull())).catchError(dart.fn(e => {
        if (user.UnauthorizedException.is(e)) {
          this[_router$1].navigate(route_paths.RoutePaths.login.toUrl());
        }
        core.print("exception " + dart.str(e));
      }, dynamicToNull()));
    }
    get infoMsg() {
      return this[_infoMsg];
    }
    set infoMsg(msg) {
      this[_infoMsg] = msg;
    }
    get hideInfo() {
      return dart.fn(() => this[_infoMsg] = "", VoidToString());
    }
    get errorMsg() {
      return this[_errorMsg];
    }
    set errorMsg(msg) {
      this[_errorMsg] = msg;
    }
    get hideError() {
      return dart.fn(() => this[_errorMsg] = "", VoidToString());
    }
    get violations() {
      return this[_violations];
    }
    set violations(vs) {
      this[_violations] = vs;
    }
    get hideConstraintViolation() {
      return dart.fn(() => this[_violations] = JSArrayOfConstraintViolation().of([]), VoidToListOfConstraintViolation());
    }
  };
  (form_component.FormComponent.new = function(_router) {
    this[_violations] = JSArrayOfConstraintViolation().of([]);
    this[_errorMsg] = null;
    this[_infoMsg] = null;
    this[_router$1] = _router;
    ;
  }).prototype = form_component.FormComponent.prototype;
  dart.addTypeTests(form_component.FormComponent);
  dart.setMethodSignature(form_component.FormComponent, () => ({
    __proto__: dart.getMethods(form_component.FormComponent.__proto__),
    handleErrors: dart.fnType(dart.void, [async.Future$(response.Response), core.Function])
  }));
  dart.setGetterSignature(form_component.FormComponent, () => ({
    __proto__: dart.getGetters(form_component.FormComponent.__proto__),
    infoMsg: core.String,
    hideInfo: core.Function,
    errorMsg: core.String,
    hideError: core.Function,
    violations: core.List$(error.ConstraintViolation),
    hideConstraintViolation: core.Function
  }));
  dart.setSetterSignature(form_component.FormComponent, () => ({
    __proto__: dart.getSetters(form_component.FormComponent.__proto__),
    infoMsg: core.String,
    errorMsg: core.String,
    violations: core.List$(error.ConstraintViolation)
  }));
  dart.setLibraryUri(form_component.FormComponent, "package:todo_fe/src/form_component.dart");
  dart.setFieldSignature(form_component.FormComponent, () => ({
    __proto__: dart.getFields(form_component.FormComponent.__proto__),
    [_router$1]: dart.fieldType(router.Router),
    [_violations]: dart.fieldType(core.List$(error.ConstraintViolation)),
    [_errorMsg]: dart.fieldType(core.String),
    [_infoMsg]: dart.fieldType(core.String)
  }));
  login_component.LoginComponent = class LoginComponent extends form_component.FormComponent {
    onSuccessfullLogin(response) {
      let headers = response.headers;
      let authToken = headers[$_get]("authorization");
      this[_store$1].storeAuthToken(authToken);
      this[_eventBus$0].onEvent(authToken != null);
      this[_router$0].navigate(route_paths.RoutePaths.dashboard.toUrl());
    }
    login(email, password) {
      return async.async(dart.void, (function* login() {
        core.print("Email: " + dart.str(email) + ", password: " + dart.str(password));
        let login = new user.Login.new(email, password);
        this.handleErrors(this[_authService$].login(login), dart.bind(this, 'onSuccessfullLogin'));
      }).bind(this));
    }
  };
  (login_component.LoginComponent.new = function(_authService, _router, _eventBus, _store) {
    this[_authService$] = _authService;
    this[_router$0] = _router;
    this[_eventBus$0] = _eventBus;
    this[_store$1] = _store;
    login_component.LoginComponent.__proto__.new.call(this, _router);
    ;
  }).prototype = login_component.LoginComponent.prototype;
  dart.addTypeTests(login_component.LoginComponent);
  dart.setMethodSignature(login_component.LoginComponent, () => ({
    __proto__: dart.getMethods(login_component.LoginComponent.__proto__),
    onSuccessfullLogin: dart.fnType(dart.void, [response.Response]),
    login: dart.fnType(dart.void, [core.String, core.String])
  }));
  dart.setLibraryUri(login_component.LoginComponent, "package:todo_fe/src/login_component.dart");
  dart.setFieldSignature(login_component.LoginComponent, () => ({
    __proto__: dart.getFields(login_component.LoginComponent.__proto__),
    [_router$0]: dart.fieldType(router.Router),
    [_authService$]: dart.fieldType(auth_service.AuthService),
    [_eventBus$0]: dart.fieldType(event_bus.EventBus),
    [_store$1]: dart.fieldType(store.Store)
  }));
  login_component$46template.ViewLoginComponent0 = class ViewLoginComponent0 extends app_view.AppView$(login_component.LoginComponent) {
    static get _debugComponentUrl() {
      return dart.test(optimizations.isDevMode) ? "asset:todo_fe/lib/src/login_component.dart" : null;
    }
    build() {
      let _rootEl = this.rootEl;
      let parentRenderNode = this.initViewRoot(_rootEl);
      let doc = html.document;
      let _el_0 = dom_helpers.appendElement(doc, parentRenderNode, "h3");
      let _text_1 = dom_helpers.appendText(_el_0, "Login");
      let _el_2 = dom_helpers.appendElement(doc, parentRenderNode, "br");
      let _el_3 = dom_helpers.appendDiv(doc, parentRenderNode);
      this[_compView_4] = new error_component$46template.ViewErrorComponent0.new(this, 4);
      let _el_4 = this[_compView_4].rootEl;
      _el_3[$append](_el_4);
      this[_ErrorComponent_4_5] = new error_component.ErrorComponent.new();
      this[_compView_4].create0(this[_ErrorComponent_4_5]);
      let _el_5 = dom_helpers.appendDiv(doc, parentRenderNode);
      this[_compView_6] = new validation_component$46template.ViewValidationComponent0.new(this, 6);
      let _el_6 = this[_compView_6].rootEl;
      _el_5[$append](_el_6);
      this[_ValidationComponent_6_5] = new validation_component.ValidationComponent.new();
      this[_compView_6].create0(this[_ValidationComponent_6_5]);
      let _el_7 = dom_helpers.appendDiv(doc, parentRenderNode);
      this[_compView_8] = new info_component$46template.ViewInfoComponent0.new(this, 8);
      let _el_8 = this[_compView_8].rootEl;
      _el_7[$append](_el_8);
      this[_InfoComponent_8_5] = new info_component.InfoComponent.new();
      this[_compView_8].create0(this[_InfoComponent_8_5]);
      let _el_9 = dom_helpers.appendDiv(doc, parentRenderNode);
      let _el_10 = dom_helpers.appendDiv(doc, _el_9);
      this.updateChildClass(_el_10, "form-group");
      let _el_11 = dom_helpers.appendElement(doc, _el_10, "label");
      dom_helpers.setAttribute(_el_11, "for", "exampleInputEmail1");
      let _text_12 = dom_helpers.appendText(_el_11, "Email address");
      let _text_13 = dom_helpers.appendText(_el_10, " ");
      this[_el_14] = html.InputElement._check(dom_helpers.appendElement(doc, _el_10, "input"));
      dom_helpers.setAttribute(this[_el_14], "aria-describedby", "emailHelp");
      this.updateChildClass(this[_el_14], "form-control");
      dom_helpers.setAttribute(this[_el_14], "id", "exampleInputEmail1");
      dom_helpers.setAttribute(this[_el_14], "placeholder", "Enter email");
      dom_helpers.setAttribute(this[_el_14], "type", "email");
      let _el_15 = dom_helpers.appendDiv(doc, _el_9);
      this.updateChildClass(_el_15, "form-group");
      let _el_16 = dom_helpers.appendElement(doc, _el_15, "label");
      dom_helpers.setAttribute(_el_16, "for", "exampleInputPassword1");
      let _text_17 = dom_helpers.appendText(_el_16, "Password");
      let _text_18 = dom_helpers.appendText(_el_15, " ");
      this[_el_19] = html.InputElement._check(dom_helpers.appendElement(doc, _el_15, "input"));
      this.updateChildClass(this[_el_19], "form-control");
      dom_helpers.setAttribute(this[_el_19], "id", "exampleInputPassword1");
      dom_helpers.setAttribute(this[_el_19], "placeholder", "Password");
      dom_helpers.setAttribute(this[_el_19], "type", "password");
      let _el_20 = dom_helpers.appendElement(doc, _el_9, "button");
      this.updateChildClass(html.HtmlElement._check(_el_20), "btn btn-primary");
      let _text_21 = dom_helpers.appendText(_el_20, "Login");
      _el_20[$addEventListener]("click", this.eventHandler1(html.Event, html.Event, dart.bind(this, _handle_click_20_0)));
      this.init0();
    }
    detectChangesInternal() {
      let _ctx = this.ctx;
      let currVal_0 = _ctx.errorMsg;
      if (dart.test(app_view_utils.checkBinding(this[_expr_0$], currVal_0))) {
        this[_ErrorComponent_4_5].message = currVal_0;
        this[_expr_0$] = currVal_0;
      }
      let currVal_1 = _ctx.hideError;
      if (dart.test(app_view_utils.checkBinding(this[_expr_1], currVal_1))) {
        this[_ErrorComponent_4_5].hide = currVal_1;
        this[_expr_1] = currVal_1;
      }
      let currVal_2 = _ctx.violations;
      if (dart.test(app_view_utils.checkBinding(this[_expr_2], currVal_2))) {
        this[_ValidationComponent_6_5].violations = currVal_2;
        this[_expr_2] = currVal_2;
      }
      let currVal_3 = _ctx.hideConstraintViolation;
      if (dart.test(app_view_utils.checkBinding(this[_expr_3], currVal_3))) {
        this[_ValidationComponent_6_5].hide = currVal_3;
        this[_expr_3] = currVal_3;
      }
      let currVal_4 = _ctx.infoMsg;
      if (dart.test(app_view_utils.checkBinding(this[_expr_4], currVal_4))) {
        this[_InfoComponent_8_5].message = currVal_4;
        this[_expr_4] = currVal_4;
      }
      let currVal_5 = _ctx.hideInfo;
      if (dart.test(app_view_utils.checkBinding(this[_expr_5], currVal_5))) {
        this[_InfoComponent_8_5].hide = currVal_5;
        this[_expr_5] = currVal_5;
      }
      this[_compView_4].detectChanges();
      this[_compView_6].detectChanges();
      this[_compView_8].detectChanges();
    }
    destroyInternal() {
      this[_compView_4].destroyInternalState();
      this[_compView_6].destroyInternalState();
      this[_compView_8].destroyInternalState();
    }
    [_handle_click_20_0]($36event) {
      let local_email = this[_el_14];
      let local_password = this[_el_19];
      let _ctx = this.ctx;
      _ctx.login(local_email.value, local_password.value);
    }
    initComponentStyles() {
      let styles = login_component$46template.ViewLoginComponent0._componentStyles;
      if (styles == null) {
        login_component$46template.ViewLoginComponent0._componentStyles = styles = login_component$46template.ViewLoginComponent0._componentStyles = new style_encapsulation._UnscopedComponentStyles.new(login_component$46template.styles$LoginComponent, login_component$46template.ViewLoginComponent0._debugComponentUrl);
      }
      this.componentStyles = styles;
    }
  };
  (login_component$46template.ViewLoginComponent0.new = function(parentView, parentIndex) {
    this[_compView_4] = null;
    this[_ErrorComponent_4_5] = null;
    this[_compView_6] = null;
    this[_ValidationComponent_6_5] = null;
    this[_compView_8] = null;
    this[_InfoComponent_8_5] = null;
    this[_expr_0$] = null;
    this[_expr_1] = null;
    this[_expr_2] = null;
    this[_expr_3] = null;
    this[_expr_4] = null;
    this[_expr_5] = null;
    this[_el_14] = null;
    this[_el_19] = null;
    login_component$46template.ViewLoginComponent0.__proto__.new.call(this, view_type.ViewType.component, parentView, parentIndex, 3);
    this.initComponentStyles();
    this.rootEl = html.HtmlElement._check(html.document[$createElement]("login"));
  }).prototype = login_component$46template.ViewLoginComponent0.prototype;
  dart.addTypeTests(login_component$46template.ViewLoginComponent0);
  dart.setMethodSignature(login_component$46template.ViewLoginComponent0, () => ({
    __proto__: dart.getMethods(login_component$46template.ViewLoginComponent0.__proto__),
    [_handle_click_20_0]: dart.fnType(dart.void, [dart.dynamic])
  }));
  dart.setLibraryUri(login_component$46template.ViewLoginComponent0, "package:todo_fe/src/login_component.template.dart");
  dart.setFieldSignature(login_component$46template.ViewLoginComponent0, () => ({
    __proto__: dart.getFields(login_component$46template.ViewLoginComponent0.__proto__),
    [_compView_4]: dart.fieldType(error_component$46template.ViewErrorComponent0),
    [_ErrorComponent_4_5]: dart.fieldType(error_component.ErrorComponent),
    [_compView_6]: dart.fieldType(validation_component$46template.ViewValidationComponent0),
    [_ValidationComponent_6_5]: dart.fieldType(validation_component.ValidationComponent),
    [_compView_8]: dart.fieldType(info_component$46template.ViewInfoComponent0),
    [_InfoComponent_8_5]: dart.fieldType(info_component.InfoComponent),
    [_expr_0$]: dart.fieldType(core.String),
    [_expr_1]: dart.fieldType(dart.dynamic),
    [_expr_2]: dart.fieldType(dart.dynamic),
    [_expr_3]: dart.fieldType(dart.dynamic),
    [_expr_4]: dart.fieldType(core.String),
    [_expr_5]: dart.fieldType(dart.dynamic),
    [_el_14]: dart.fieldType(html.InputElement),
    [_el_19]: dart.fieldType(html.InputElement)
  }));
  dart.defineLazy(login_component$46template.ViewLoginComponent0, {
    /*login_component$46template.ViewLoginComponent0._componentStyles*/get _componentStyles() {
      return null;
    },
    set _componentStyles(_) {}
  });
  const _compView_0$0 = dart.privateName(login_component$46template, "_compView_0");
  const _AuthService_0_5 = dart.privateName(login_component$46template, "_AuthService_0_5");
  const _EventBus_0_6$ = dart.privateName(login_component$46template, "_EventBus_0_6");
  const _LoginComponent_0_7 = dart.privateName(login_component$46template, "_LoginComponent_0_7");
  login_component$46template._ViewLoginComponentHost0 = class _ViewLoginComponentHost0 extends app_view.AppView$(login_component.LoginComponent) {
    build() {
      this[_compView_0$0] = new login_component$46template.ViewLoginComponent0.new(this, 0);
      this.rootEl = this[_compView_0$0].rootEl;
      this[_AuthService_0_5] = dart.test(optimizations.isDevMode) ? errors.debugInjectorWrap(auth_service.AuthService, dart.wrapType(auth_service.AuthService), dart.fn(() => new auth_service.AuthService.new(client.Client._check(this.injectorGet(dart.wrapType(client.Client), this.viewData.parentIndex))), VoidToAuthService())) : new auth_service.AuthService.new(client.Client._check(this.injectorGet(dart.wrapType(client.Client), this.viewData.parentIndex)));
      this[_EventBus_0_6$] = event_bus.EventBus.new();
      this[_LoginComponent_0_7] = dart.test(optimizations.isDevMode) ? errors.debugInjectorWrap(login_component.LoginComponent, dart.wrapType(login_component.LoginComponent), dart.fn(() => new login_component.LoginComponent.new(auth_service.AuthService._check(this[_AuthService_0_5]), router.Router._check(this.injectorGet(dart.wrapType(router.Router), this.viewData.parentIndex)), this[_EventBus_0_6$], store.Store._check(this.injectorGet(dart.wrapType(store.Store), this.viewData.parentIndex))), VoidToLoginComponent())) : new login_component.LoginComponent.new(auth_service.AuthService._check(this[_AuthService_0_5]), router.Router._check(this.injectorGet(dart.wrapType(router.Router), this.viewData.parentIndex)), this[_EventBus_0_6$], store.Store._check(this.injectorGet(dart.wrapType(store.Store), this.viewData.parentIndex)));
      this[_compView_0$0].create(this[_LoginComponent_0_7], this.projectedNodes);
      this.init1(this.rootEl);
      return new (ComponentRefOfLoginComponent()).new(0, this, this.rootEl, this[_LoginComponent_0_7]);
    }
    injectorGetInternal(token, nodeIndex, notFoundResult) {
      if (0 === nodeIndex) {
        if (token === dart.wrapType(auth_service.AuthService)) {
          return this[_AuthService_0_5];
        }
        if (token === dart.wrapType(event_bus.EventBus)) {
          return this[_EventBus_0_6$];
        }
      }
      return notFoundResult;
    }
    detectChangesInternal() {
      this[_compView_0$0].detectChanges();
    }
    destroyInternal() {
      this[_compView_0$0].destroyInternalState();
    }
  };
  (login_component$46template._ViewLoginComponentHost0.new = function(parentView, parentIndex) {
    this[_compView_0$0] = null;
    this[_AuthService_0_5] = null;
    this[_EventBus_0_6$] = null;
    this[_LoginComponent_0_7] = null;
    login_component$46template._ViewLoginComponentHost0.__proto__.new.call(this, view_type.ViewType.host, parentView, parentIndex, 3);
    ;
  }).prototype = login_component$46template._ViewLoginComponentHost0.prototype;
  dart.addTypeTests(login_component$46template._ViewLoginComponentHost0);
  dart.setMethodSignature(login_component$46template._ViewLoginComponentHost0, () => ({
    __proto__: dart.getMethods(login_component$46template._ViewLoginComponentHost0.__proto__),
    injectorGetInternal: dart.fnType(dart.dynamic, [dart.dynamic, core.int, dart.dynamic])
  }));
  dart.setLibraryUri(login_component$46template._ViewLoginComponentHost0, "package:todo_fe/src/login_component.template.dart");
  dart.setFieldSignature(login_component$46template._ViewLoginComponentHost0, () => ({
    __proto__: dart.getFields(login_component$46template._ViewLoginComponentHost0.__proto__),
    [_compView_0$0]: dart.fieldType(login_component$46template.ViewLoginComponent0),
    [_AuthService_0_5]: dart.fieldType(dart.dynamic),
    [_EventBus_0_6$]: dart.fieldType(event_bus.EventBus),
    [_LoginComponent_0_7]: dart.fieldType(login_component.LoginComponent)
  }));
  login_component$46template.viewFactory_LoginComponentHost0 = function viewFactory_LoginComponentHost0(parentView, parentIndex) {
    return new login_component$46template._ViewLoginComponentHost0.new(parentView, parentIndex);
  };
  login_component$46template.initReflector = function initReflector$2() {
    if (dart.test(login_component$46template._visited)) {
      return;
    }
    login_component$46template._visited = true;
    reflector.registerComponent(dart.wrapType(login_component.LoginComponent), login_component$46template.LoginComponentNgFactory);
    auth_service$46template.initReflector();
    error_component$46template.initReflector();
    event_bus$46template.initReflector();
    form_component$46template.initReflector();
    info_component$46template.initReflector();
    angular$46template.initReflector();
    angular_router$46template.initReflector();
    route_paths$46template.initReflector();
    store$46template.initReflector();
    user$46template.initReflector();
    validation_component$46template.initReflector();
  };
  dart.copyProperties(login_component$46template, {
    get LoginComponentNgFactory() {
      return login_component$46template._LoginComponentNgFactory;
    }
  });
  let C6;
  let C5;
  dart.defineLazy(login_component$46template, {
    /*login_component$46template.styles$LoginComponent*/get styles$LoginComponent() {
      return C0 || CT.C0;
    },
    /*login_component$46template._LoginComponentNgFactory*/get _LoginComponentNgFactory() {
      return C5 || CT.C5;
    },
    /*login_component$46template.styles$LoginComponentHost*/get styles$LoginComponentHost() {
      return C0 || CT.C0;
    },
    /*login_component$46template._visited*/get _visited() {
      return false;
    },
    set _visited(_) {}
  });
  const _http$ = dart.privateName(auth_service, "_http");
  const _authApi = dart.privateName(auth_service, "_authApi");
  auth_service.AuthService = class AuthService extends core.Object {
    [_authApi]() {
      return "http://localhost:9090" + "/api/v1/auth/";
    }
    register(register) {
      return async.async(response.Response, (function* register$() {
        return this[_http$].post(dart.notNull(this[_authApi]()) + "register", {headers: auth_service.AuthService._headers, body: convert.json.encode(register)});
      }).bind(this));
    }
    login(login) {
      return async.async(response.Response, (function* login$() {
        return this[_http$].post(dart.notNull(this[_authApi]()) + "login", {headers: auth_service.AuthService._headers, body: convert.json.encode(login)});
      }).bind(this));
    }
  };
  (auth_service.AuthService.new = function(_http) {
    this[_http$] = _http;
    ;
  }).prototype = auth_service.AuthService.prototype;
  dart.addTypeTests(auth_service.AuthService);
  dart.setMethodSignature(auth_service.AuthService, () => ({
    __proto__: dart.getMethods(auth_service.AuthService.__proto__),
    [_authApi]: dart.fnType(core.String, []),
    register: dart.fnType(async.Future$(response.Response), [user.Register]),
    login: dart.fnType(async.Future$(response.Response), [user.Login])
  }));
  dart.setLibraryUri(auth_service.AuthService, "package:todo_fe/src/auth_service.dart");
  dart.setFieldSignature(auth_service.AuthService, () => ({
    __proto__: dart.getFields(auth_service.AuthService.__proto__),
    [_http$]: dart.finalFieldType(client.Client)
  }));
  dart.defineLazy(auth_service.AuthService, {
    /*auth_service.AuthService._headers*/get _headers() {
      return new (IdentityMapOfString$String()).from(["Content-Type", "application/json"]);
    },
    /*auth_service.AuthService._authUrl*/get _authUrl() {
      return "/api/v1/auth/";
    }
  });
  const User_id = dart.privateName(user, "User.id");
  const User_email = dart.privateName(user, "User.email");
  const User_passwordHash = dart.privateName(user, "User.passwordHash");
  user.User = class User extends core.Object {
    get id() {
      return this[id$];
    }
    set id(value) {
      super.id = value;
    }
    get email() {
      return this[email$];
    }
    set email(value) {
      this[email$] = value;
    }
    get passwordHash() {
      return this[passwordHash$];
    }
    set passwordHash(value) {
      this[passwordHash$] = value;
    }
    static fromJson(json) {
      return new user.User.new(user._toInt(json[$_get]("id")), core.String._check(json[$_get]("email")), core.String._check(json[$_get]("passwordHash")));
    }
    toJson() {
      return new _js_helper.LinkedMap.from(["id", this.id, "email", this.email, "passwordHash", this.passwordHash]);
    }
  };
  (user.User.new = function(id, email, passwordHash) {
    this[id$] = id;
    this[email$] = email;
    this[passwordHash$] = passwordHash;
    ;
  }).prototype = user.User.prototype;
  dart.addTypeTests(user.User);
  const id$ = User_id;
  const email$ = User_email;
  const passwordHash$ = User_passwordHash;
  dart.setMethodSignature(user.User, () => ({
    __proto__: dart.getMethods(user.User.__proto__),
    toJson: dart.fnType(core.Map, [])
  }));
  dart.setLibraryUri(user.User, "package:todo_fe/src/user.dart");
  dart.setFieldSignature(user.User, () => ({
    __proto__: dart.getFields(user.User.__proto__),
    id: dart.finalFieldType(core.int),
    email: dart.fieldType(core.String),
    passwordHash: dart.fieldType(core.String)
  }));
  const Register_email = dart.privateName(user, "Register.email");
  const Register_password = dart.privateName(user, "Register.password");
  const Register_repeatedPassword = dart.privateName(user, "Register.repeatedPassword");
  user.Register = class Register extends core.Object {
    get email() {
      return this[email$0];
    }
    set email(value) {
      this[email$0] = value;
    }
    get password() {
      return this[password$];
    }
    set password(value) {
      this[password$] = value;
    }
    get repeatedPassword() {
      return this[repeatedPassword$];
    }
    set repeatedPassword(value) {
      this[repeatedPassword$] = value;
    }
    toJson() {
      return new _js_helper.LinkedMap.from(["email", this.email, "password", this.password, "repeatedPassword", this.repeatedPassword]);
    }
  };
  (user.Register.new = function(email, password, repeatedPassword) {
    this[email$0] = email;
    this[password$] = password;
    this[repeatedPassword$] = repeatedPassword;
    ;
  }).prototype = user.Register.prototype;
  dart.addTypeTests(user.Register);
  const email$0 = Register_email;
  const password$ = Register_password;
  const repeatedPassword$ = Register_repeatedPassword;
  dart.setMethodSignature(user.Register, () => ({
    __proto__: dart.getMethods(user.Register.__proto__),
    toJson: dart.fnType(core.Map, [])
  }));
  dart.setLibraryUri(user.Register, "package:todo_fe/src/user.dart");
  dart.setFieldSignature(user.Register, () => ({
    __proto__: dart.getFields(user.Register.__proto__),
    email: dart.fieldType(core.String),
    password: dart.fieldType(core.String),
    repeatedPassword: dart.fieldType(core.String)
  }));
  const Login_email = dart.privateName(user, "Login.email");
  const Login_password = dart.privateName(user, "Login.password");
  user.Login = class Login extends core.Object {
    get email() {
      return this[email$1];
    }
    set email(value) {
      this[email$1] = value;
    }
    get password() {
      return this[password$0];
    }
    set password(value) {
      this[password$0] = value;
    }
    toJson() {
      return new _js_helper.LinkedMap.from(["email", this.email, "password", this.password]);
    }
  };
  (user.Login.new = function(email, password) {
    this[email$1] = email;
    this[password$0] = password;
    ;
  }).prototype = user.Login.prototype;
  dart.addTypeTests(user.Login);
  const email$1 = Login_email;
  const password$0 = Login_password;
  dart.setMethodSignature(user.Login, () => ({
    __proto__: dart.getMethods(user.Login.__proto__),
    toJson: dart.fnType(core.Map, [])
  }));
  dart.setLibraryUri(user.Login, "package:todo_fe/src/user.dart");
  dart.setFieldSignature(user.Login, () => ({
    __proto__: dart.getFields(user.Login.__proto__),
    email: dart.fieldType(core.String),
    password: dart.fieldType(core.String)
  }));
  const UnauthorizedException_cause = dart.privateName(user, "UnauthorizedException.cause");
  user.UnauthorizedException = class UnauthorizedException extends core.Object {
    get cause() {
      return this[cause$];
    }
    set cause(value) {
      this[cause$] = value;
    }
  };
  (user.UnauthorizedException.new = function(cause) {
    this[cause$] = cause;
    ;
  }).prototype = user.UnauthorizedException.prototype;
  dart.addTypeTests(user.UnauthorizedException);
  const cause$ = UnauthorizedException_cause;
  user.UnauthorizedException[dart.implements] = () => [core.Exception];
  dart.setLibraryUri(user.UnauthorizedException, "package:todo_fe/src/user.dart");
  dart.setFieldSignature(user.UnauthorizedException, () => ({
    __proto__: dart.getFields(user.UnauthorizedException.__proto__),
    cause: dart.fieldType(core.String)
  }));
  user._toInt = function _toInt(id) {
    return core.int.is(id) ? id : core.int.parse(core.String._check(id));
  };
  const _appEl_0 = dart.privateName(info_component$46template, "_appEl_0");
  const _NgIf_0_9 = dart.privateName(info_component$46template, "_NgIf_0_9");
  let C7;
  info_component$46template.ViewInfoComponent0 = class ViewInfoComponent0 extends app_view.AppView$(info_component.InfoComponent) {
    static get _debugComponentUrl() {
      return dart.test(optimizations.isDevMode) ? "asset:todo_fe/lib/src/info_component.dart" : null;
    }
    build() {
      let _rootEl = this.rootEl;
      let parentRenderNode = this.initViewRoot(_rootEl);
      let _anchor_0 = dom_helpers.appendAnchor(parentRenderNode);
      this[_appEl_0] = new view_container.ViewContainer.new(0, null, this, _anchor_0);
      let _TemplateRef_0_8 = new template_ref.TemplateRef.new(this[_appEl_0], C7 || CT.C7);
      this[_NgIf_0_9] = new ng_if.NgIf.new(this[_appEl_0], _TemplateRef_0_8);
      this.init0();
    }
    detectChangesInternal() {
      let _ctx = this.ctx;
      this[_NgIf_0_9].ngIf = _ctx.message != null && _ctx.message !== "";
      this[_appEl_0].detectChangesInNestedViews();
    }
    destroyInternal() {
      this[_appEl_0].destroyNestedViews();
    }
    initComponentStyles() {
      let styles = info_component$46template.ViewInfoComponent0._componentStyles;
      if (styles == null) {
        info_component$46template.ViewInfoComponent0._componentStyles = styles = info_component$46template.ViewInfoComponent0._componentStyles = new style_encapsulation._UnscopedComponentStyles.new(info_component$46template.styles$InfoComponent, info_component$46template.ViewInfoComponent0._debugComponentUrl);
      }
      this.componentStyles = styles;
    }
  };
  (info_component$46template.ViewInfoComponent0.new = function(parentView, parentIndex) {
    this[_appEl_0] = null;
    this[_NgIf_0_9] = null;
    info_component$46template.ViewInfoComponent0.__proto__.new.call(this, view_type.ViewType.component, parentView, parentIndex, 3);
    this.initComponentStyles();
    this.rootEl = html.HtmlElement._check(html.document[$createElement]("info"));
  }).prototype = info_component$46template.ViewInfoComponent0.prototype;
  dart.addTypeTests(info_component$46template.ViewInfoComponent0);
  dart.setLibraryUri(info_component$46template.ViewInfoComponent0, "package:todo_fe/src/info_component.template.dart");
  dart.setFieldSignature(info_component$46template.ViewInfoComponent0, () => ({
    __proto__: dart.getFields(info_component$46template.ViewInfoComponent0.__proto__),
    [_appEl_0]: dart.fieldType(view_container.ViewContainer),
    [_NgIf_0_9]: dart.fieldType(ng_if.NgIf)
  }));
  dart.defineLazy(info_component$46template.ViewInfoComponent0, {
    /*info_component$46template.ViewInfoComponent0._componentStyles*/get _componentStyles() {
      return null;
    },
    set _componentStyles(_) {}
  });
  const _textBinding_2 = dart.privateName(info_component$46template, "_textBinding_2");
  info_component$46template._ViewInfoComponent1 = class _ViewInfoComponent1 extends app_view.AppView$(info_component.InfoComponent) {
    build() {
      let _ctx = this.ctx;
      let doc = html.document;
      let _el_0 = doc[$createElement]("div");
      this.updateChildClass(html.HtmlElement._check(_el_0), "alert alert-success alert-dismissible fade show");
      dom_helpers.setAttribute(_el_0, "role", "alert");
      let _el_1 = dom_helpers.appendElement(doc, _el_0, "strong");
      _el_1[$append](this[_textBinding_2].element);
      let _text_3 = dom_helpers.appendText(_el_0, " ");
      let _el_4 = dom_helpers.appendElement(doc, _el_0, "button");
      dom_helpers.setAttribute(_el_4, "aria-label", "Close");
      this.updateChildClass(html.HtmlElement._check(_el_4), "close");
      dom_helpers.setAttribute(_el_4, "type", "button");
      let _el_5 = dom_helpers.appendSpan(doc, _el_4);
      dom_helpers.setAttribute(_el_5, "aria-hidden", "true");
      let _text_6 = dom_helpers.appendText(_el_5, "×");
      _el_4[$addEventListener]("click", this.eventHandler0(html.Event, dart.bind(_ctx, 'close')));
      this.init1(_el_0);
    }
    detectChangesInternal() {
      let _ctx = this.ctx;
      this[_textBinding_2].updateText(interpolate.interpolateString0(_ctx.message));
    }
  };
  (info_component$46template._ViewInfoComponent1.new = function(parentView, parentIndex) {
    this[_textBinding_2] = new text_binding.TextBinding.new();
    info_component$46template._ViewInfoComponent1.__proto__.new.call(this, view_type.ViewType.embedded, parentView, parentIndex, 3);
    this.initComponentStyles();
  }).prototype = info_component$46template._ViewInfoComponent1.prototype;
  dart.addTypeTests(info_component$46template._ViewInfoComponent1);
  dart.setLibraryUri(info_component$46template._ViewInfoComponent1, "package:todo_fe/src/info_component.template.dart");
  dart.setFieldSignature(info_component$46template._ViewInfoComponent1, () => ({
    __proto__: dart.getFields(info_component$46template._ViewInfoComponent1.__proto__),
    [_textBinding_2]: dart.finalFieldType(text_binding.TextBinding)
  }));
  const _compView_0$1 = dart.privateName(info_component$46template, "_compView_0");
  const _InfoComponent_0_5 = dart.privateName(info_component$46template, "_InfoComponent_0_5");
  info_component$46template._ViewInfoComponentHost0 = class _ViewInfoComponentHost0 extends app_view.AppView$(info_component.InfoComponent) {
    build() {
      this[_compView_0$1] = new info_component$46template.ViewInfoComponent0.new(this, 0);
      this.rootEl = this[_compView_0$1].rootEl;
      this[_InfoComponent_0_5] = new info_component.InfoComponent.new();
      this[_compView_0$1].create(this[_InfoComponent_0_5], this.projectedNodes);
      this.init1(this.rootEl);
      return new (ComponentRefOfInfoComponent()).new(0, this, this.rootEl, this[_InfoComponent_0_5]);
    }
    detectChangesInternal() {
      this[_compView_0$1].detectChanges();
    }
    destroyInternal() {
      this[_compView_0$1].destroyInternalState();
    }
  };
  (info_component$46template._ViewInfoComponentHost0.new = function(parentView, parentIndex) {
    this[_compView_0$1] = null;
    this[_InfoComponent_0_5] = null;
    info_component$46template._ViewInfoComponentHost0.__proto__.new.call(this, view_type.ViewType.host, parentView, parentIndex, 3);
    ;
  }).prototype = info_component$46template._ViewInfoComponentHost0.prototype;
  dart.addTypeTests(info_component$46template._ViewInfoComponentHost0);
  dart.setLibraryUri(info_component$46template._ViewInfoComponentHost0, "package:todo_fe/src/info_component.template.dart");
  dart.setFieldSignature(info_component$46template._ViewInfoComponentHost0, () => ({
    __proto__: dart.getFields(info_component$46template._ViewInfoComponentHost0.__proto__),
    [_compView_0$1]: dart.fieldType(info_component$46template.ViewInfoComponent0),
    [_InfoComponent_0_5]: dart.fieldType(info_component.InfoComponent)
  }));
  info_component$46template.viewFactory_InfoComponent1 = function viewFactory_InfoComponent1(parentView, parentIndex) {
    return new info_component$46template._ViewInfoComponent1.new(parentView, parentIndex);
  };
  info_component$46template.viewFactory_InfoComponentHost0 = function viewFactory_InfoComponentHost0(parentView, parentIndex) {
    return new info_component$46template._ViewInfoComponentHost0.new(parentView, parentIndex);
  };
  info_component$46template.initReflector = function initReflector$3() {
    if (dart.test(info_component$46template._visited)) {
      return;
    }
    info_component$46template._visited = true;
    reflector.registerComponent(dart.wrapType(info_component.InfoComponent), info_component$46template.InfoComponentNgFactory);
    angular$46template.initReflector();
  };
  dart.copyProperties(info_component$46template, {
    get InfoComponentNgFactory() {
      return info_component$46template._InfoComponentNgFactory;
    }
  });
  let C9;
  let C8;
  dart.defineLazy(info_component$46template, {
    /*info_component$46template.styles$InfoComponent*/get styles$InfoComponent() {
      return C0 || CT.C0;
    },
    /*info_component$46template._InfoComponentNgFactory*/get _InfoComponentNgFactory() {
      return C8 || CT.C8;
    },
    /*info_component$46template.styles$InfoComponentHost*/get styles$InfoComponentHost() {
      return C0 || CT.C0;
    },
    /*info_component$46template._visited*/get _visited() {
      return false;
    },
    set _visited(_) {}
  });
  const ValidationComponent_violations = dart.privateName(validation_component, "ValidationComponent.violations");
  const ValidationComponent_hide = dart.privateName(validation_component, "ValidationComponent.hide");
  validation_component.ValidationComponent = class ValidationComponent extends core.Object {
    get violations() {
      return this[violations];
    }
    set violations(value) {
      this[violations] = value;
    }
    get hide() {
      return this[hide$];
    }
    set hide(value) {
      this[hide$] = value;
    }
    close() {
      return dart.dsend(this, 'hide', []);
    }
  };
  (validation_component.ValidationComponent.new = function() {
    this[violations] = null;
    this[hide$] = null;
    ;
  }).prototype = validation_component.ValidationComponent.prototype;
  dart.addTypeTests(validation_component.ValidationComponent);
  const violations = ValidationComponent_violations;
  const hide$ = ValidationComponent_hide;
  dart.setMethodSignature(validation_component.ValidationComponent, () => ({
    __proto__: dart.getMethods(validation_component.ValidationComponent.__proto__),
    close: dart.fnType(dart.void, [])
  }));
  dart.setLibraryUri(validation_component.ValidationComponent, "package:todo_fe/src/validation_component.dart");
  dart.setFieldSignature(validation_component.ValidationComponent, () => ({
    __proto__: dart.getFields(validation_component.ValidationComponent.__proto__),
    violations: dart.fieldType(core.List$(error.ConstraintViolation)),
    hide: dart.fieldType(core.Function)
  }));
  const _appEl_0$ = dart.privateName(validation_component$46template, "_appEl_0");
  const _NgIf_0_9$ = dart.privateName(validation_component$46template, "_NgIf_0_9");
  let C10;
  validation_component$46template.ViewValidationComponent0 = class ViewValidationComponent0 extends app_view.AppView$(validation_component.ValidationComponent) {
    static get _debugComponentUrl() {
      return dart.test(optimizations.isDevMode) ? "asset:todo_fe/lib/src/validation_component.dart" : null;
    }
    build() {
      let _rootEl = this.rootEl;
      let parentRenderNode = this.initViewRoot(_rootEl);
      let _anchor_0 = dom_helpers.appendAnchor(parentRenderNode);
      this[_appEl_0$] = new view_container.ViewContainer.new(0, null, this, _anchor_0);
      let _TemplateRef_0_8 = new template_ref.TemplateRef.new(this[_appEl_0$], C10 || CT.C10);
      this[_NgIf_0_9$] = new ng_if.NgIf.new(this[_appEl_0$], _TemplateRef_0_8);
      this.init0();
    }
    detectChangesInternal() {
      let _ctx = this.ctx;
      this[_NgIf_0_9$].ngIf = _ctx.violations != null && dart.notNull(_ctx.violations[$length]) > 0;
      this[_appEl_0$].detectChangesInNestedViews();
    }
    destroyInternal() {
      this[_appEl_0$].destroyNestedViews();
    }
    initComponentStyles() {
      let styles = validation_component$46template.ViewValidationComponent0._componentStyles;
      if (styles == null) {
        validation_component$46template.ViewValidationComponent0._componentStyles = styles = validation_component$46template.ViewValidationComponent0._componentStyles = new style_encapsulation._UnscopedComponentStyles.new(validation_component$46template.styles$ValidationComponent, validation_component$46template.ViewValidationComponent0._debugComponentUrl);
      }
      this.componentStyles = styles;
    }
  };
  (validation_component$46template.ViewValidationComponent0.new = function(parentView, parentIndex) {
    this[_appEl_0$] = null;
    this[_NgIf_0_9$] = null;
    validation_component$46template.ViewValidationComponent0.__proto__.new.call(this, view_type.ViewType.component, parentView, parentIndex, 3);
    this.initComponentStyles();
    this.rootEl = html.HtmlElement._check(html.document[$createElement]("validation"));
  }).prototype = validation_component$46template.ViewValidationComponent0.prototype;
  dart.addTypeTests(validation_component$46template.ViewValidationComponent0);
  dart.setLibraryUri(validation_component$46template.ViewValidationComponent0, "package:todo_fe/src/validation_component.template.dart");
  dart.setFieldSignature(validation_component$46template.ViewValidationComponent0, () => ({
    __proto__: dart.getFields(validation_component$46template.ViewValidationComponent0.__proto__),
    [_appEl_0$]: dart.fieldType(view_container.ViewContainer),
    [_NgIf_0_9$]: dart.fieldType(ng_if.NgIf)
  }));
  dart.defineLazy(validation_component$46template.ViewValidationComponent0, {
    /*validation_component$46template.ViewValidationComponent0._componentStyles*/get _componentStyles() {
      return null;
    },
    set _componentStyles(_) {}
  });
  const _appEl_3 = dart.privateName(validation_component$46template, "_appEl_3");
  const _NgFor_3_9 = dart.privateName(validation_component$46template, "_NgFor_3_9");
  const _expr_0$0 = dart.privateName(validation_component$46template, "_expr_0");
  let C11;
  validation_component$46template._ViewValidationComponent1 = class _ViewValidationComponent1 extends app_view.AppView$(validation_component.ValidationComponent) {
    build() {
      let _ctx = this.ctx;
      let doc = html.document;
      let _el_0 = doc[$createElement]("div");
      this.updateChildClass(html.HtmlElement._check(_el_0), "alert alert-warning alert-dismissible fade show");
      dom_helpers.setAttribute(_el_0, "role", "alert");
      let _el_1 = dom_helpers.appendElement(doc, _el_0, "strong");
      let _text_2 = dom_helpers.appendText(_el_1, "Invalid data");
      let _anchor_3 = dom_helpers.appendAnchor(_el_0);
      this[_appEl_3] = new view_container.ViewContainer.new(3, 0, this, _anchor_3);
      let _TemplateRef_3_8 = new template_ref.TemplateRef.new(this[_appEl_3], C11 || CT.C11);
      this[_NgFor_3_9] = new ng_for.NgFor.new(this[_appEl_3], _TemplateRef_3_8);
      let _el_4 = dom_helpers.appendElement(doc, _el_0, "button");
      dom_helpers.setAttribute(_el_4, "aria-label", "Close");
      this.updateChildClass(html.HtmlElement._check(_el_4), "close");
      dom_helpers.setAttribute(_el_4, "type", "button");
      let _el_5 = dom_helpers.appendSpan(doc, _el_4);
      dom_helpers.setAttribute(_el_5, "aria-hidden", "true");
      let _text_6 = dom_helpers.appendText(_el_5, "×");
      _el_4[$addEventListener]("click", this.eventHandler0(html.Event, dart.bind(_ctx, 'close')));
      this.init1(_el_0);
    }
    detectChangesInternal() {
      let _ctx = this.ctx;
      let currVal_0 = _ctx.violations;
      if (dart.test(app_view_utils.checkBinding(this[_expr_0$0], currVal_0))) {
        this[_NgFor_3_9].ngForOf = currVal_0;
        this[_expr_0$0] = currVal_0;
      }
      if (!dart.test(app_view_utils.AppViewUtils.throwOnChanges)) {
        this[_NgFor_3_9].ngDoCheck();
      }
      this[_appEl_3].detectChangesInNestedViews();
    }
    destroyInternal() {
      this[_appEl_3].destroyNestedViews();
    }
  };
  (validation_component$46template._ViewValidationComponent1.new = function(parentView, parentIndex) {
    this[_appEl_3] = null;
    this[_NgFor_3_9] = null;
    this[_expr_0$0] = null;
    validation_component$46template._ViewValidationComponent1.__proto__.new.call(this, view_type.ViewType.embedded, parentView, parentIndex, 3);
    this.initComponentStyles();
  }).prototype = validation_component$46template._ViewValidationComponent1.prototype;
  dart.addTypeTests(validation_component$46template._ViewValidationComponent1);
  dart.setLibraryUri(validation_component$46template._ViewValidationComponent1, "package:todo_fe/src/validation_component.template.dart");
  dart.setFieldSignature(validation_component$46template._ViewValidationComponent1, () => ({
    __proto__: dart.getFields(validation_component$46template._ViewValidationComponent1.__proto__),
    [_appEl_3]: dart.fieldType(view_container.ViewContainer),
    [_NgFor_3_9]: dart.fieldType(ng_for.NgFor),
    [_expr_0$0]: dart.fieldType(dart.dynamic)
  }));
  const _textBinding_1 = dart.privateName(validation_component$46template, "_textBinding_1");
  validation_component$46template._ViewValidationComponent2 = class _ViewValidationComponent2 extends app_view.AppView$(validation_component.ValidationComponent) {
    build() {
      let doc = html.document;
      let _el_0 = doc[$createElement]("div");
      _el_0[$append](this[_textBinding_1].element);
      this.init1(_el_0);
    }
    detectChangesInternal() {
      let local_violation = optimizations.unsafeCast(error.ConstraintViolation, this.locals[$_get]("$implicit"));
      this[_textBinding_1].updateText(interpolate.interpolateString0(local_violation.message));
    }
  };
  (validation_component$46template._ViewValidationComponent2.new = function(parentView, parentIndex) {
    this[_textBinding_1] = new text_binding.TextBinding.new();
    validation_component$46template._ViewValidationComponent2.__proto__.new.call(this, view_type.ViewType.embedded, parentView, parentIndex, 3);
    this.initComponentStyles();
  }).prototype = validation_component$46template._ViewValidationComponent2.prototype;
  dart.addTypeTests(validation_component$46template._ViewValidationComponent2);
  dart.setLibraryUri(validation_component$46template._ViewValidationComponent2, "package:todo_fe/src/validation_component.template.dart");
  dart.setFieldSignature(validation_component$46template._ViewValidationComponent2, () => ({
    __proto__: dart.getFields(validation_component$46template._ViewValidationComponent2.__proto__),
    [_textBinding_1]: dart.finalFieldType(text_binding.TextBinding)
  }));
  const _compView_0$2 = dart.privateName(validation_component$46template, "_compView_0");
  const _ValidationComponent_0_5 = dart.privateName(validation_component$46template, "_ValidationComponent_0_5");
  validation_component$46template._ViewValidationComponentHost0 = class _ViewValidationComponentHost0 extends app_view.AppView$(validation_component.ValidationComponent) {
    build() {
      this[_compView_0$2] = new validation_component$46template.ViewValidationComponent0.new(this, 0);
      this.rootEl = this[_compView_0$2].rootEl;
      this[_ValidationComponent_0_5] = new validation_component.ValidationComponent.new();
      this[_compView_0$2].create(this[_ValidationComponent_0_5], this.projectedNodes);
      this.init1(this.rootEl);
      return new (ComponentRefOfValidationComponent()).new(0, this, this.rootEl, this[_ValidationComponent_0_5]);
    }
    detectChangesInternal() {
      this[_compView_0$2].detectChanges();
    }
    destroyInternal() {
      this[_compView_0$2].destroyInternalState();
    }
  };
  (validation_component$46template._ViewValidationComponentHost0.new = function(parentView, parentIndex) {
    this[_compView_0$2] = null;
    this[_ValidationComponent_0_5] = null;
    validation_component$46template._ViewValidationComponentHost0.__proto__.new.call(this, view_type.ViewType.host, parentView, parentIndex, 3);
    ;
  }).prototype = validation_component$46template._ViewValidationComponentHost0.prototype;
  dart.addTypeTests(validation_component$46template._ViewValidationComponentHost0);
  dart.setLibraryUri(validation_component$46template._ViewValidationComponentHost0, "package:todo_fe/src/validation_component.template.dart");
  dart.setFieldSignature(validation_component$46template._ViewValidationComponentHost0, () => ({
    __proto__: dart.getFields(validation_component$46template._ViewValidationComponentHost0.__proto__),
    [_compView_0$2]: dart.fieldType(validation_component$46template.ViewValidationComponent0),
    [_ValidationComponent_0_5]: dart.fieldType(validation_component.ValidationComponent)
  }));
  validation_component$46template.viewFactory_ValidationComponent1 = function viewFactory_ValidationComponent1(parentView, parentIndex) {
    return new validation_component$46template._ViewValidationComponent1.new(parentView, parentIndex);
  };
  validation_component$46template.viewFactory_ValidationComponent2 = function viewFactory_ValidationComponent2(parentView, parentIndex) {
    return new validation_component$46template._ViewValidationComponent2.new(parentView, parentIndex);
  };
  validation_component$46template.viewFactory_ValidationComponentHost0 = function viewFactory_ValidationComponentHost0(parentView, parentIndex) {
    return new validation_component$46template._ViewValidationComponentHost0.new(parentView, parentIndex);
  };
  validation_component$46template.initReflector = function initReflector$4() {
    if (dart.test(validation_component$46template._visited)) {
      return;
    }
    validation_component$46template._visited = true;
    reflector.registerComponent(dart.wrapType(validation_component.ValidationComponent), validation_component$46template.ValidationComponentNgFactory);
    error$46template.initReflector();
    angular$46template.initReflector();
  };
  dart.copyProperties(validation_component$46template, {
    get ValidationComponentNgFactory() {
      return validation_component$46template._ValidationComponentNgFactory;
    }
  });
  let C13;
  let C12;
  dart.defineLazy(validation_component$46template, {
    /*validation_component$46template.styles$ValidationComponent*/get styles$ValidationComponent() {
      return C0 || CT.C0;
    },
    /*validation_component$46template._ValidationComponentNgFactory*/get _ValidationComponentNgFactory() {
      return C12 || CT.C12;
    },
    /*validation_component$46template.styles$ValidationComponentHost*/get styles$ValidationComponentHost() {
      return C0 || CT.C0;
    },
    /*validation_component$46template._visited*/get _visited() {
      return false;
    },
    set _visited(_) {}
  });
  error$46template.initReflector = function initReflector$5() {
  };
  const ErrorComponent_message = dart.privateName(error_component, "ErrorComponent.message");
  const ErrorComponent_hide = dart.privateName(error_component, "ErrorComponent.hide");
  error_component.ErrorComponent = class ErrorComponent extends core.Object {
    get message() {
      return this[message$0];
    }
    set message(value) {
      this[message$0] = value;
    }
    get hide() {
      return this[hide$0];
    }
    set hide(value) {
      this[hide$0] = value;
    }
    close() {
      return dart.dsend(this, 'hide', []);
    }
  };
  (error_component.ErrorComponent.new = function() {
    this[message$0] = null;
    this[hide$0] = null;
    ;
  }).prototype = error_component.ErrorComponent.prototype;
  dart.addTypeTests(error_component.ErrorComponent);
  const message$0 = ErrorComponent_message;
  const hide$0 = ErrorComponent_hide;
  dart.setMethodSignature(error_component.ErrorComponent, () => ({
    __proto__: dart.getMethods(error_component.ErrorComponent.__proto__),
    close: dart.fnType(dart.void, [])
  }));
  dart.setLibraryUri(error_component.ErrorComponent, "package:todo_fe/src/error_component.dart");
  dart.setFieldSignature(error_component.ErrorComponent, () => ({
    __proto__: dart.getFields(error_component.ErrorComponent.__proto__),
    message: dart.fieldType(core.String),
    hide: dart.fieldType(core.Function)
  }));
  const _appEl_0$0 = dart.privateName(error_component$46template, "_appEl_0");
  const _NgIf_0_9$0 = dart.privateName(error_component$46template, "_NgIf_0_9");
  let C14;
  error_component$46template.ViewErrorComponent0 = class ViewErrorComponent0 extends app_view.AppView$(error_component.ErrorComponent) {
    static get _debugComponentUrl() {
      return dart.test(optimizations.isDevMode) ? "asset:todo_fe/lib/src/error_component.dart" : null;
    }
    build() {
      let _rootEl = this.rootEl;
      let parentRenderNode = this.initViewRoot(_rootEl);
      let _anchor_0 = dom_helpers.appendAnchor(parentRenderNode);
      this[_appEl_0$0] = new view_container.ViewContainer.new(0, null, this, _anchor_0);
      let _TemplateRef_0_8 = new template_ref.TemplateRef.new(this[_appEl_0$0], C14 || CT.C14);
      this[_NgIf_0_9$0] = new ng_if.NgIf.new(this[_appEl_0$0], _TemplateRef_0_8);
      this.init0();
    }
    detectChangesInternal() {
      let _ctx = this.ctx;
      this[_NgIf_0_9$0].ngIf = _ctx.message != null && _ctx.message !== "";
      this[_appEl_0$0].detectChangesInNestedViews();
    }
    destroyInternal() {
      this[_appEl_0$0].destroyNestedViews();
    }
    initComponentStyles() {
      let styles = error_component$46template.ViewErrorComponent0._componentStyles;
      if (styles == null) {
        error_component$46template.ViewErrorComponent0._componentStyles = styles = error_component$46template.ViewErrorComponent0._componentStyles = new style_encapsulation._UnscopedComponentStyles.new(error_component$46template.styles$ErrorComponent, error_component$46template.ViewErrorComponent0._debugComponentUrl);
      }
      this.componentStyles = styles;
    }
  };
  (error_component$46template.ViewErrorComponent0.new = function(parentView, parentIndex) {
    this[_appEl_0$0] = null;
    this[_NgIf_0_9$0] = null;
    error_component$46template.ViewErrorComponent0.__proto__.new.call(this, view_type.ViewType.component, parentView, parentIndex, 3);
    this.initComponentStyles();
    this.rootEl = html.HtmlElement._check(html.document[$createElement]("error"));
  }).prototype = error_component$46template.ViewErrorComponent0.prototype;
  dart.addTypeTests(error_component$46template.ViewErrorComponent0);
  dart.setLibraryUri(error_component$46template.ViewErrorComponent0, "package:todo_fe/src/error_component.template.dart");
  dart.setFieldSignature(error_component$46template.ViewErrorComponent0, () => ({
    __proto__: dart.getFields(error_component$46template.ViewErrorComponent0.__proto__),
    [_appEl_0$0]: dart.fieldType(view_container.ViewContainer),
    [_NgIf_0_9$0]: dart.fieldType(ng_if.NgIf)
  }));
  dart.defineLazy(error_component$46template.ViewErrorComponent0, {
    /*error_component$46template.ViewErrorComponent0._componentStyles*/get _componentStyles() {
      return null;
    },
    set _componentStyles(_) {}
  });
  const _textBinding_2$ = dart.privateName(error_component$46template, "_textBinding_2");
  error_component$46template._ViewErrorComponent1 = class _ViewErrorComponent1 extends app_view.AppView$(error_component.ErrorComponent) {
    build() {
      let _ctx = this.ctx;
      let doc = html.document;
      let _el_0 = doc[$createElement]("div");
      this.updateChildClass(html.HtmlElement._check(_el_0), "alert alert-danger alert-dismissible fade show");
      dom_helpers.setAttribute(_el_0, "role", "alert");
      let _el_1 = dom_helpers.appendElement(doc, _el_0, "strong");
      _el_1[$append](this[_textBinding_2$].element);
      let _text_3 = dom_helpers.appendText(_el_0, " ");
      let _el_4 = dom_helpers.appendElement(doc, _el_0, "button");
      dom_helpers.setAttribute(_el_4, "aria-label", "Close");
      this.updateChildClass(html.HtmlElement._check(_el_4), "close");
      dom_helpers.setAttribute(_el_4, "type", "button");
      let _el_5 = dom_helpers.appendSpan(doc, _el_4);
      dom_helpers.setAttribute(_el_5, "aria-hidden", "true");
      let _text_6 = dom_helpers.appendText(_el_5, "×");
      _el_4[$addEventListener]("click", this.eventHandler0(html.Event, dart.bind(_ctx, 'close')));
      this.init1(_el_0);
    }
    detectChangesInternal() {
      let _ctx = this.ctx;
      this[_textBinding_2$].updateText(interpolate.interpolateString0(_ctx.message));
    }
  };
  (error_component$46template._ViewErrorComponent1.new = function(parentView, parentIndex) {
    this[_textBinding_2$] = new text_binding.TextBinding.new();
    error_component$46template._ViewErrorComponent1.__proto__.new.call(this, view_type.ViewType.embedded, parentView, parentIndex, 3);
    this.initComponentStyles();
  }).prototype = error_component$46template._ViewErrorComponent1.prototype;
  dart.addTypeTests(error_component$46template._ViewErrorComponent1);
  dart.setLibraryUri(error_component$46template._ViewErrorComponent1, "package:todo_fe/src/error_component.template.dart");
  dart.setFieldSignature(error_component$46template._ViewErrorComponent1, () => ({
    __proto__: dart.getFields(error_component$46template._ViewErrorComponent1.__proto__),
    [_textBinding_2$]: dart.finalFieldType(text_binding.TextBinding)
  }));
  const _compView_0$3 = dart.privateName(error_component$46template, "_compView_0");
  const _ErrorComponent_0_5 = dart.privateName(error_component$46template, "_ErrorComponent_0_5");
  error_component$46template._ViewErrorComponentHost0 = class _ViewErrorComponentHost0 extends app_view.AppView$(error_component.ErrorComponent) {
    build() {
      this[_compView_0$3] = new error_component$46template.ViewErrorComponent0.new(this, 0);
      this.rootEl = this[_compView_0$3].rootEl;
      this[_ErrorComponent_0_5] = new error_component.ErrorComponent.new();
      this[_compView_0$3].create(this[_ErrorComponent_0_5], this.projectedNodes);
      this.init1(this.rootEl);
      return new (ComponentRefOfErrorComponent()).new(0, this, this.rootEl, this[_ErrorComponent_0_5]);
    }
    detectChangesInternal() {
      this[_compView_0$3].detectChanges();
    }
    destroyInternal() {
      this[_compView_0$3].destroyInternalState();
    }
  };
  (error_component$46template._ViewErrorComponentHost0.new = function(parentView, parentIndex) {
    this[_compView_0$3] = null;
    this[_ErrorComponent_0_5] = null;
    error_component$46template._ViewErrorComponentHost0.__proto__.new.call(this, view_type.ViewType.host, parentView, parentIndex, 3);
    ;
  }).prototype = error_component$46template._ViewErrorComponentHost0.prototype;
  dart.addTypeTests(error_component$46template._ViewErrorComponentHost0);
  dart.setLibraryUri(error_component$46template._ViewErrorComponentHost0, "package:todo_fe/src/error_component.template.dart");
  dart.setFieldSignature(error_component$46template._ViewErrorComponentHost0, () => ({
    __proto__: dart.getFields(error_component$46template._ViewErrorComponentHost0.__proto__),
    [_compView_0$3]: dart.fieldType(error_component$46template.ViewErrorComponent0),
    [_ErrorComponent_0_5]: dart.fieldType(error_component.ErrorComponent)
  }));
  error_component$46template.viewFactory_ErrorComponent1 = function viewFactory_ErrorComponent1(parentView, parentIndex) {
    return new error_component$46template._ViewErrorComponent1.new(parentView, parentIndex);
  };
  error_component$46template.viewFactory_ErrorComponentHost0 = function viewFactory_ErrorComponentHost0(parentView, parentIndex) {
    return new error_component$46template._ViewErrorComponentHost0.new(parentView, parentIndex);
  };
  error_component$46template.initReflector = function initReflector$6() {
    if (dart.test(error_component$46template._visited)) {
      return;
    }
    error_component$46template._visited = true;
    reflector.registerComponent(dart.wrapType(error_component.ErrorComponent), error_component$46template.ErrorComponentNgFactory);
    angular$46template.initReflector();
  };
  dart.copyProperties(error_component$46template, {
    get ErrorComponentNgFactory() {
      return error_component$46template._ErrorComponentNgFactory;
    }
  });
  let C16;
  let C15;
  dart.defineLazy(error_component$46template, {
    /*error_component$46template.styles$ErrorComponent*/get styles$ErrorComponent() {
      return C0 || CT.C0;
    },
    /*error_component$46template._ErrorComponentNgFactory*/get _ErrorComponentNgFactory() {
      return C15 || CT.C15;
    },
    /*error_component$46template.styles$ErrorComponentHost*/get styles$ErrorComponentHost() {
      return C0 || CT.C0;
    },
    /*error_component$46template._visited*/get _visited() {
      return false;
    },
    set _visited(_) {}
  });
  user$46template.initReflector = function initReflector$7() {
  };
  route_paths$46template.initReflector = function initReflector$8() {
    if (dart.test(route_paths$46template._visited)) {
      return;
    }
    route_paths$46template._visited = true;
    angular_router$46template.initReflector();
  };
  dart.defineLazy(route_paths$46template, {
    /*route_paths$46template._visited*/get _visited() {
      return false;
    },
    set _visited(_) {}
  });
  form_component$46template.initReflector = function initReflector$9() {
    if (dart.test(form_component$46template._visited)) {
      return;
    }
    form_component$46template._visited = true;
    error$46template.initReflector();
    angular_router$46template.initReflector();
    route_paths$46template.initReflector();
    user$46template.initReflector();
  };
  dart.defineLazy(form_component$46template, {
    /*form_component$46template._visited*/get _visited() {
      return false;
    },
    set _visited(_) {}
  });
  auth_service$46template.initReflector = function initReflector$10() {
    if (dart.test(auth_service$46template._visited)) {
      return;
    }
    auth_service$46template._visited = true;
    user$46template.initReflector();
  };
  dart.defineLazy(auth_service$46template, {
    /*auth_service$46template._visited*/get _visited() {
      return false;
    },
    set _visited(_) {}
  });
  const _compView_4$ = dart.privateName(register_component$46template, "_compView_4");
  const _ErrorComponent_4_5$ = dart.privateName(register_component$46template, "_ErrorComponent_4_5");
  const _compView_6$ = dart.privateName(register_component$46template, "_compView_6");
  const _ValidationComponent_6_5$ = dart.privateName(register_component$46template, "_ValidationComponent_6_5");
  const _compView_8$ = dart.privateName(register_component$46template, "_compView_8");
  const _InfoComponent_8_5$ = dart.privateName(register_component$46template, "_InfoComponent_8_5");
  const _expr_0$1 = dart.privateName(register_component$46template, "_expr_0");
  const _expr_1$ = dart.privateName(register_component$46template, "_expr_1");
  const _expr_2$ = dart.privateName(register_component$46template, "_expr_2");
  const _expr_3$ = dart.privateName(register_component$46template, "_expr_3");
  const _expr_4$ = dart.privateName(register_component$46template, "_expr_4");
  const _expr_5$ = dart.privateName(register_component$46template, "_expr_5");
  const _el_14$ = dart.privateName(register_component$46template, "_el_14");
  const _el_19$ = dart.privateName(register_component$46template, "_el_19");
  const _el_24 = dart.privateName(register_component$46template, "_el_24");
  const _handle_click_25_0 = dart.privateName(register_component$46template, "_handle_click_25_0");
  const _authService$0 = dart.privateName(register_component, "_authService");
  register_component.RegisterComponent = class RegisterComponent extends form_component.FormComponent {
    onSuccessfullRegister(response) {
      this.infoMsg = "Successfully registered";
    }
    register(email, password, repeatedPassword) {
      return async.async(dart.void, (function* register() {
        core.print("Email: " + dart.str(email) + ", password: " + dart.str(password) + ", password2: " + dart.str(repeatedPassword));
        let register = new user.Register.new(email, password, repeatedPassword);
        this.handleErrors(this[_authService$0].register(register), dart.bind(this, 'onSuccessfullRegister'));
      }).bind(this));
    }
  };
  (register_component.RegisterComponent.new = function(_authService, router) {
    this[_authService$0] = _authService;
    register_component.RegisterComponent.__proto__.new.call(this, router);
    ;
  }).prototype = register_component.RegisterComponent.prototype;
  dart.addTypeTests(register_component.RegisterComponent);
  dart.setMethodSignature(register_component.RegisterComponent, () => ({
    __proto__: dart.getMethods(register_component.RegisterComponent.__proto__),
    onSuccessfullRegister: dart.fnType(dart.void, [response.Response]),
    register: dart.fnType(dart.void, [core.String, core.String, core.String])
  }));
  dart.setLibraryUri(register_component.RegisterComponent, "package:todo_fe/src/register_component.dart");
  dart.setFieldSignature(register_component.RegisterComponent, () => ({
    __proto__: dart.getFields(register_component.RegisterComponent.__proto__),
    [_authService$0]: dart.fieldType(auth_service.AuthService)
  }));
  register_component$46template.ViewRegisterComponent0 = class ViewRegisterComponent0 extends app_view.AppView$(register_component.RegisterComponent) {
    static get _debugComponentUrl() {
      return dart.test(optimizations.isDevMode) ? "asset:todo_fe/lib/src/register_component.dart" : null;
    }
    build() {
      let _rootEl = this.rootEl;
      let parentRenderNode = this.initViewRoot(_rootEl);
      let doc = html.document;
      let _el_0 = dom_helpers.appendElement(doc, parentRenderNode, "h3");
      let _text_1 = dom_helpers.appendText(_el_0, "Register");
      let _el_2 = dom_helpers.appendElement(doc, parentRenderNode, "br");
      let _el_3 = dom_helpers.appendDiv(doc, parentRenderNode);
      this[_compView_4$] = new error_component$46template.ViewErrorComponent0.new(this, 4);
      let _el_4 = this[_compView_4$].rootEl;
      _el_3[$append](_el_4);
      this[_ErrorComponent_4_5$] = new error_component.ErrorComponent.new();
      this[_compView_4$].create0(this[_ErrorComponent_4_5$]);
      let _el_5 = dom_helpers.appendDiv(doc, parentRenderNode);
      this[_compView_6$] = new validation_component$46template.ViewValidationComponent0.new(this, 6);
      let _el_6 = this[_compView_6$].rootEl;
      _el_5[$append](_el_6);
      this[_ValidationComponent_6_5$] = new validation_component.ValidationComponent.new();
      this[_compView_6$].create0(this[_ValidationComponent_6_5$]);
      let _el_7 = dom_helpers.appendDiv(doc, parentRenderNode);
      this[_compView_8$] = new info_component$46template.ViewInfoComponent0.new(this, 8);
      let _el_8 = this[_compView_8$].rootEl;
      _el_7[$append](_el_8);
      this[_InfoComponent_8_5$] = new info_component.InfoComponent.new();
      this[_compView_8$].create0(this[_InfoComponent_8_5$]);
      let _el_9 = dom_helpers.appendElement(doc, parentRenderNode, "dev");
      let _el_10 = dom_helpers.appendDiv(doc, _el_9);
      this.updateChildClass(_el_10, "form-group");
      let _el_11 = dom_helpers.appendElement(doc, _el_10, "label");
      dom_helpers.setAttribute(_el_11, "for", "exampleInputEmail1");
      let _text_12 = dom_helpers.appendText(_el_11, "Email address");
      let _text_13 = dom_helpers.appendText(_el_10, " ");
      this[_el_14$] = html.InputElement._check(dom_helpers.appendElement(doc, _el_10, "input"));
      dom_helpers.setAttribute(this[_el_14$], "aria-describedby", "emailHelp");
      this.updateChildClass(this[_el_14$], "form-control");
      dom_helpers.setAttribute(this[_el_14$], "id", "exampleInputEmail1");
      dom_helpers.setAttribute(this[_el_14$], "placeholder", "Enter email");
      dom_helpers.setAttribute(this[_el_14$], "type", "email");
      let _el_15 = dom_helpers.appendDiv(doc, _el_9);
      this.updateChildClass(_el_15, "form-group");
      let _el_16 = dom_helpers.appendElement(doc, _el_15, "label");
      dom_helpers.setAttribute(_el_16, "for", "exampleInputPassword1");
      let _text_17 = dom_helpers.appendText(_el_16, "Password");
      let _text_18 = dom_helpers.appendText(_el_15, " ");
      this[_el_19$] = html.InputElement._check(dom_helpers.appendElement(doc, _el_15, "input"));
      this.updateChildClass(this[_el_19$], "form-control");
      dom_helpers.setAttribute(this[_el_19$], "id", "exampleInputPassword1");
      dom_helpers.setAttribute(this[_el_19$], "placeholder", "Password");
      dom_helpers.setAttribute(this[_el_19$], "type", "password");
      let _el_20 = dom_helpers.appendDiv(doc, _el_9);
      this.updateChildClass(_el_20, "form-group");
      let _el_21 = dom_helpers.appendElement(doc, _el_20, "label");
      dom_helpers.setAttribute(_el_21, "for", "exampleInputPassword2");
      let _text_22 = dom_helpers.appendText(_el_21, "Repeate password");
      let _text_23 = dom_helpers.appendText(_el_20, " ");
      this[_el_24] = html.InputElement._check(dom_helpers.appendElement(doc, _el_20, "input"));
      this.updateChildClass(this[_el_24], "form-control");
      dom_helpers.setAttribute(this[_el_24], "id", "exampleInputPassword2");
      dom_helpers.setAttribute(this[_el_24], "placeholder", "Repeate password");
      dom_helpers.setAttribute(this[_el_24], "type", "password");
      let _el_25 = dom_helpers.appendElement(doc, _el_9, "button");
      this.updateChildClass(html.HtmlElement._check(_el_25), "btn btn-primary");
      let _text_26 = dom_helpers.appendText(_el_25, "Register");
      _el_25[$addEventListener]("click", this.eventHandler1(html.Event, html.Event, dart.bind(this, _handle_click_25_0)));
      this.init0();
    }
    detectChangesInternal() {
      let _ctx = this.ctx;
      let currVal_0 = _ctx.errorMsg;
      if (dart.test(app_view_utils.checkBinding(this[_expr_0$1], currVal_0))) {
        this[_ErrorComponent_4_5$].message = currVal_0;
        this[_expr_0$1] = currVal_0;
      }
      let currVal_1 = _ctx.hideError;
      if (dart.test(app_view_utils.checkBinding(this[_expr_1$], currVal_1))) {
        this[_ErrorComponent_4_5$].hide = currVal_1;
        this[_expr_1$] = currVal_1;
      }
      let currVal_2 = _ctx.violations;
      if (dart.test(app_view_utils.checkBinding(this[_expr_2$], currVal_2))) {
        this[_ValidationComponent_6_5$].violations = currVal_2;
        this[_expr_2$] = currVal_2;
      }
      let currVal_3 = _ctx.hideConstraintViolation;
      if (dart.test(app_view_utils.checkBinding(this[_expr_3$], currVal_3))) {
        this[_ValidationComponent_6_5$].hide = currVal_3;
        this[_expr_3$] = currVal_3;
      }
      let currVal_4 = _ctx.infoMsg;
      if (dart.test(app_view_utils.checkBinding(this[_expr_4$], currVal_4))) {
        this[_InfoComponent_8_5$].message = currVal_4;
        this[_expr_4$] = currVal_4;
      }
      let currVal_5 = _ctx.hideInfo;
      if (dart.test(app_view_utils.checkBinding(this[_expr_5$], currVal_5))) {
        this[_InfoComponent_8_5$].hide = currVal_5;
        this[_expr_5$] = currVal_5;
      }
      this[_compView_4$].detectChanges();
      this[_compView_6$].detectChanges();
      this[_compView_8$].detectChanges();
    }
    destroyInternal() {
      this[_compView_4$].destroyInternalState();
      this[_compView_6$].destroyInternalState();
      this[_compView_8$].destroyInternalState();
    }
    [_handle_click_25_0]($36event) {
      let local_email = this[_el_14$];
      let local_password = this[_el_19$];
      let local_repeatedPassword = this[_el_24];
      let _ctx = this.ctx;
      _ctx.register(local_email.value, local_password.value, local_repeatedPassword.value);
    }
    initComponentStyles() {
      let styles = register_component$46template.ViewRegisterComponent0._componentStyles;
      if (styles == null) {
        register_component$46template.ViewRegisterComponent0._componentStyles = styles = register_component$46template.ViewRegisterComponent0._componentStyles = new style_encapsulation._UnscopedComponentStyles.new(register_component$46template.styles$RegisterComponent, register_component$46template.ViewRegisterComponent0._debugComponentUrl);
      }
      this.componentStyles = styles;
    }
  };
  (register_component$46template.ViewRegisterComponent0.new = function(parentView, parentIndex) {
    this[_compView_4$] = null;
    this[_ErrorComponent_4_5$] = null;
    this[_compView_6$] = null;
    this[_ValidationComponent_6_5$] = null;
    this[_compView_8$] = null;
    this[_InfoComponent_8_5$] = null;
    this[_expr_0$1] = null;
    this[_expr_1$] = null;
    this[_expr_2$] = null;
    this[_expr_3$] = null;
    this[_expr_4$] = null;
    this[_expr_5$] = null;
    this[_el_14$] = null;
    this[_el_19$] = null;
    this[_el_24] = null;
    register_component$46template.ViewRegisterComponent0.__proto__.new.call(this, view_type.ViewType.component, parentView, parentIndex, 3);
    this.initComponentStyles();
    this.rootEl = html.HtmlElement._check(html.document[$createElement]("register"));
  }).prototype = register_component$46template.ViewRegisterComponent0.prototype;
  dart.addTypeTests(register_component$46template.ViewRegisterComponent0);
  dart.setMethodSignature(register_component$46template.ViewRegisterComponent0, () => ({
    __proto__: dart.getMethods(register_component$46template.ViewRegisterComponent0.__proto__),
    [_handle_click_25_0]: dart.fnType(dart.void, [dart.dynamic])
  }));
  dart.setLibraryUri(register_component$46template.ViewRegisterComponent0, "package:todo_fe/src/register_component.template.dart");
  dart.setFieldSignature(register_component$46template.ViewRegisterComponent0, () => ({
    __proto__: dart.getFields(register_component$46template.ViewRegisterComponent0.__proto__),
    [_compView_4$]: dart.fieldType(error_component$46template.ViewErrorComponent0),
    [_ErrorComponent_4_5$]: dart.fieldType(error_component.ErrorComponent),
    [_compView_6$]: dart.fieldType(validation_component$46template.ViewValidationComponent0),
    [_ValidationComponent_6_5$]: dart.fieldType(validation_component.ValidationComponent),
    [_compView_8$]: dart.fieldType(info_component$46template.ViewInfoComponent0),
    [_InfoComponent_8_5$]: dart.fieldType(info_component.InfoComponent),
    [_expr_0$1]: dart.fieldType(core.String),
    [_expr_1$]: dart.fieldType(dart.dynamic),
    [_expr_2$]: dart.fieldType(dart.dynamic),
    [_expr_3$]: dart.fieldType(dart.dynamic),
    [_expr_4$]: dart.fieldType(core.String),
    [_expr_5$]: dart.fieldType(dart.dynamic),
    [_el_14$]: dart.fieldType(html.InputElement),
    [_el_19$]: dart.fieldType(html.InputElement),
    [_el_24]: dart.fieldType(html.InputElement)
  }));
  dart.defineLazy(register_component$46template.ViewRegisterComponent0, {
    /*register_component$46template.ViewRegisterComponent0._componentStyles*/get _componentStyles() {
      return null;
    },
    set _componentStyles(_) {}
  });
  const _compView_0$4 = dart.privateName(register_component$46template, "_compView_0");
  const _AuthService_0_5$ = dart.privateName(register_component$46template, "_AuthService_0_5");
  const _RegisterComponent_0_6 = dart.privateName(register_component$46template, "_RegisterComponent_0_6");
  register_component$46template._ViewRegisterComponentHost0 = class _ViewRegisterComponentHost0 extends app_view.AppView$(register_component.RegisterComponent) {
    build() {
      this[_compView_0$4] = new register_component$46template.ViewRegisterComponent0.new(this, 0);
      this.rootEl = this[_compView_0$4].rootEl;
      this[_AuthService_0_5$] = dart.test(optimizations.isDevMode) ? errors.debugInjectorWrap(auth_service.AuthService, dart.wrapType(auth_service.AuthService), dart.fn(() => new auth_service.AuthService.new(client.Client._check(this.injectorGet(dart.wrapType(client.Client), this.viewData.parentIndex))), VoidToAuthService())) : new auth_service.AuthService.new(client.Client._check(this.injectorGet(dart.wrapType(client.Client), this.viewData.parentIndex)));
      this[_RegisterComponent_0_6] = dart.test(optimizations.isDevMode) ? errors.debugInjectorWrap(register_component.RegisterComponent, dart.wrapType(register_component.RegisterComponent), dart.fn(() => new register_component.RegisterComponent.new(auth_service.AuthService._check(this[_AuthService_0_5$]), router.Router._check(this.injectorGet(dart.wrapType(router.Router), this.viewData.parentIndex))), VoidToRegisterComponent())) : new register_component.RegisterComponent.new(auth_service.AuthService._check(this[_AuthService_0_5$]), router.Router._check(this.injectorGet(dart.wrapType(router.Router), this.viewData.parentIndex)));
      this[_compView_0$4].create(this[_RegisterComponent_0_6], this.projectedNodes);
      this.init1(this.rootEl);
      return new (ComponentRefOfRegisterComponent()).new(0, this, this.rootEl, this[_RegisterComponent_0_6]);
    }
    injectorGetInternal(token, nodeIndex, notFoundResult) {
      if (token === dart.wrapType(auth_service.AuthService) && 0 === nodeIndex) {
        return this[_AuthService_0_5$];
      }
      return notFoundResult;
    }
    detectChangesInternal() {
      this[_compView_0$4].detectChanges();
    }
    destroyInternal() {
      this[_compView_0$4].destroyInternalState();
    }
  };
  (register_component$46template._ViewRegisterComponentHost0.new = function(parentView, parentIndex) {
    this[_compView_0$4] = null;
    this[_AuthService_0_5$] = null;
    this[_RegisterComponent_0_6] = null;
    register_component$46template._ViewRegisterComponentHost0.__proto__.new.call(this, view_type.ViewType.host, parentView, parentIndex, 3);
    ;
  }).prototype = register_component$46template._ViewRegisterComponentHost0.prototype;
  dart.addTypeTests(register_component$46template._ViewRegisterComponentHost0);
  dart.setMethodSignature(register_component$46template._ViewRegisterComponentHost0, () => ({
    __proto__: dart.getMethods(register_component$46template._ViewRegisterComponentHost0.__proto__),
    injectorGetInternal: dart.fnType(dart.dynamic, [dart.dynamic, core.int, dart.dynamic])
  }));
  dart.setLibraryUri(register_component$46template._ViewRegisterComponentHost0, "package:todo_fe/src/register_component.template.dart");
  dart.setFieldSignature(register_component$46template._ViewRegisterComponentHost0, () => ({
    __proto__: dart.getFields(register_component$46template._ViewRegisterComponentHost0.__proto__),
    [_compView_0$4]: dart.fieldType(register_component$46template.ViewRegisterComponent0),
    [_AuthService_0_5$]: dart.fieldType(dart.dynamic),
    [_RegisterComponent_0_6]: dart.fieldType(register_component.RegisterComponent)
  }));
  register_component$46template.viewFactory_RegisterComponentHost0 = function viewFactory_RegisterComponentHost0(parentView, parentIndex) {
    return new register_component$46template._ViewRegisterComponentHost0.new(parentView, parentIndex);
  };
  register_component$46template.initReflector = function initReflector$11() {
    if (dart.test(register_component$46template._visited)) {
      return;
    }
    register_component$46template._visited = true;
    reflector.registerComponent(dart.wrapType(register_component.RegisterComponent), register_component$46template.RegisterComponentNgFactory);
    auth_service$46template.initReflector();
    error_component$46template.initReflector();
    form_component$46template.initReflector();
    info_component$46template.initReflector();
    angular$46template.initReflector();
    angular_router$46template.initReflector();
    user$46template.initReflector();
    validation_component$46template.initReflector();
  };
  dart.copyProperties(register_component$46template, {
    get RegisterComponentNgFactory() {
      return register_component$46template._RegisterComponentNgFactory;
    }
  });
  let C18;
  let C17;
  dart.defineLazy(register_component$46template, {
    /*register_component$46template.styles$RegisterComponent*/get styles$RegisterComponent() {
      return C0 || CT.C0;
    },
    /*register_component$46template._RegisterComponentNgFactory*/get _RegisterComponentNgFactory() {
      return C17 || CT.C17;
    },
    /*register_component$46template.styles$RegisterComponentHost*/get styles$RegisterComponentHost() {
      return C0 || CT.C0;
    },
    /*register_component$46template._visited*/get _visited() {
      return false;
    },
    set _visited(_) {}
  });
  const _compView_4$0 = dart.privateName(todo_list_component$46template, "_compView_4");
  const _ErrorComponent_4_5$0 = dart.privateName(todo_list_component$46template, "_ErrorComponent_4_5");
  const _compView_6$0 = dart.privateName(todo_list_component$46template, "_compView_6");
  const _ValidationComponent_6_5$0 = dart.privateName(todo_list_component$46template, "_ValidationComponent_6_5");
  const _compView_8$0 = dart.privateName(todo_list_component$46template, "_compView_8");
  const _InfoComponent_8_5$0 = dart.privateName(todo_list_component$46template, "_InfoComponent_8_5");
  const _appEl_23 = dart.privateName(todo_list_component$46template, "_appEl_23");
  const _NgFor_23_9 = dart.privateName(todo_list_component$46template, "_NgFor_23_9");
  const _expr_0$2 = dart.privateName(todo_list_component$46template, "_expr_0");
  const _expr_1$0 = dart.privateName(todo_list_component$46template, "_expr_1");
  const _expr_2$0 = dart.privateName(todo_list_component$46template, "_expr_2");
  const _expr_3$0 = dart.privateName(todo_list_component$46template, "_expr_3");
  const _expr_4$0 = dart.privateName(todo_list_component$46template, "_expr_4");
  const _expr_5$0 = dart.privateName(todo_list_component$46template, "_expr_5");
  const _expr_6 = dart.privateName(todo_list_component$46template, "_expr_6");
  const _el_14$0 = dart.privateName(todo_list_component$46template, "_el_14");
  let C19;
  const _handle_click_15_0 = dart.privateName(todo_list_component$46template, "_handle_click_15_0");
  const _todoService$ = dart.privateName(todo_list_component, "_todoService");
  const TodoListComponent_todos = dart.privateName(todo_list_component, "TodoListComponent.todos");
  const TodoListComponent_selected = dart.privateName(todo_list_component, "TodoListComponent.selected");
  const TodoListComponent_editedText = dart.privateName(todo_list_component, "TodoListComponent.editedText");
  todo_list_component.TodoListComponent = class TodoListComponent extends form_component.FormComponent {
    get todos() {
      return this[todos];
    }
    set todos(value) {
      this[todos] = value;
    }
    get selected() {
      return this[selected];
    }
    set selected(value) {
      this[selected] = value;
    }
    get editedText() {
      return this[editedText];
    }
    set editedText(value) {
      this[editedText] = value;
    }
    ngOnInit() {
      return async.async(dart.void, (function* ngOnInit() {
        this.handleErrors(this[_todoService$].getAll(), dart.bind(this, 'onSuccessfullListing'));
      }).bind(this));
    }
    onSuccessfullListing(response) {
      let l = core.Iterable._check(convert.json.decode(response.body));
      this.todos = l[$map](todo$.Todo, dart.fn(json => todo$.Todo.fromJson(MapOfString$dynamic()._check(json)), dynamicToTodo()))[$toList]();
      this.todos[$sort](dart.fn((a, b) => b.id[$compareTo](a.id), TodoAndTodoToint()));
    }
    onSuccessfullCreating(response) {
      this.infoMsg = "Todo created";
      let todo = todo$.Todo.fromJson(MapOfString$dynamic()._check(convert.json.decode(response.body)));
      this.todos[$insert](0, todo);
    }
    onSuccessfullDeleting(id) {
      let fun = dart.fn(response => {
        this.infoMsg = "Todo removed";
        this.todos[$removeWhere](dart.fn(todo => todo.id == id, TodoTobool()));
      }, ResponseToNull());
      return fun;
    }
    create(text) {
      return async.async(dart.void, (function* create() {
        this.handleErrors(this[_todoService$].create(text), dart.bind(this, 'onSuccessfullCreating'));
      }).bind(this));
    }
    delete(id) {
      this.handleErrors(this[_todoService$].delete(id), this.onSuccessfullDeleting(id));
    }
    select(todo) {
      if (this.selected != null && this.editedText != null) {
        this.selected.text = this.editedText;
      }
      this.selected = todo;
      this.editedText = todo.text;
    }
    onSuccessfullUpdating(response) {
      this.infoMsg = "Todo updated";
      this.selected = null;
      this.editedText = null;
    }
    update() {
      this.handleErrors(this[_todoService$].update(this.selected), dart.bind(this, 'onSuccessfullUpdating'));
    }
  };
  (todo_list_component.TodoListComponent.new = function(_todoService, router) {
    this[todos] = JSArrayOfTodo().of([]);
    this[selected] = null;
    this[editedText] = null;
    this[_todoService$] = _todoService;
    todo_list_component.TodoListComponent.__proto__.new.call(this, router);
    ;
  }).prototype = todo_list_component.TodoListComponent.prototype;
  dart.addTypeTests(todo_list_component.TodoListComponent);
  const todos = TodoListComponent_todos;
  const selected = TodoListComponent_selected;
  const editedText = TodoListComponent_editedText;
  todo_list_component.TodoListComponent[dart.implements] = () => [lifecycle_hooks.OnInit];
  dart.setMethodSignature(todo_list_component.TodoListComponent, () => ({
    __proto__: dart.getMethods(todo_list_component.TodoListComponent.__proto__),
    ngOnInit: dart.fnType(dart.void, []),
    onSuccessfullListing: dart.fnType(dart.void, [response.Response]),
    onSuccessfullCreating: dart.fnType(dart.void, [response.Response]),
    onSuccessfullDeleting: dart.fnType(dart.fnType(dart.void, [response.Response]), [core.int]),
    create: dart.fnType(dart.void, [core.String]),
    delete: dart.fnType(dart.void, [core.int]),
    select: dart.fnType(dart.void, [todo$.Todo]),
    onSuccessfullUpdating: dart.fnType(dart.void, [response.Response]),
    update: dart.fnType(dart.void, [])
  }));
  dart.setLibraryUri(todo_list_component.TodoListComponent, "package:todo_fe/src/todo_list_component.dart");
  dart.setFieldSignature(todo_list_component.TodoListComponent, () => ({
    __proto__: dart.getFields(todo_list_component.TodoListComponent.__proto__),
    [_todoService$]: dart.fieldType(todo_service.TodoService),
    todos: dart.fieldType(core.List$(todo$.Todo)),
    selected: dart.fieldType(todo$.Todo),
    editedText: dart.fieldType(core.String)
  }));
  todo_list_component$46template.ViewTodoListComponent0 = class ViewTodoListComponent0 extends app_view.AppView$(todo_list_component.TodoListComponent) {
    static get _debugComponentUrl() {
      return dart.test(optimizations.isDevMode) ? "asset:todo_fe/lib/src/todo_list_component.dart" : null;
    }
    build() {
      let _rootEl = this.rootEl;
      let parentRenderNode = this.initViewRoot(_rootEl);
      let doc = html.document;
      let _el_0 = dom_helpers.appendElement(doc, parentRenderNode, "h3");
      let _text_1 = dom_helpers.appendText(_el_0, "New TODO");
      let _el_2 = dom_helpers.appendElement(doc, parentRenderNode, "br");
      let _el_3 = dom_helpers.appendDiv(doc, parentRenderNode);
      this[_compView_4$0] = new error_component$46template.ViewErrorComponent0.new(this, 4);
      let _el_4 = this[_compView_4$0].rootEl;
      _el_3[$append](_el_4);
      this[_ErrorComponent_4_5$0] = new error_component.ErrorComponent.new();
      this[_compView_4$0].create0(this[_ErrorComponent_4_5$0]);
      let _el_5 = dom_helpers.appendDiv(doc, parentRenderNode);
      this[_compView_6$0] = new validation_component$46template.ViewValidationComponent0.new(this, 6);
      let _el_6 = this[_compView_6$0].rootEl;
      _el_5[$append](_el_6);
      this[_ValidationComponent_6_5$0] = new validation_component.ValidationComponent.new();
      this[_compView_6$0].create0(this[_ValidationComponent_6_5$0]);
      let _el_7 = dom_helpers.appendDiv(doc, parentRenderNode);
      this[_compView_8$0] = new info_component$46template.ViewInfoComponent0.new(this, 8);
      let _el_8 = this[_compView_8$0].rootEl;
      _el_7[$append](_el_8);
      this[_InfoComponent_8_5$0] = new info_component.InfoComponent.new();
      this[_compView_8$0].create0(this[_InfoComponent_8_5$0]);
      let _el_9 = dom_helpers.appendDiv(doc, parentRenderNode);
      let _el_10 = dom_helpers.appendDiv(doc, _el_9);
      this.updateChildClass(_el_10, "form-group");
      let _el_11 = dom_helpers.appendElement(doc, _el_10, "label");
      dom_helpers.setAttribute(_el_11, "for", "textInput");
      let _text_12 = dom_helpers.appendText(_el_11, "Put TODO text here");
      let _text_13 = dom_helpers.appendText(_el_10, " ");
      this[_el_14$0] = html.InputElement._check(dom_helpers.appendElement(doc, _el_10, "input"));
      this.updateChildClass(this[_el_14$0], "form-control");
      dom_helpers.setAttribute(this[_el_14$0], "id", "textInput");
      dom_helpers.setAttribute(this[_el_14$0], "placeholder", "Enter text");
      dom_helpers.setAttribute(this[_el_14$0], "type", "text");
      let _el_15 = dom_helpers.appendElement(doc, _el_9, "button");
      this.updateChildClass(html.HtmlElement._check(_el_15), "btn btn-primary");
      let _text_16 = dom_helpers.appendText(_el_15, "Create");
      let _el_17 = dom_helpers.appendElement(doc, parentRenderNode, "br");
      let _el_18 = dom_helpers.appendElement(doc, parentRenderNode, "br");
      let _el_19 = dom_helpers.appendElement(doc, parentRenderNode, "br");
      let _el_20 = dom_helpers.appendElement(doc, parentRenderNode, "h3");
      let _text_21 = dom_helpers.appendText(_el_20, "TODOs");
      let _el_22 = dom_helpers.appendElement(doc, parentRenderNode, "br");
      let _anchor_23 = dom_helpers.appendAnchor(parentRenderNode);
      this[_appEl_23] = new view_container.ViewContainer.new(23, null, this, _anchor_23);
      let _TemplateRef_23_8 = new template_ref.TemplateRef.new(this[_appEl_23], C19 || CT.C19);
      this[_NgFor_23_9] = new ng_for.NgFor.new(this[_appEl_23], _TemplateRef_23_8);
      _el_15[$addEventListener]("click", this.eventHandler1(html.Event, html.Event, dart.bind(this, _handle_click_15_0)));
      this.init0();
    }
    detectChangesInternal() {
      let _ctx = this.ctx;
      let currVal_0 = _ctx.errorMsg;
      if (dart.test(app_view_utils.checkBinding(this[_expr_0$2], currVal_0))) {
        this[_ErrorComponent_4_5$0].message = currVal_0;
        this[_expr_0$2] = currVal_0;
      }
      let currVal_1 = _ctx.hideError;
      if (dart.test(app_view_utils.checkBinding(this[_expr_1$0], currVal_1))) {
        this[_ErrorComponent_4_5$0].hide = currVal_1;
        this[_expr_1$0] = currVal_1;
      }
      let currVal_2 = _ctx.violations;
      if (dart.test(app_view_utils.checkBinding(this[_expr_2$0], currVal_2))) {
        this[_ValidationComponent_6_5$0].violations = currVal_2;
        this[_expr_2$0] = currVal_2;
      }
      let currVal_3 = _ctx.hideConstraintViolation;
      if (dart.test(app_view_utils.checkBinding(this[_expr_3$0], currVal_3))) {
        this[_ValidationComponent_6_5$0].hide = currVal_3;
        this[_expr_3$0] = currVal_3;
      }
      let currVal_4 = _ctx.infoMsg;
      if (dart.test(app_view_utils.checkBinding(this[_expr_4$0], currVal_4))) {
        this[_InfoComponent_8_5$0].message = currVal_4;
        this[_expr_4$0] = currVal_4;
      }
      let currVal_5 = _ctx.hideInfo;
      if (dart.test(app_view_utils.checkBinding(this[_expr_5$0], currVal_5))) {
        this[_InfoComponent_8_5$0].hide = currVal_5;
        this[_expr_5$0] = currVal_5;
      }
      let currVal_6 = _ctx.todos;
      if (dart.test(app_view_utils.checkBinding(this[_expr_6], currVal_6))) {
        this[_NgFor_23_9].ngForOf = currVal_6;
        this[_expr_6] = currVal_6;
      }
      if (!dart.test(app_view_utils.AppViewUtils.throwOnChanges)) {
        this[_NgFor_23_9].ngDoCheck();
      }
      this[_appEl_23].detectChangesInNestedViews();
      this[_compView_4$0].detectChanges();
      this[_compView_6$0].detectChanges();
      this[_compView_8$0].detectChanges();
    }
    destroyInternal() {
      this[_appEl_23].destroyNestedViews();
      this[_compView_4$0].destroyInternalState();
      this[_compView_6$0].destroyInternalState();
      this[_compView_8$0].destroyInternalState();
    }
    [_handle_click_15_0]($36event) {
      let local_text = this[_el_14$0];
      let _ctx = this.ctx;
      _ctx.create(local_text.value);
    }
    initComponentStyles() {
      let styles = todo_list_component$46template.ViewTodoListComponent0._componentStyles;
      if (styles == null) {
        todo_list_component$46template.ViewTodoListComponent0._componentStyles = styles = todo_list_component$46template.ViewTodoListComponent0._componentStyles = new style_encapsulation._UnscopedComponentStyles.new(todo_list_component$46template.styles$TodoListComponent, todo_list_component$46template.ViewTodoListComponent0._debugComponentUrl);
      }
      this.componentStyles = styles;
    }
  };
  (todo_list_component$46template.ViewTodoListComponent0.new = function(parentView, parentIndex) {
    this[_compView_4$0] = null;
    this[_ErrorComponent_4_5$0] = null;
    this[_compView_6$0] = null;
    this[_ValidationComponent_6_5$0] = null;
    this[_compView_8$0] = null;
    this[_InfoComponent_8_5$0] = null;
    this[_appEl_23] = null;
    this[_NgFor_23_9] = null;
    this[_expr_0$2] = null;
    this[_expr_1$0] = null;
    this[_expr_2$0] = null;
    this[_expr_3$0] = null;
    this[_expr_4$0] = null;
    this[_expr_5$0] = null;
    this[_expr_6] = null;
    this[_el_14$0] = null;
    todo_list_component$46template.ViewTodoListComponent0.__proto__.new.call(this, view_type.ViewType.component, parentView, parentIndex, 3);
    this.initComponentStyles();
    this.rootEl = html.HtmlElement._check(html.document[$createElement]("todo-list"));
  }).prototype = todo_list_component$46template.ViewTodoListComponent0.prototype;
  dart.addTypeTests(todo_list_component$46template.ViewTodoListComponent0);
  dart.setMethodSignature(todo_list_component$46template.ViewTodoListComponent0, () => ({
    __proto__: dart.getMethods(todo_list_component$46template.ViewTodoListComponent0.__proto__),
    [_handle_click_15_0]: dart.fnType(dart.void, [dart.dynamic])
  }));
  dart.setLibraryUri(todo_list_component$46template.ViewTodoListComponent0, "package:todo_fe/src/todo_list_component.template.dart");
  dart.setFieldSignature(todo_list_component$46template.ViewTodoListComponent0, () => ({
    __proto__: dart.getFields(todo_list_component$46template.ViewTodoListComponent0.__proto__),
    [_compView_4$0]: dart.fieldType(error_component$46template.ViewErrorComponent0),
    [_ErrorComponent_4_5$0]: dart.fieldType(error_component.ErrorComponent),
    [_compView_6$0]: dart.fieldType(validation_component$46template.ViewValidationComponent0),
    [_ValidationComponent_6_5$0]: dart.fieldType(validation_component.ValidationComponent),
    [_compView_8$0]: dart.fieldType(info_component$46template.ViewInfoComponent0),
    [_InfoComponent_8_5$0]: dart.fieldType(info_component.InfoComponent),
    [_appEl_23]: dart.fieldType(view_container.ViewContainer),
    [_NgFor_23_9]: dart.fieldType(ng_for.NgFor),
    [_expr_0$2]: dart.fieldType(core.String),
    [_expr_1$0]: dart.fieldType(dart.dynamic),
    [_expr_2$0]: dart.fieldType(dart.dynamic),
    [_expr_3$0]: dart.fieldType(dart.dynamic),
    [_expr_4$0]: dart.fieldType(core.String),
    [_expr_5$0]: dart.fieldType(dart.dynamic),
    [_expr_6]: dart.fieldType(dart.dynamic),
    [_el_14$0]: dart.fieldType(html.InputElement)
  }));
  dart.defineLazy(todo_list_component$46template.ViewTodoListComponent0, {
    /*todo_list_component$46template.ViewTodoListComponent0._componentStyles*/get _componentStyles() {
      return null;
    },
    set _componentStyles(_) {}
  });
  const _appEl_9 = dart.privateName(todo_list_component$46template, "_appEl_9");
  const _NgIf_9_9 = dart.privateName(todo_list_component$46template, "_NgIf_9_9");
  const _appEl_10 = dart.privateName(todo_list_component$46template, "_appEl_10");
  const _NgIf_10_9 = dart.privateName(todo_list_component$46template, "_NgIf_10_9");
  let C20;
  let C21;
  const _handle_click_3_0 = dart.privateName(todo_list_component$46template, "_handle_click_3_0");
  const _handle_click_6_0 = dart.privateName(todo_list_component$46template, "_handle_click_6_0");
  todo_list_component$46template._ViewTodoListComponent1 = class _ViewTodoListComponent1 extends app_view.AppView$(todo_list_component.TodoListComponent) {
    build() {
      let doc = html.document;
      let _el_0 = doc[$createElement]("div");
      let _el_1 = dom_helpers.appendDiv(doc, _el_0);
      this.updateChildClass(_el_1, "card border-primary mb-3");
      let _el_2 = dom_helpers.appendDiv(doc, _el_1);
      this.updateChildClass(_el_2, "card-header text-right");
      let _el_3 = dom_helpers.appendElement(doc, _el_2, "button");
      this.updateChildClass(html.HtmlElement._check(_el_3), "btn btn-primary");
      let _el_4 = dom_helpers.appendElement(doc, _el_3, "i");
      this.updateChildClass(html.HtmlElement._check(_el_4), "fas fa-edit");
      let _text_5 = dom_helpers.appendText(_el_2, " ");
      let _el_6 = dom_helpers.appendElement(doc, _el_2, "button");
      this.updateChildClass(html.HtmlElement._check(_el_6), "btn btn-primary");
      let _el_7 = dom_helpers.appendElement(doc, _el_6, "i");
      this.updateChildClass(html.HtmlElement._check(_el_7), "far fa-trash-alt");
      let _el_8 = dom_helpers.appendDiv(doc, _el_1);
      this.updateChildClass(_el_8, "card-body text-primary");
      let _anchor_9 = dom_helpers.appendAnchor(_el_8);
      this[_appEl_9] = new view_container.ViewContainer.new(9, 8, this, _anchor_9);
      let _TemplateRef_9_8 = new template_ref.TemplateRef.new(this[_appEl_9], C20 || CT.C20);
      this[_NgIf_9_9] = new ng_if.NgIf.new(this[_appEl_9], _TemplateRef_9_8);
      let _anchor_10 = dom_helpers.appendAnchor(_el_8);
      this[_appEl_10] = new view_container.ViewContainer.new(10, 8, this, _anchor_10);
      let _TemplateRef_10_8 = new template_ref.TemplateRef.new(this[_appEl_10], C21 || CT.C21);
      this[_NgIf_10_9] = new ng_if.NgIf.new(this[_appEl_10], _TemplateRef_10_8);
      _el_3[$addEventListener]("click", this.eventHandler1(html.Event, html.Event, dart.bind(this, _handle_click_3_0)));
      _el_6[$addEventListener]("click", this.eventHandler1(html.Event, html.Event, dart.bind(this, _handle_click_6_0)));
      this.init1(_el_0);
    }
    detectChangesInternal() {
      let _ctx = this.ctx;
      let local_todo = optimizations.unsafeCast(todo$.Todo, this.locals[$_get]("$implicit"));
      this[_NgIf_9_9].ngIf = _ctx.selected == null || _ctx.selected != null && _ctx.selected.id != local_todo.id;
      this[_NgIf_10_9].ngIf = _ctx.selected != null && _ctx.selected.id == local_todo.id;
      this[_appEl_9].detectChangesInNestedViews();
      this[_appEl_10].detectChangesInNestedViews();
    }
    destroyInternal() {
      this[_appEl_9].destroyNestedViews();
      this[_appEl_10].destroyNestedViews();
    }
    [_handle_click_3_0]($36event) {
      let local_todo = optimizations.unsafeCast(todo$.Todo, this.locals[$_get]("$implicit"));
      let _ctx = this.ctx;
      _ctx.select(local_todo);
    }
    [_handle_click_6_0]($36event) {
      let local_todo = optimizations.unsafeCast(todo$.Todo, this.locals[$_get]("$implicit"));
      let _ctx = this.ctx;
      _ctx.delete(local_todo.id);
    }
  };
  (todo_list_component$46template._ViewTodoListComponent1.new = function(parentView, parentIndex) {
    this[_appEl_9] = null;
    this[_NgIf_9_9] = null;
    this[_appEl_10] = null;
    this[_NgIf_10_9] = null;
    todo_list_component$46template._ViewTodoListComponent1.__proto__.new.call(this, view_type.ViewType.embedded, parentView, parentIndex, 3);
    this.initComponentStyles();
  }).prototype = todo_list_component$46template._ViewTodoListComponent1.prototype;
  dart.addTypeTests(todo_list_component$46template._ViewTodoListComponent1);
  dart.setMethodSignature(todo_list_component$46template._ViewTodoListComponent1, () => ({
    __proto__: dart.getMethods(todo_list_component$46template._ViewTodoListComponent1.__proto__),
    [_handle_click_3_0]: dart.fnType(dart.void, [dart.dynamic]),
    [_handle_click_6_0]: dart.fnType(dart.void, [dart.dynamic])
  }));
  dart.setLibraryUri(todo_list_component$46template._ViewTodoListComponent1, "package:todo_fe/src/todo_list_component.template.dart");
  dart.setFieldSignature(todo_list_component$46template._ViewTodoListComponent1, () => ({
    __proto__: dart.getFields(todo_list_component$46template._ViewTodoListComponent1.__proto__),
    [_appEl_9]: dart.fieldType(view_container.ViewContainer),
    [_NgIf_9_9]: dart.fieldType(ng_if.NgIf),
    [_appEl_10]: dart.fieldType(view_container.ViewContainer),
    [_NgIf_10_9]: dart.fieldType(ng_if.NgIf)
  }));
  const _textBinding_1$ = dart.privateName(todo_list_component$46template, "_textBinding_1");
  todo_list_component$46template._ViewTodoListComponent2 = class _ViewTodoListComponent2 extends app_view.AppView$(todo_list_component.TodoListComponent) {
    build() {
      let doc = html.document;
      let _el_0 = doc[$createElement]("p");
      this.updateChildClass(html.HtmlElement._check(_el_0), "card-text");
      _el_0[$append](this[_textBinding_1$].element);
      this.init1(_el_0);
    }
    detectChangesInternal() {
      let local_todo = optimizations.unsafeCast(todo$.Todo, this.parentView.locals[$_get]("$implicit"));
      this[_textBinding_1$].updateText(interpolate.interpolateString0(local_todo.text));
    }
  };
  (todo_list_component$46template._ViewTodoListComponent2.new = function(parentView, parentIndex) {
    this[_textBinding_1$] = new text_binding.TextBinding.new();
    todo_list_component$46template._ViewTodoListComponent2.__proto__.new.call(this, view_type.ViewType.embedded, parentView, parentIndex, 3);
    this.initComponentStyles();
  }).prototype = todo_list_component$46template._ViewTodoListComponent2.prototype;
  dart.addTypeTests(todo_list_component$46template._ViewTodoListComponent2);
  dart.setLibraryUri(todo_list_component$46template._ViewTodoListComponent2, "package:todo_fe/src/todo_list_component.template.dart");
  dart.setFieldSignature(todo_list_component$46template._ViewTodoListComponent2, () => ({
    __proto__: dart.getFields(todo_list_component$46template._ViewTodoListComponent2.__proto__),
    [_textBinding_1$]: dart.finalFieldType(text_binding.TextBinding)
  }));
  const _DefaultValueAccessor_2_5 = dart.privateName(todo_list_component$46template, "_DefaultValueAccessor_2_5");
  const _NgValueAccessor_2_6 = dart.privateName(todo_list_component$46template, "_NgValueAccessor_2_6");
  const _NgModel_2_7 = dart.privateName(todo_list_component$46template, "_NgModel_2_7");
  const _handle_input_2_2 = dart.privateName(todo_list_component$46template, "_handle_input_2_2");
  const _handle_ngModelChange_2_0 = dart.privateName(todo_list_component$46template, "_handle_ngModelChange_2_0");
  const OpaqueToken__uniqueName = dart.privateName(opaque_token, "OpaqueToken._uniqueName");
  let C22;
  todo_list_component$46template._ViewTodoListComponent3 = class _ViewTodoListComponent3 extends app_view.AppView$(todo_list_component.TodoListComponent) {
    build() {
      let _ctx = this.ctx;
      let doc = html.document;
      let _el_0 = doc[$createElement]("div");
      let _el_1 = dom_helpers.appendDiv(doc, _el_0);
      this.updateChildClass(_el_1, "form-group");
      let _el_2 = dom_helpers.appendElement(doc, _el_1, "input");
      this.updateChildClass(html.HtmlElement._check(_el_2), "form-control");
      dom_helpers.setAttribute(_el_2, "id", "textInput");
      dom_helpers.setAttribute(_el_2, "placeholder", "Enter text");
      dom_helpers.setAttribute(_el_2, "type", "text");
      this[_DefaultValueAccessor_2_5] = new default_value_accessor.DefaultValueAccessor.new(html.HtmlElement._check(_el_2));
      this[_NgValueAccessor_2_6] = JSArrayOfControlValueAccessor().of([this[_DefaultValueAccessor_2_5]]);
      this[_NgModel_2_7] = new ng_model.NgModel.new(null, this[_NgValueAccessor_2_6]);
      let _el_3 = dom_helpers.appendElement(doc, _el_0, "button");
      this.updateChildClass(html.HtmlElement._check(_el_3), "btn btn-primary");
      let _text_4 = dom_helpers.appendText(_el_3, "Update");
      _el_2[$addEventListener]("blur", this.eventHandler0(html.Event, dart.bind(this[_DefaultValueAccessor_2_5], 'touchHandler')));
      _el_2[$addEventListener]("input", this.eventHandler1(html.Event, html.Event, dart.bind(this, _handle_input_2_2)));
      let subscription_0 = this[_NgModel_2_7].update.listen(this.eventHandler1(dart.dynamic, dart.dynamic, dart.bind(this, _handle_ngModelChange_2_0)));
      _el_3[$addEventListener]("click", this.eventHandler0(html.Event, dart.bind(_ctx, 'update')));
      this.init(JSArrayOfObject().of([_el_0]), JSArrayOfStreamSubscriptionOfvoid().of([subscription_0]));
    }
    injectorGetInternal(token, nodeIndex, notFoundResult) {
      if (2 === nodeIndex) {
        if (token === (C22 || CT.C22)) {
          return this[_NgValueAccessor_2_6];
        }
        if (token === dart.wrapType(ng_model.NgModel) || token === dart.wrapType(ng_control.NgControl)) {
          return this[_NgModel_2_7];
        }
      }
      return notFoundResult;
    }
    detectChangesInternal() {
      let _ctx = this.ctx;
      let changed = false;
      let firstCheck = this.cdState === 0;
      changed = false;
      this[_NgModel_2_7].model = _ctx.selected.text;
      this[_NgModel_2_7].ngAfterChanges();
      if (!dart.test(app_view_utils.AppViewUtils.throwOnChanges) && firstCheck) {
        this[_NgModel_2_7].ngOnInit();
      }
    }
    [_handle_ngModelChange_2_0]($36event) {
      let _ctx = this.ctx;
      _ctx.selected.text = core.String._check($36event);
    }
    [_handle_input_2_2]($36event) {
      this[_DefaultValueAccessor_2_5].handleChange(core.String._check(dart.dload(dart.dload($36event, 'target'), 'value')));
    }
  };
  (todo_list_component$46template._ViewTodoListComponent3.new = function(parentView, parentIndex) {
    this[_DefaultValueAccessor_2_5] = null;
    this[_NgValueAccessor_2_6] = null;
    this[_NgModel_2_7] = null;
    todo_list_component$46template._ViewTodoListComponent3.__proto__.new.call(this, view_type.ViewType.embedded, parentView, parentIndex, 3);
    this.initComponentStyles();
  }).prototype = todo_list_component$46template._ViewTodoListComponent3.prototype;
  dart.addTypeTests(todo_list_component$46template._ViewTodoListComponent3);
  dart.setMethodSignature(todo_list_component$46template._ViewTodoListComponent3, () => ({
    __proto__: dart.getMethods(todo_list_component$46template._ViewTodoListComponent3.__proto__),
    injectorGetInternal: dart.fnType(dart.dynamic, [dart.dynamic, core.int, dart.dynamic]),
    [_handle_ngModelChange_2_0]: dart.fnType(dart.void, [dart.dynamic]),
    [_handle_input_2_2]: dart.fnType(dart.void, [dart.dynamic])
  }));
  dart.setLibraryUri(todo_list_component$46template._ViewTodoListComponent3, "package:todo_fe/src/todo_list_component.template.dart");
  dart.setFieldSignature(todo_list_component$46template._ViewTodoListComponent3, () => ({
    __proto__: dart.getFields(todo_list_component$46template._ViewTodoListComponent3.__proto__),
    [_DefaultValueAccessor_2_5]: dart.fieldType(default_value_accessor.DefaultValueAccessor),
    [_NgValueAccessor_2_6]: dart.fieldType(core.List$(control_value_accessor.ControlValueAccessor)),
    [_NgModel_2_7]: dart.fieldType(ng_model.NgModel)
  }));
  const _compView_0$5 = dart.privateName(todo_list_component$46template, "_compView_0");
  const _Store_0_5$ = dart.privateName(todo_list_component$46template, "_Store_0_5");
  const _TodoService_0_6 = dart.privateName(todo_list_component$46template, "_TodoService_0_6");
  const _TodoListComponent_0_7 = dart.privateName(todo_list_component$46template, "_TodoListComponent_0_7");
  todo_list_component$46template._ViewTodoListComponentHost0 = class _ViewTodoListComponentHost0 extends app_view.AppView$(todo_list_component.TodoListComponent) {
    build() {
      this[_compView_0$5] = new todo_list_component$46template.ViewTodoListComponent0.new(this, 0);
      this.rootEl = this[_compView_0$5].rootEl;
      this[_Store_0_5$] = new store.Store.new();
      this[_TodoService_0_6] = dart.test(optimizations.isDevMode) ? errors.debugInjectorWrap(todo_service.TodoService, dart.wrapType(todo_service.TodoService), dart.fn(() => new todo_service.TodoService.new(client.Client._check(this.injectorGet(dart.wrapType(client.Client), this.viewData.parentIndex)), this[_Store_0_5$]), VoidToTodoService())) : new todo_service.TodoService.new(client.Client._check(this.injectorGet(dart.wrapType(client.Client), this.viewData.parentIndex)), this[_Store_0_5$]);
      this[_TodoListComponent_0_7] = dart.test(optimizations.isDevMode) ? errors.debugInjectorWrap(todo_list_component.TodoListComponent, dart.wrapType(todo_list_component.TodoListComponent), dart.fn(() => new todo_list_component.TodoListComponent.new(todo_service.TodoService._check(this[_TodoService_0_6]), router.Router._check(this.injectorGet(dart.wrapType(router.Router), this.viewData.parentIndex))), VoidToTodoListComponent())) : new todo_list_component.TodoListComponent.new(todo_service.TodoService._check(this[_TodoService_0_6]), router.Router._check(this.injectorGet(dart.wrapType(router.Router), this.viewData.parentIndex)));
      this[_compView_0$5].create(this[_TodoListComponent_0_7], this.projectedNodes);
      this.init1(this.rootEl);
      return new (ComponentRefOfTodoListComponent()).new(0, this, this.rootEl, this[_TodoListComponent_0_7]);
    }
    injectorGetInternal(token, nodeIndex, notFoundResult) {
      if (0 === nodeIndex) {
        if (token === dart.wrapType(store.Store)) {
          return this[_Store_0_5$];
        }
        if (token === dart.wrapType(todo_service.TodoService)) {
          return this[_TodoService_0_6];
        }
      }
      return notFoundResult;
    }
    detectChangesInternal() {
      let firstCheck = this.cdState === 0;
      if (!dart.test(app_view_utils.AppViewUtils.throwOnChanges) && firstCheck) {
        this[_TodoListComponent_0_7].ngOnInit();
      }
      this[_compView_0$5].detectChanges();
    }
    destroyInternal() {
      this[_compView_0$5].destroyInternalState();
    }
  };
  (todo_list_component$46template._ViewTodoListComponentHost0.new = function(parentView, parentIndex) {
    this[_compView_0$5] = null;
    this[_Store_0_5$] = null;
    this[_TodoService_0_6] = null;
    this[_TodoListComponent_0_7] = null;
    todo_list_component$46template._ViewTodoListComponentHost0.__proto__.new.call(this, view_type.ViewType.host, parentView, parentIndex, 3);
    ;
  }).prototype = todo_list_component$46template._ViewTodoListComponentHost0.prototype;
  dart.addTypeTests(todo_list_component$46template._ViewTodoListComponentHost0);
  dart.setMethodSignature(todo_list_component$46template._ViewTodoListComponentHost0, () => ({
    __proto__: dart.getMethods(todo_list_component$46template._ViewTodoListComponentHost0.__proto__),
    injectorGetInternal: dart.fnType(dart.dynamic, [dart.dynamic, core.int, dart.dynamic])
  }));
  dart.setLibraryUri(todo_list_component$46template._ViewTodoListComponentHost0, "package:todo_fe/src/todo_list_component.template.dart");
  dart.setFieldSignature(todo_list_component$46template._ViewTodoListComponentHost0, () => ({
    __proto__: dart.getFields(todo_list_component$46template._ViewTodoListComponentHost0.__proto__),
    [_compView_0$5]: dart.fieldType(todo_list_component$46template.ViewTodoListComponent0),
    [_Store_0_5$]: dart.fieldType(store.Store),
    [_TodoService_0_6]: dart.fieldType(dart.dynamic),
    [_TodoListComponent_0_7]: dart.fieldType(todo_list_component.TodoListComponent)
  }));
  todo_list_component$46template.viewFactory_TodoListComponent1 = function viewFactory_TodoListComponent1(parentView, parentIndex) {
    return new todo_list_component$46template._ViewTodoListComponent1.new(parentView, parentIndex);
  };
  todo_list_component$46template.viewFactory_TodoListComponent2 = function viewFactory_TodoListComponent2(parentView, parentIndex) {
    return new todo_list_component$46template._ViewTodoListComponent2.new(parentView, parentIndex);
  };
  todo_list_component$46template.viewFactory_TodoListComponent3 = function viewFactory_TodoListComponent3(parentView, parentIndex) {
    return new todo_list_component$46template._ViewTodoListComponent3.new(parentView, parentIndex);
  };
  todo_list_component$46template.viewFactory_TodoListComponentHost0 = function viewFactory_TodoListComponentHost0(parentView, parentIndex) {
    return new todo_list_component$46template._ViewTodoListComponentHost0.new(parentView, parentIndex);
  };
  todo_list_component$46template.initReflector = function initReflector$12() {
    if (dart.test(todo_list_component$46template._visited)) {
      return;
    }
    todo_list_component$46template._visited = true;
    reflector.registerComponent(dart.wrapType(todo_list_component.TodoListComponent), todo_list_component$46template.TodoListComponentNgFactory);
    error_component$46template.initReflector();
    form_component$46template.initReflector();
    info_component$46template.initReflector();
    angular$46template.initReflector();
    angular_forms$46template.initReflector();
    angular_router$46template.initReflector();
    route_paths$46template.initReflector();
    routes$46template.initReflector();
    store$46template.initReflector();
    todo$46template.initReflector();
    todo_service$46template.initReflector();
    validation_component$46template.initReflector();
  };
  dart.copyProperties(todo_list_component$46template, {
    get TodoListComponentNgFactory() {
      return todo_list_component$46template._TodoListComponentNgFactory;
    }
  });
  let C24;
  let C23;
  dart.defineLazy(todo_list_component$46template, {
    /*todo_list_component$46template.styles$TodoListComponent*/get styles$TodoListComponent() {
      return C0 || CT.C0;
    },
    /*todo_list_component$46template._TodoListComponentNgFactory*/get _TodoListComponentNgFactory() {
      return C23 || CT.C23;
    },
    /*todo_list_component$46template.styles$TodoListComponentHost*/get styles$TodoListComponentHost() {
      return C0 || CT.C0;
    },
    /*todo_list_component$46template._visited*/get _visited() {
      return false;
    },
    set _visited(_) {}
  });
  const _http$0 = dart.privateName(todo_service, "_http");
  const _store$2 = dart.privateName(todo_service, "_store");
  const _todosApi = dart.privateName(todo_service, "_todosApi");
  todo_service.TodoService = class TodoService extends core.Object {
    [_todosApi]() {
      return "http://localhost:9090" + "/api/v1/todos";
    }
    getAll() {
      return async.async(response.Response, (function* getAll() {
        return this.authenticated().then(response.Response, dart.fn(headers => this[_http$0].get(this[_todosApi](), {headers: headers}), MapOfString$StringToFutureOfResponse()));
      }).bind(this));
    }
    create(text) {
      return async.async(response.Response, (function* create() {
        return this.authenticated().then(response.Response, dart.fn(headers => this[_http$0].post(this[_todosApi](), {headers: headers, body: convert.json.encode(new (IdentityMapOfString$String()).from(["text", text]))}), MapOfString$StringToFutureOfResponse()));
      }).bind(this));
    }
    update(todo) {
      return async.async(response.Response, (function* update() {
        let url = dart.str(this[_todosApi]()) + "/" + dart.str(todo.id);
        return this.authenticated().then(response.Response, dart.fn(headers => this[_http$0].put(url, {headers: headers, body: convert.json.encode(todo)}), MapOfString$StringToFutureOfResponse()));
      }).bind(this));
    }
    delete(id) {
      return async.async(response.Response, (function* $delete() {
        let url = dart.str(this[_todosApi]()) + "/" + dart.str(id);
        return this.authenticated().then(response.Response, dart.fn(headers => this[_http$0].delete(url, {headers: headers}), MapOfString$StringToFutureOfResponse()));
      }).bind(this));
    }
    authenticated() {
      let f = dart.fn(() => {
        let authToken = this[_store$2].getAuthToken();
        if (authToken == null || authToken === "") {
          dart.throw(new user.UnauthorizedException.new("Auth token doesn't exist"));
        }
        return new (IdentityMapOfString$String()).from(["Content-Type", "application/json", "Authorization", authToken]);
      }, VoidToMapOfString$String());
      return FutureOfMapOfString$String().sync(f);
    }
  };
  (todo_service.TodoService.new = function(_http, _store) {
    this[_http$0] = _http;
    this[_store$2] = _store;
    ;
  }).prototype = todo_service.TodoService.prototype;
  dart.addTypeTests(todo_service.TodoService);
  dart.setMethodSignature(todo_service.TodoService, () => ({
    __proto__: dart.getMethods(todo_service.TodoService.__proto__),
    [_todosApi]: dart.fnType(core.String, []),
    getAll: dart.fnType(async.Future$(response.Response), []),
    create: dart.fnType(async.Future$(response.Response), [core.String]),
    update: dart.fnType(async.Future$(response.Response), [todo$.Todo]),
    delete: dart.fnType(async.Future$(response.Response), [core.int]),
    authenticated: dart.fnType(async.Future$(core.Map$(core.String, core.String)), [])
  }));
  dart.setLibraryUri(todo_service.TodoService, "package:todo_fe/src/todo_service.dart");
  dart.setFieldSignature(todo_service.TodoService, () => ({
    __proto__: dart.getFields(todo_service.TodoService.__proto__),
    [_http$0]: dart.finalFieldType(client.Client),
    [_store$2]: dart.finalFieldType(store.Store)
  }));
  dart.defineLazy(todo_service.TodoService, {
    /*todo_service.TodoService._todosUrl*/get _todosUrl() {
      return "/api/v1/todos";
    }
  });
  const Todo_id = dart.privateName(todo$, "Todo.id");
  const Todo_text = dart.privateName(todo$, "Todo.text");
  todo$.Todo = class Todo extends core.Object {
    get id() {
      return this[id$0];
    }
    set id(value) {
      super.id = value;
    }
    get text() {
      return this[text$];
    }
    set text(value) {
      this[text$] = value;
    }
    static fromText(text) {
      return new todo$.Todo.new(null, text);
    }
    static fromJson(json) {
      return new todo$.Todo.new(todo$._toInt(json[$_get]("id")), core.String._check(json[$_get]("text")));
    }
    toJson() {
      return new _js_helper.LinkedMap.from(["id", this.id, "text", this.text]);
    }
  };
  (todo$.Todo.new = function(id, text) {
    this[id$0] = id;
    this[text$] = text;
    ;
  }).prototype = todo$.Todo.prototype;
  dart.addTypeTests(todo$.Todo);
  const id$0 = Todo_id;
  const text$ = Todo_text;
  dart.setMethodSignature(todo$.Todo, () => ({
    __proto__: dart.getMethods(todo$.Todo.__proto__),
    toJson: dart.fnType(core.Map, [])
  }));
  dart.setLibraryUri(todo$.Todo, "package:todo_fe/src/todo.dart");
  dart.setFieldSignature(todo$.Todo, () => ({
    __proto__: dart.getFields(todo$.Todo.__proto__),
    id: dart.finalFieldType(core.int),
    text: dart.fieldType(core.String)
  }));
  todo$._toInt = function _toInt$(id) {
    return core.int.is(id) ? id : core.int.parse(core.String._check(id));
  };
  todo_service$46template.initReflector = function initReflector$13() {
    if (dart.test(todo_service$46template._visited)) {
      return;
    }
    todo_service$46template._visited = true;
    store$46template.initReflector();
    todo$46template.initReflector();
    user$46template.initReflector();
  };
  dart.defineLazy(todo_service$46template, {
    /*todo_service$46template._visited*/get _visited() {
      return false;
    },
    set _visited(_) {}
  });
  todo$46template.initReflector = function initReflector$14() {
  };
  routes$46template.initReflector = function initReflector$15() {
    if (dart.test(routes$46template._visited)) {
      return;
    }
    routes$46template._visited = true;
    dashboard_component$46template.initReflector();
    login_component$46template.initReflector();
    logout_component$46template.initReflector();
    angular_router$46template.initReflector();
    register_component$46template.initReflector();
    route_paths$46template.initReflector();
    todo_list_component$46template.initReflector();
  };
  dart.defineLazy(routes$46template, {
    /*routes$46template._visited*/get _visited() {
      return false;
    },
    set _visited(_) {}
  });
  const _eventBus$1 = dart.privateName(menu_component, "_eventBus");
  const MenuComponent_signedIn = dart.privateName(menu_component, "MenuComponent.signedIn");
  menu_component.MenuComponent = class MenuComponent extends core.Object {
    get signedIn() {
      return this[signedIn];
    }
    set signedIn(value) {
      this[signedIn] = value;
    }
    ngOnInit() {
      this[_eventBus$1].onLoginStream.listen(dart.fn(sIn => {
        this.signedIn = sIn;
      }, boolToNull()));
    }
  };
  (menu_component.MenuComponent.new = function(_eventBus) {
    this[signedIn] = false;
    this[_eventBus$1] = _eventBus;
    ;
  }).prototype = menu_component.MenuComponent.prototype;
  dart.addTypeTests(menu_component.MenuComponent);
  const signedIn = MenuComponent_signedIn;
  menu_component.MenuComponent[dart.implements] = () => [lifecycle_hooks.OnInit];
  dart.setMethodSignature(menu_component.MenuComponent, () => ({
    __proto__: dart.getMethods(menu_component.MenuComponent.__proto__),
    ngOnInit: dart.fnType(dart.void, [])
  }));
  dart.setLibraryUri(menu_component.MenuComponent, "package:todo_fe/src/menu_component.dart");
  dart.setFieldSignature(menu_component.MenuComponent, () => ({
    __proto__: dart.getFields(menu_component.MenuComponent.__proto__),
    [_eventBus$1]: dart.fieldType(event_bus.EventBus),
    signedIn: dart.fieldType(core.bool)
  }));
  dart.trackLibraries("packages/todo_fe/src/auth_service", {
    "package:todo_fe/src/info_component.dart": info_component,
    "package:todo_fe/src/error.dart": error,
    "package:todo_fe/src/dashboard_component.template.dart": dashboard_component$46template,
    "package:todo_fe/src/store.dart": store,
    "package:todo_fe/src/route_paths.dart": route_paths,
    "package:todo_fe/src/dashboard_component.dart": dashboard_component,
    "package:todo_fe/src/routes.dart": routes,
    "package:todo_fe/src/logout_component.template.dart": logout_component$46template,
    "package:todo_fe/src/event_bus.dart": event_bus,
    "package:todo_fe/src/logout_component.dart": logout_component,
    "package:todo_fe/src/store.template.dart": store$46template,
    "package:todo_fe/src/event_bus.template.dart": event_bus$46template,
    "package:todo_fe/src/login_component.template.dart": login_component$46template,
    "package:todo_fe/src/auth_service.dart": auth_service,
    "package:todo_fe/src/user.dart": user,
    "package:todo_fe/src/info_component.template.dart": info_component$46template,
    "package:todo_fe/src/validation_component.dart": validation_component,
    "package:todo_fe/src/validation_component.template.dart": validation_component$46template,
    "package:todo_fe/src/error.template.dart": error$46template,
    "package:todo_fe/src/error_component.dart": error_component,
    "package:todo_fe/src/error_component.template.dart": error_component$46template,
    "package:todo_fe/src/login_component.dart": login_component,
    "package:todo_fe/src/form_component.dart": form_component,
    "package:todo_fe/src/user.template.dart": user$46template,
    "package:todo_fe/src/route_paths.template.dart": route_paths$46template,
    "package:todo_fe/src/form_component.template.dart": form_component$46template,
    "package:todo_fe/src/auth_service.template.dart": auth_service$46template,
    "package:todo_fe/src/register_component.template.dart": register_component$46template,
    "package:todo_fe/src/register_component.dart": register_component,
    "package:todo_fe/src/todo_list_component.template.dart": todo_list_component$46template,
    "package:todo_fe/src/todo_service.dart": todo_service,
    "package:todo_fe/src/todo.dart": todo$,
    "package:todo_fe/src/todo_list_component.dart": todo_list_component,
    "package:todo_fe/src/todo_service.template.dart": todo_service$46template,
    "package:todo_fe/src/todo.template.dart": todo$46template,
    "package:todo_fe/src/routes.template.dart": routes$46template,
    "package:todo_fe/src/menu_component.dart": menu_component
  }, {
  }, '{"version":3,"sourceRoot":"","sources":["info_component.dart","error.dart","dashboard_component.dart","dashboard_component.template.dart","store.dart","route_paths.dart","routes.dart","logout_component.dart","logout_component.template.dart","event_bus.dart","store.template.dart","event_bus.template.dart","form_component.dart","login_component.dart","login_component.template.dart","auth_service.dart","user.dart","info_component.template.dart","validation_component.dart","validation_component.template.dart","error.template.dart","error_component.dart","error_component.template.dart","user.template.dart","route_paths.template.dart","form_component.template.dart","auth_service.template.dart","register_component.dart","register_component.template.dart","todo_list_component.dart","todo_list_component.template.dart","todo_service.dart","todo.dart","todo_service.template.dart","todo.template.dart","routes.template.dart","menu_component.dart"],"names":[],"mappings":"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","file":"auth_service.ddc.js"}');
  // Exports:
  return {
    src__info_component: info_component,
    src__error: error,
    src__dashboard_component$46template: dashboard_component$46template,
    src__store: store,
    src__route_paths: route_paths,
    src__dashboard_component: dashboard_component,
    src__routes: routes,
    src__logout_component$46template: logout_component$46template,
    src__event_bus: event_bus,
    src__logout_component: logout_component,
    src__store$46template: store$46template,
    src__event_bus$46template: event_bus$46template,
    src__login_component$46template: login_component$46template,
    src__auth_service: auth_service,
    src__user: user,
    src__info_component$46template: info_component$46template,
    src__validation_component: validation_component,
    src__validation_component$46template: validation_component$46template,
    src__error$46template: error$46template,
    src__error_component: error_component,
    src__error_component$46template: error_component$46template,
    src__login_component: login_component,
    src__form_component: form_component,
    src__user$46template: user$46template,
    src__route_paths$46template: route_paths$46template,
    src__form_component$46template: form_component$46template,
    src__auth_service$46template: auth_service$46template,
    src__register_component$46template: register_component$46template,
    src__register_component: register_component,
    src__todo_list_component$46template: todo_list_component$46template,
    src__todo_service: todo_service,
    src__todo: todo$,
    src__todo_list_component: todo_list_component,
    src__todo_service$46template: todo_service$46template,
    src__todo$46template: todo$46template,
    src__routes$46template: routes$46template,
    src__menu_component: menu_component
  };
});

//# sourceMappingURL=auth_service.ddc.js.map
