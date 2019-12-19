define(['dart_sdk', 'packages/angular/src/bootstrap/modules', 'packages/todo_fe/src/auth_service', 'packages/angular/src/core/change_detection/change_detection', 'packages/angular_router/src/directives/router_outlet_directive', 'packages/todo_fe/app_component', 'packages/http/src/base_client', 'packages/angular/angular.template', 'packages/angular_router/angular_router.template', 'packages/angular_router/src/constants'], function(dart_sdk, packages__angular__src__bootstrap__modules, packages__todo_fe__src__auth_service, packages__angular__src__core__change_detection__change_detection, packages__angular_router__src__directives__router_outlet_directive, packages__todo_fe__app_component, packages__http__src__base_client, packages__angular__angular$46template, packages__angular_router__angular_router$46template, packages__angular_router__src__constants) {
  'use strict';
  const core = dart_sdk.core;
  const html = dart_sdk.html;
  const _interceptors = dart_sdk._interceptors;
  const dart = dart_sdk.dart;
  const dartx = dart_sdk.dartx;
  const view_type = packages__angular__src__bootstrap__modules.src__core__linker__view_type;
  const dom_helpers = packages__angular__src__bootstrap__modules.src__runtime__dom_helpers;
  const view_container = packages__angular__src__bootstrap__modules.src__core__linker__view_container;
  const app_view_utils = packages__angular__src__bootstrap__modules.src__core__linker__app_view_utils;
  const style_encapsulation = packages__angular__src__bootstrap__modules.src__core__linker__style_encapsulation;
  const app_view = packages__angular__src__bootstrap__modules.src__core__linker__app_view;
  const component_factory = packages__angular__src__bootstrap__modules.src__core__linker__component_factory;
  const template_ref = packages__angular__src__bootstrap__modules.src__core__linker__template_ref;
  const ng_if = packages__angular__src__bootstrap__modules.src__common__directives__ng_if;
  const store = packages__todo_fe__src__auth_service.src__store;
  const event_bus = packages__todo_fe__src__auth_service.src__event_bus;
  const menu_component = packages__todo_fe__src__auth_service.src__menu_component;
  const routes = packages__todo_fe__src__auth_service.src__routes;
  const auth_service = packages__todo_fe__src__auth_service.src__auth_service;
  const todo_service = packages__todo_fe__src__auth_service.src__todo_service;
  const auth_service$46template = packages__todo_fe__src__auth_service.src__auth_service$46template;
  const route_paths$46template = packages__todo_fe__src__auth_service.src__route_paths$46template;
  const routes$46template = packages__todo_fe__src__auth_service.src__routes$46template;
  const store$46template = packages__todo_fe__src__auth_service.src__store$46template;
  const todo_service$46template = packages__todo_fe__src__auth_service.src__todo_service$46template;
  const route_paths = packages__todo_fe__src__auth_service.src__route_paths;
  const event_bus$46template = packages__todo_fe__src__auth_service.src__event_bus$46template;
  const optimizations = packages__angular__src__core__change_detection__change_detection.src__runtime__optimizations;
  const errors = packages__angular__src__core__change_detection__change_detection.src__di__errors;
  const reflector = packages__angular__src__core__change_detection__change_detection.src__di__reflector;
  const router_outlet_directive = packages__angular_router__src__directives__router_outlet_directive.src__directives__router_outlet_directive;
  const router_outlet_token = packages__angular_router__src__directives__router_outlet_directive.src__router__router_outlet_token;
  const router = packages__angular_router__src__directives__router_outlet_directive.src__router__router;
  const router_hook = packages__angular_router__src__directives__router_outlet_directive.src__router_hook;
  const location = packages__angular_router__src__directives__router_outlet_directive.src__location__location;
  const app_component = packages__todo_fe__app_component.app_component;
  const client = packages__http__src__base_client.src__client;
  const angular$46template = packages__angular__angular$46template.angular$46template;
  const angular_router$46template = packages__angular_router__angular_router$46template.angular_router$46template;
  const router_link_directive$46template = packages__angular_router__angular_router$46template.src__directives__router_link_directive$46template;
  const router_link_directive = packages__angular_router__src__constants.src__directives__router_link_directive;
  const router_link_active_directive = packages__angular_router__src__constants.src__directives__router_link_active_directive;
  const app_component$46template = Object.create(dart.library);
  const menu_component$46template = Object.create(dart.library);
  const $createElement = dartx.createElement;
  const $append = dartx.append;
  const $addEventListener = dartx.addEventListener;
  let VoidToRouterOutlet = () => (VoidToRouterOutlet = dart.constFn(dart.fnType(router_outlet_directive.RouterOutlet, [])))();
  let VoidToAuthService = () => (VoidToAuthService = dart.constFn(dart.fnType(auth_service.AuthService, [])))();
  let VoidToTodoService = () => (VoidToTodoService = dart.constFn(dart.fnType(todo_service.TodoService, [])))();
  let ComponentRefOfAppComponent = () => (ComponentRefOfAppComponent = dart.constFn(component_factory.ComponentRef$(app_component.AppComponent)))();
  let ComponentFactoryOfAppComponent = () => (ComponentFactoryOfAppComponent = dart.constFn(component_factory.ComponentFactory$(app_component.AppComponent)))();
  let AppViewOfAppComponent = () => (AppViewOfAppComponent = dart.constFn(app_view.AppView$(app_component.AppComponent)))();
  let AppViewAndintToAppViewOfAppComponent = () => (AppViewAndintToAppViewOfAppComponent = dart.constFn(dart.fnType(AppViewOfAppComponent(), [app_view.AppView, core.int])))();
  let AppViewOfvoid = () => (AppViewOfvoid = dart.constFn(app_view.AppView$(dart.void)))();
  let AppViewAndintToAppViewOfvoid = () => (AppViewAndintToAppViewOfvoid = dart.constFn(dart.fnType(AppViewOfvoid(), [app_view.AppView, core.int])))();
  let VoidToRouterLink = () => (VoidToRouterLink = dart.constFn(dart.fnType(router_link_directive.RouterLink, [])))();
  let VoidToRouterLinkActive = () => (VoidToRouterLinkActive = dart.constFn(dart.fnType(router_link_active_directive.RouterLinkActive, [])))();
  let JSArrayOfRouterLink = () => (JSArrayOfRouterLink = dart.constFn(_interceptors.JSArray$(router_link_directive.RouterLink)))();
  let ComponentRefOfMenuComponent = () => (ComponentRefOfMenuComponent = dart.constFn(component_factory.ComponentRef$(menu_component.MenuComponent)))();
  let ComponentFactoryOfMenuComponent = () => (ComponentFactoryOfMenuComponent = dart.constFn(component_factory.ComponentFactory$(menu_component.MenuComponent)))();
  let AppViewOfMenuComponent = () => (AppViewOfMenuComponent = dart.constFn(app_view.AppView$(menu_component.MenuComponent)))();
  let AppViewAndintToAppViewOfMenuComponent = () => (AppViewAndintToAppViewOfMenuComponent = dart.constFn(dart.fnType(AppViewOfMenuComponent(), [app_view.AppView, core.int])))();
  const CT = Object.create(null);
  dart.defineLazy(CT, {
    get C0() {
      return C0 = dart.constList([], dart.dynamic);
    },
    get C2() {
      return C2 = dart.fn(app_component$46template.viewFactory_AppComponentHost0, AppViewAndintToAppViewOfAppComponent());
    },
    get C1() {
      return C1 = dart.const({
        __proto__: ComponentFactoryOfAppComponent().prototype,
        [ComponentFactory__viewFactory]: C2 || CT.C2,
        [ComponentFactory_selector]: "my-app"
      });
    },
    get C3() {
      return C3 = dart.fn(menu_component$46template.viewFactory_MenuComponent1, AppViewAndintToAppViewOfvoid());
    },
    get C4() {
      return C4 = dart.fn(menu_component$46template.viewFactory_MenuComponent2, AppViewAndintToAppViewOfvoid());
    },
    get C5() {
      return C5 = dart.fn(menu_component$46template.viewFactory_MenuComponent3, AppViewAndintToAppViewOfvoid());
    },
    get C6() {
      return C6 = dart.fn(menu_component$46template.viewFactory_MenuComponent4, AppViewAndintToAppViewOfvoid());
    },
    get C8() {
      return C8 = dart.fn(menu_component$46template.viewFactory_MenuComponentHost0, AppViewAndintToAppViewOfMenuComponent());
    },
    get C7() {
      return C7 = dart.const({
        __proto__: ComponentFactoryOfMenuComponent().prototype,
        [ComponentFactory__viewFactory]: C8 || CT.C8,
        [ComponentFactory_selector]: "menu"
      });
    }
  });
  const _compView_0 = dart.privateName(app_component$46template, "_compView_0");
  const _EventBus_0_5 = dart.privateName(app_component$46template, "_EventBus_0_5");
  const _MenuComponent_0_6 = dart.privateName(app_component$46template, "_MenuComponent_0_6");
  const __Store_0_7 = dart.privateName(app_component$46template, "__Store_0_7");
  const _appEl_3 = dart.privateName(app_component$46template, "_appEl_3");
  const _RouterOutlet_3_8 = dart.privateName(app_component$46template, "_RouterOutlet_3_8");
  const _Store_0_7 = dart.privateName(app_component$46template, "_Store_0_7");
  app_component$46template.ViewAppComponent0 = class ViewAppComponent0 extends app_view.AppView$(app_component.AppComponent) {
    get [_Store_0_7]() {
      if (this[__Store_0_7] == null) {
        this[__Store_0_7] = new store.Store.new();
      }
      return this[__Store_0_7];
    }
    static get _debugComponentUrl() {
      return dart.test(optimizations.isDevMode) ? "asset:todo_fe/lib/app_component.dart" : null;
    }
    build() {
      let _rootEl = this.rootEl;
      let parentRenderNode = this.initViewRoot(_rootEl);
      this[_compView_0] = new menu_component$46template.ViewMenuComponent0.new(this, 0);
      let _el_0 = this[_compView_0].rootEl;
      parentRenderNode[$append](_el_0);
      this[_EventBus_0_5] = event_bus.EventBus.new();
      this[_MenuComponent_0_6] = new menu_component.MenuComponent.new(this[_EventBus_0_5]);
      this[_compView_0].create0(this[_MenuComponent_0_6]);
      let doc = html.document;
      let _el_1 = dom_helpers.appendDiv(doc, parentRenderNode);
      this.updateChildClass(_el_1, "container text-center");
      let _el_2 = dom_helpers.appendElement(doc, _el_1, "br");
      let _el_3 = dom_helpers.appendElement(doc, _el_1, "router-outlet");
      this[_appEl_3] = new view_container.ViewContainer.new(3, 1, this, _el_3);
      this[_RouterOutlet_3_8] = dart.test(optimizations.isDevMode) ? errors.debugInjectorWrap(router_outlet_directive.RouterOutlet, dart.wrapType(router_outlet_directive.RouterOutlet), dart.fn(() => new router_outlet_directive.RouterOutlet.new(router_outlet_token.RouterOutletToken._check(this.parentView.injectorGetOptional(dart.wrapType(router_outlet_token.RouterOutletToken), this.viewData.parentIndex)), this[_appEl_3], router.Router._check(this.parentView.injectorGet(dart.wrapType(router.Router), this.viewData.parentIndex)), router_hook.RouterHook._check(this.parentView.injectorGetOptional(dart.wrapType(router_hook.RouterHook), this.viewData.parentIndex))), VoidToRouterOutlet())) : new router_outlet_directive.RouterOutlet.new(router_outlet_token.RouterOutletToken._check(this.parentView.injectorGetOptional(dart.wrapType(router_outlet_token.RouterOutletToken), this.viewData.parentIndex)), this[_appEl_3], router.Router._check(this.parentView.injectorGet(dart.wrapType(router.Router), this.viewData.parentIndex)), router_hook.RouterHook._check(this.parentView.injectorGetOptional(dart.wrapType(router_hook.RouterHook), this.viewData.parentIndex)));
      let _el_4 = dom_helpers.appendElement(doc, _el_1, "footer");
      this.updateChildClass(html.HtmlElement._check(_el_4), "pt-4 my-md-5 pt-md-5 border-top");
      let _el_5 = dom_helpers.appendDiv(doc, _el_4);
      this.updateChildClass(_el_5, "row");
      let _el_6 = dom_helpers.appendDiv(doc, _el_5);
      this.updateChildClass(_el_6, "col-12 col-md");
      let _el_7 = dom_helpers.appendElement(doc, _el_6, "small");
      this.updateChildClass(html.HtmlElement._check(_el_7), "d-block mb-3 text-muted");
      let _text_8 = dom_helpers.appendText(_el_7, "© 2017-2019");
      this.init0();
    }
    injectorGetInternal(token, nodeIndex, notFoundResult) {
      if (0 === nodeIndex) {
        if (token === dart.wrapType(event_bus.EventBus)) {
          return this[_EventBus_0_5];
        }
        if (token === dart.wrapType(store.Store)) {
          return this[_Store_0_7];
        }
      }
      return notFoundResult;
    }
    detectChangesInternal() {
      let firstCheck = this.cdState === 0;
      if (!dart.test(app_view_utils.AppViewUtils.throwOnChanges) && firstCheck) {
        this[_MenuComponent_0_6].ngOnInit();
      }
      if (firstCheck) {
        if (routes.Routes.all != null) {
          this[_RouterOutlet_3_8].routes = routes.Routes.all;
        }
      }
      if (!dart.test(app_view_utils.AppViewUtils.throwOnChanges) && firstCheck) {
        this[_RouterOutlet_3_8].ngOnInit();
      }
      this[_appEl_3].detectChangesInNestedViews();
      this[_compView_0].detectChanges();
    }
    destroyInternal() {
      this[_appEl_3].destroyNestedViews();
      this[_compView_0].destroyInternalState();
      this[_RouterOutlet_3_8].ngOnDestroy();
    }
    initComponentStyles() {
      let styles = app_component$46template.ViewAppComponent0._componentStyles;
      if (styles == null) {
        app_component$46template.ViewAppComponent0._componentStyles = styles = app_component$46template.ViewAppComponent0._componentStyles = new style_encapsulation._UnscopedComponentStyles.new(app_component$46template.styles$AppComponent, app_component$46template.ViewAppComponent0._debugComponentUrl);
      }
      this.componentStyles = styles;
    }
  };
  (app_component$46template.ViewAppComponent0.new = function(parentView, parentIndex) {
    this[_compView_0] = null;
    this[_EventBus_0_5] = null;
    this[_MenuComponent_0_6] = null;
    this[__Store_0_7] = null;
    this[_appEl_3] = null;
    this[_RouterOutlet_3_8] = null;
    app_component$46template.ViewAppComponent0.__proto__.new.call(this, view_type.ViewType.component, parentView, parentIndex, 3);
    this.initComponentStyles();
    this.rootEl = html.HtmlElement._check(html.document[$createElement]("my-app"));
  }).prototype = app_component$46template.ViewAppComponent0.prototype;
  dart.addTypeTests(app_component$46template.ViewAppComponent0);
  dart.setMethodSignature(app_component$46template.ViewAppComponent0, () => ({
    __proto__: dart.getMethods(app_component$46template.ViewAppComponent0.__proto__),
    injectorGetInternal: dart.fnType(dart.dynamic, [dart.dynamic, core.int, dart.dynamic])
  }));
  dart.setGetterSignature(app_component$46template.ViewAppComponent0, () => ({
    __proto__: dart.getGetters(app_component$46template.ViewAppComponent0.__proto__),
    [_Store_0_7]: store.Store
  }));
  dart.setLibraryUri(app_component$46template.ViewAppComponent0, "package:todo_fe/app_component.template.dart");
  dart.setFieldSignature(app_component$46template.ViewAppComponent0, () => ({
    __proto__: dart.getFields(app_component$46template.ViewAppComponent0.__proto__),
    [_compView_0]: dart.fieldType(menu_component$46template.ViewMenuComponent0),
    [_EventBus_0_5]: dart.fieldType(event_bus.EventBus),
    [_MenuComponent_0_6]: dart.fieldType(menu_component.MenuComponent),
    [__Store_0_7]: dart.fieldType(store.Store),
    [_appEl_3]: dart.fieldType(view_container.ViewContainer),
    [_RouterOutlet_3_8]: dart.fieldType(router_outlet_directive.RouterOutlet)
  }));
  dart.defineLazy(app_component$46template.ViewAppComponent0, {
    /*app_component$46template.ViewAppComponent0._componentStyles*/get _componentStyles() {
      return null;
    },
    set _componentStyles(_) {}
  });
  const _AppComponent_0_5 = dart.privateName(app_component$46template, "_AppComponent_0_5");
  const __AuthService_0_6 = dart.privateName(app_component$46template, "__AuthService_0_6");
  const __TodoService_0_8 = dart.privateName(app_component$46template, "__TodoService_0_8");
  const _AuthService_0_6 = dart.privateName(app_component$46template, "_AuthService_0_6");
  const _TodoService_0_8 = dart.privateName(app_component$46template, "_TodoService_0_8");
  app_component$46template._ViewAppComponentHost0 = class _ViewAppComponentHost0 extends app_view.AppView$(app_component.AppComponent) {
    get [_AuthService_0_6]() {
      if (this[__AuthService_0_6] == null) {
        this[__AuthService_0_6] = dart.test(optimizations.isDevMode) ? errors.debugInjectorWrap(auth_service.AuthService, dart.wrapType(auth_service.AuthService), dart.fn(() => new auth_service.AuthService.new(client.Client._check(this.injectorGet(dart.wrapType(client.Client), this.viewData.parentIndex))), VoidToAuthService())) : new auth_service.AuthService.new(client.Client._check(this.injectorGet(dart.wrapType(client.Client), this.viewData.parentIndex)));
      }
      return this[__AuthService_0_6];
    }
    get [_Store_0_7]() {
      if (this[__Store_0_7] == null) {
        this[__Store_0_7] = new store.Store.new();
      }
      return this[__Store_0_7];
    }
    get [_TodoService_0_8]() {
      if (this[__TodoService_0_8] == null) {
        this[__TodoService_0_8] = dart.test(optimizations.isDevMode) ? errors.debugInjectorWrap(todo_service.TodoService, dart.wrapType(todo_service.TodoService), dart.fn(() => new todo_service.TodoService.new(client.Client._check(this.injectorGet(dart.wrapType(client.Client), this.viewData.parentIndex)), this[_Store_0_7]), VoidToTodoService())) : new todo_service.TodoService.new(client.Client._check(this.injectorGet(dart.wrapType(client.Client), this.viewData.parentIndex)), this[_Store_0_7]);
      }
      return this[__TodoService_0_8];
    }
    build() {
      this[_compView_0] = new app_component$46template.ViewAppComponent0.new(this, 0);
      this.rootEl = this[_compView_0].rootEl;
      this[_AppComponent_0_5] = new app_component.AppComponent.new();
      this[_compView_0].create(this[_AppComponent_0_5], this.projectedNodes);
      this.init1(this.rootEl);
      return new (ComponentRefOfAppComponent()).new(0, this, this.rootEl, this[_AppComponent_0_5]);
    }
    injectorGetInternal(token, nodeIndex, notFoundResult) {
      if (0 === nodeIndex) {
        if (token === dart.wrapType(auth_service.AuthService)) {
          return this[_AuthService_0_6];
        }
        if (token === dart.wrapType(store.Store)) {
          return this[_Store_0_7];
        }
        if (token === dart.wrapType(todo_service.TodoService)) {
          return this[_TodoService_0_8];
        }
      }
      return notFoundResult;
    }
    detectChangesInternal() {
      this[_compView_0].detectChanges();
    }
    destroyInternal() {
      this[_compView_0].destroyInternalState();
    }
  };
  (app_component$46template._ViewAppComponentHost0.new = function(parentView, parentIndex) {
    this[_compView_0] = null;
    this[_AppComponent_0_5] = null;
    this[__AuthService_0_6] = null;
    this[__Store_0_7] = null;
    this[__TodoService_0_8] = null;
    app_component$46template._ViewAppComponentHost0.__proto__.new.call(this, view_type.ViewType.host, parentView, parentIndex, 3);
    ;
  }).prototype = app_component$46template._ViewAppComponentHost0.prototype;
  dart.addTypeTests(app_component$46template._ViewAppComponentHost0);
  dart.setMethodSignature(app_component$46template._ViewAppComponentHost0, () => ({
    __proto__: dart.getMethods(app_component$46template._ViewAppComponentHost0.__proto__),
    injectorGetInternal: dart.fnType(dart.dynamic, [dart.dynamic, core.int, dart.dynamic])
  }));
  dart.setGetterSignature(app_component$46template._ViewAppComponentHost0, () => ({
    __proto__: dart.getGetters(app_component$46template._ViewAppComponentHost0.__proto__),
    [_AuthService_0_6]: dart.dynamic,
    [_Store_0_7]: store.Store,
    [_TodoService_0_8]: dart.dynamic
  }));
  dart.setLibraryUri(app_component$46template._ViewAppComponentHost0, "package:todo_fe/app_component.template.dart");
  dart.setFieldSignature(app_component$46template._ViewAppComponentHost0, () => ({
    __proto__: dart.getFields(app_component$46template._ViewAppComponentHost0.__proto__),
    [_compView_0]: dart.fieldType(app_component$46template.ViewAppComponent0),
    [_AppComponent_0_5]: dart.fieldType(app_component.AppComponent),
    [__AuthService_0_6]: dart.fieldType(dart.dynamic),
    [__Store_0_7]: dart.fieldType(store.Store),
    [__TodoService_0_8]: dart.fieldType(dart.dynamic)
  }));
  app_component$46template.viewFactory_AppComponentHost0 = function viewFactory_AppComponentHost0(parentView, parentIndex) {
    return new app_component$46template._ViewAppComponentHost0.new(parentView, parentIndex);
  };
  app_component$46template.initReflector = function initReflector() {
    if (dart.test(app_component$46template._visited)) {
      return;
    }
    app_component$46template._visited = true;
    reflector.registerComponent(dart.wrapType(app_component.AppComponent), app_component$46template.AppComponentNgFactory);
    angular$46template.initReflector();
    angular_router$46template.initReflector();
    auth_service$46template.initReflector();
    menu_component$46template.initReflector();
    route_paths$46template.initReflector();
    routes$46template.initReflector();
    store$46template.initReflector();
    todo_service$46template.initReflector();
  };
  dart.copyProperties(app_component$46template, {
    get AppComponentNgFactory() {
      return app_component$46template._AppComponentNgFactory;
    }
  });
  let C0;
  let C2;
  const ComponentFactory__viewFactory = dart.privateName(component_factory, "ComponentFactory._viewFactory");
  const ComponentFactory_selector = dart.privateName(component_factory, "ComponentFactory.selector");
  let C1;
  dart.defineLazy(app_component$46template, {
    /*app_component$46template.styles$AppComponent*/get styles$AppComponent() {
      return C0 || CT.C0;
    },
    /*app_component$46template._AppComponentNgFactory*/get _AppComponentNgFactory() {
      return C1 || CT.C1;
    },
    /*app_component$46template.styles$AppComponentHost*/get styles$AppComponentHost() {
      return C0 || CT.C0;
    },
    /*app_component$46template._visited*/get _visited() {
      return false;
    },
    set _visited(_) {}
  });
  const _appEl_4 = dart.privateName(menu_component$46template, "_appEl_4");
  const _NgIf_4_9 = dart.privateName(menu_component$46template, "_NgIf_4_9");
  const _appEl_6 = dart.privateName(menu_component$46template, "_appEl_6");
  const _NgIf_6_9 = dart.privateName(menu_component$46template, "_NgIf_6_9");
  const _appEl_7 = dart.privateName(menu_component$46template, "_appEl_7");
  const _NgIf_7_9 = dart.privateName(menu_component$46template, "_NgIf_7_9");
  const _appEl_9 = dart.privateName(menu_component$46template, "_appEl_9");
  const _NgIf_9_9 = dart.privateName(menu_component$46template, "_NgIf_9_9");
  let C3;
  let C4;
  let C5;
  let C6;
  menu_component$46template.ViewMenuComponent0 = class ViewMenuComponent0 extends app_view.AppView$(menu_component.MenuComponent) {
    static get _debugComponentUrl() {
      return dart.test(optimizations.isDevMode) ? "asset:todo_fe/lib/src/menu_component.dart" : null;
    }
    build() {
      let _rootEl = this.rootEl;
      let parentRenderNode = this.initViewRoot(_rootEl);
      let doc = html.document;
      let _el_0 = dom_helpers.appendDiv(doc, parentRenderNode);
      this.updateChildClass(_el_0, "d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm");
      let _el_1 = dom_helpers.appendElement(doc, _el_0, "h5");
      this.updateChildClass(html.HtmlElement._check(_el_1), "my-0 mr-md-auto font-weight-normal");
      let _text_2 = dom_helpers.appendText(_el_1, "Todos");
      let _el_3 = dom_helpers.appendElement(doc, _el_0, "nav");
      this.updateChildClass(html.HtmlElement._check(_el_3), "my-2 my-md-0 mr-md-3");
      let _anchor_4 = dom_helpers.appendAnchor(_el_3);
      this[_appEl_4] = new view_container.ViewContainer.new(4, 3, this, _anchor_4);
      let _TemplateRef_4_8 = new template_ref.TemplateRef.new(this[_appEl_4], C3 || CT.C3);
      this[_NgIf_4_9] = new ng_if.NgIf.new(this[_appEl_4], _TemplateRef_4_8);
      let _text_5 = dom_helpers.appendText(_el_3, " ");
      let _anchor_6 = dom_helpers.appendAnchor(_el_3);
      this[_appEl_6] = new view_container.ViewContainer.new(6, 3, this, _anchor_6);
      let _TemplateRef_6_8 = new template_ref.TemplateRef.new(this[_appEl_6], C4 || CT.C4);
      this[_NgIf_6_9] = new ng_if.NgIf.new(this[_appEl_6], _TemplateRef_6_8);
      let _anchor_7 = dom_helpers.appendAnchor(_el_0);
      this[_appEl_7] = new view_container.ViewContainer.new(7, 0, this, _anchor_7);
      let _TemplateRef_7_8 = new template_ref.TemplateRef.new(this[_appEl_7], C5 || CT.C5);
      this[_NgIf_7_9] = new ng_if.NgIf.new(this[_appEl_7], _TemplateRef_7_8);
      let _text_8 = dom_helpers.appendText(_el_0, " ");
      let _anchor_9 = dom_helpers.appendAnchor(_el_0);
      this[_appEl_9] = new view_container.ViewContainer.new(9, 0, this, _anchor_9);
      let _TemplateRef_9_8 = new template_ref.TemplateRef.new(this[_appEl_9], C6 || CT.C6);
      this[_NgIf_9_9] = new ng_if.NgIf.new(this[_appEl_9], _TemplateRef_9_8);
      this.init0();
    }
    detectChangesInternal() {
      let _ctx = this.ctx;
      this[_NgIf_4_9].ngIf = !dart.test(_ctx.signedIn);
      this[_NgIf_6_9].ngIf = _ctx.signedIn;
      this[_NgIf_7_9].ngIf = !dart.test(_ctx.signedIn);
      this[_NgIf_9_9].ngIf = _ctx.signedIn;
      this[_appEl_4].detectChangesInNestedViews();
      this[_appEl_6].detectChangesInNestedViews();
      this[_appEl_7].detectChangesInNestedViews();
      this[_appEl_9].detectChangesInNestedViews();
    }
    destroyInternal() {
      this[_appEl_4].destroyNestedViews();
      this[_appEl_6].destroyNestedViews();
      this[_appEl_7].destroyNestedViews();
      this[_appEl_9].destroyNestedViews();
    }
    initComponentStyles() {
      let styles = menu_component$46template.ViewMenuComponent0._componentStyles;
      if (styles == null) {
        menu_component$46template.ViewMenuComponent0._componentStyles = styles = menu_component$46template.ViewMenuComponent0._componentStyles = new style_encapsulation._UnscopedComponentStyles.new(menu_component$46template.styles$MenuComponent, menu_component$46template.ViewMenuComponent0._debugComponentUrl);
      }
      this.componentStyles = styles;
    }
  };
  (menu_component$46template.ViewMenuComponent0.new = function(parentView, parentIndex) {
    this[_appEl_4] = null;
    this[_NgIf_4_9] = null;
    this[_appEl_6] = null;
    this[_NgIf_6_9] = null;
    this[_appEl_7] = null;
    this[_NgIf_7_9] = null;
    this[_appEl_9] = null;
    this[_NgIf_9_9] = null;
    menu_component$46template.ViewMenuComponent0.__proto__.new.call(this, view_type.ViewType.component, parentView, parentIndex, 3);
    this.initComponentStyles();
    this.rootEl = html.HtmlElement._check(html.document[$createElement]("menu"));
  }).prototype = menu_component$46template.ViewMenuComponent0.prototype;
  dart.addTypeTests(menu_component$46template.ViewMenuComponent0);
  dart.setLibraryUri(menu_component$46template.ViewMenuComponent0, "package:todo_fe/src/menu_component.template.dart");
  dart.setFieldSignature(menu_component$46template.ViewMenuComponent0, () => ({
    __proto__: dart.getFields(menu_component$46template.ViewMenuComponent0.__proto__),
    [_appEl_4]: dart.fieldType(view_container.ViewContainer),
    [_NgIf_4_9]: dart.fieldType(ng_if.NgIf),
    [_appEl_6]: dart.fieldType(view_container.ViewContainer),
    [_NgIf_6_9]: dart.fieldType(ng_if.NgIf),
    [_appEl_7]: dart.fieldType(view_container.ViewContainer),
    [_NgIf_7_9]: dart.fieldType(ng_if.NgIf),
    [_appEl_9]: dart.fieldType(view_container.ViewContainer),
    [_NgIf_9_9]: dart.fieldType(ng_if.NgIf)
  }));
  dart.defineLazy(menu_component$46template.ViewMenuComponent0, {
    /*menu_component$46template.ViewMenuComponent0._componentStyles*/get _componentStyles() {
      return null;
    },
    set _componentStyles(_) {}
  });
  const _RouterLink_0_5 = dart.privateName(menu_component$46template, "_RouterLink_0_5");
  const _RouterLinkActive_0_6 = dart.privateName(menu_component$46template, "_RouterLinkActive_0_6");
  const _expr_0 = dart.privateName(menu_component$46template, "_expr_0");
  const _el_0 = dart.privateName(menu_component$46template, "_el_0");
  menu_component$46template._ViewMenuComponent1 = class _ViewMenuComponent1 extends app_view.AppView$(menu_component.MenuComponent) {
    build() {
      let doc = html.document;
      this[_el_0] = html.AnchorElement._check(doc[$createElement]("a"));
      this.updateChildClass(this[_el_0], "p-2 text-dark");
      this[_RouterLink_0_5] = new router_link_directive$46template.RouterLinkNgCd.new(dart.test(optimizations.isDevMode) ? errors.debugInjectorWrap(router_link_directive.RouterLink, dart.wrapType(router_link_directive.RouterLink), dart.fn(() => new router_link_directive.RouterLink.new(router.Router._check(this.parentView.parentView.injectorGet(dart.wrapType(router.Router), this.parentView.viewData.parentIndex)), location.Location._check(this.parentView.parentView.injectorGet(dart.wrapType(location.Location), this.parentView.viewData.parentIndex)), null, this[_el_0]), VoidToRouterLink())) : new router_link_directive.RouterLink.new(router.Router._check(this.parentView.parentView.injectorGet(dart.wrapType(router.Router), this.parentView.viewData.parentIndex)), location.Location._check(this.parentView.parentView.injectorGet(dart.wrapType(location.Location), this.parentView.viewData.parentIndex)), null, this[_el_0]));
      this[_RouterLinkActive_0_6] = dart.test(optimizations.isDevMode) ? errors.debugInjectorWrap(router_link_active_directive.RouterLinkActive, dart.wrapType(router_link_active_directive.RouterLinkActive), dart.fn(() => new router_link_active_directive.RouterLinkActive.new(this[_el_0], router.Router._check(this.parentView.parentView.injectorGet(dart.wrapType(router.Router), this.parentView.viewData.parentIndex))), VoidToRouterLinkActive())) : new router_link_active_directive.RouterLinkActive.new(this[_el_0], router.Router._check(this.parentView.parentView.injectorGet(dart.wrapType(router.Router), this.parentView.viewData.parentIndex)));
      let _text_1 = dom_helpers.appendText(this[_el_0], "Register");
      this[_RouterLinkActive_0_6].links = JSArrayOfRouterLink().of([this[_RouterLink_0_5].instance]);
      this[_el_0][$addEventListener]("click", this.eventHandler1(html.Event, html.MouseEvent, dart.bind(this[_RouterLink_0_5].instance, 'onClick')));
      this.init1(this[_el_0]);
    }
    detectChangesInternal() {
      let firstCheck = this.cdState === 0;
      let currVal_0 = route_paths.RoutePaths.register.toUrl();
      if (dart.test(app_view_utils.checkBinding(this[_expr_0], currVal_0))) {
        this[_RouterLink_0_5].instance.routerLink = currVal_0;
        this[_expr_0] = currVal_0;
      }
      if (firstCheck) {
        this[_RouterLinkActive_0_6].routerLinkActive = "active";
      }
      this[_RouterLink_0_5].detectHostChanges(this, this[_el_0]);
      if (!dart.test(app_view_utils.AppViewUtils.throwOnChanges)) {
        if (firstCheck) {
          this[_RouterLinkActive_0_6].ngAfterViewInit();
        }
      }
    }
    destroyInternal() {
      this[_RouterLink_0_5].instance.ngOnDestroy();
      this[_RouterLinkActive_0_6].ngOnDestroy();
    }
  };
  (menu_component$46template._ViewMenuComponent1.new = function(parentView, parentIndex) {
    this[_RouterLink_0_5] = null;
    this[_RouterLinkActive_0_6] = null;
    this[_expr_0] = null;
    this[_el_0] = null;
    menu_component$46template._ViewMenuComponent1.__proto__.new.call(this, view_type.ViewType.embedded, parentView, parentIndex, 3);
    this.initComponentStyles();
  }).prototype = menu_component$46template._ViewMenuComponent1.prototype;
  dart.addTypeTests(menu_component$46template._ViewMenuComponent1);
  dart.setLibraryUri(menu_component$46template._ViewMenuComponent1, "package:todo_fe/src/menu_component.template.dart");
  dart.setFieldSignature(menu_component$46template._ViewMenuComponent1, () => ({
    __proto__: dart.getFields(menu_component$46template._ViewMenuComponent1.__proto__),
    [_RouterLink_0_5]: dart.fieldType(router_link_directive$46template.RouterLinkNgCd),
    [_RouterLinkActive_0_6]: dart.fieldType(router_link_active_directive.RouterLinkActive),
    [_expr_0]: dart.fieldType(core.String),
    [_el_0]: dart.fieldType(html.AnchorElement)
  }));
  menu_component$46template._ViewMenuComponent2 = class _ViewMenuComponent2 extends app_view.AppView$(menu_component.MenuComponent) {
    build() {
      let doc = html.document;
      this[_el_0] = html.AnchorElement._check(doc[$createElement]("a"));
      this.updateChildClass(this[_el_0], "p-2 text-dark");
      this[_RouterLink_0_5] = new router_link_directive$46template.RouterLinkNgCd.new(dart.test(optimizations.isDevMode) ? errors.debugInjectorWrap(router_link_directive.RouterLink, dart.wrapType(router_link_directive.RouterLink), dart.fn(() => new router_link_directive.RouterLink.new(router.Router._check(this.parentView.parentView.injectorGet(dart.wrapType(router.Router), this.parentView.viewData.parentIndex)), location.Location._check(this.parentView.parentView.injectorGet(dart.wrapType(location.Location), this.parentView.viewData.parentIndex)), null, this[_el_0]), VoidToRouterLink())) : new router_link_directive.RouterLink.new(router.Router._check(this.parentView.parentView.injectorGet(dart.wrapType(router.Router), this.parentView.viewData.parentIndex)), location.Location._check(this.parentView.parentView.injectorGet(dart.wrapType(location.Location), this.parentView.viewData.parentIndex)), null, this[_el_0]));
      this[_RouterLinkActive_0_6] = dart.test(optimizations.isDevMode) ? errors.debugInjectorWrap(router_link_active_directive.RouterLinkActive, dart.wrapType(router_link_active_directive.RouterLinkActive), dart.fn(() => new router_link_active_directive.RouterLinkActive.new(this[_el_0], router.Router._check(this.parentView.parentView.injectorGet(dart.wrapType(router.Router), this.parentView.viewData.parentIndex))), VoidToRouterLinkActive())) : new router_link_active_directive.RouterLinkActive.new(this[_el_0], router.Router._check(this.parentView.parentView.injectorGet(dart.wrapType(router.Router), this.parentView.viewData.parentIndex)));
      let _text_1 = dom_helpers.appendText(this[_el_0], "Todos");
      this[_RouterLinkActive_0_6].links = JSArrayOfRouterLink().of([this[_RouterLink_0_5].instance]);
      this[_el_0][$addEventListener]("click", this.eventHandler1(html.Event, html.MouseEvent, dart.bind(this[_RouterLink_0_5].instance, 'onClick')));
      this.init1(this[_el_0]);
    }
    detectChangesInternal() {
      let firstCheck = this.cdState === 0;
      let currVal_0 = route_paths.RoutePaths.todos.toUrl();
      if (dart.test(app_view_utils.checkBinding(this[_expr_0], currVal_0))) {
        this[_RouterLink_0_5].instance.routerLink = currVal_0;
        this[_expr_0] = currVal_0;
      }
      if (firstCheck) {
        this[_RouterLinkActive_0_6].routerLinkActive = "active";
      }
      this[_RouterLink_0_5].detectHostChanges(this, this[_el_0]);
      if (!dart.test(app_view_utils.AppViewUtils.throwOnChanges)) {
        if (firstCheck) {
          this[_RouterLinkActive_0_6].ngAfterViewInit();
        }
      }
    }
    destroyInternal() {
      this[_RouterLink_0_5].instance.ngOnDestroy();
      this[_RouterLinkActive_0_6].ngOnDestroy();
    }
  };
  (menu_component$46template._ViewMenuComponent2.new = function(parentView, parentIndex) {
    this[_RouterLink_0_5] = null;
    this[_RouterLinkActive_0_6] = null;
    this[_expr_0] = null;
    this[_el_0] = null;
    menu_component$46template._ViewMenuComponent2.__proto__.new.call(this, view_type.ViewType.embedded, parentView, parentIndex, 3);
    this.initComponentStyles();
  }).prototype = menu_component$46template._ViewMenuComponent2.prototype;
  dart.addTypeTests(menu_component$46template._ViewMenuComponent2);
  dart.setLibraryUri(menu_component$46template._ViewMenuComponent2, "package:todo_fe/src/menu_component.template.dart");
  dart.setFieldSignature(menu_component$46template._ViewMenuComponent2, () => ({
    __proto__: dart.getFields(menu_component$46template._ViewMenuComponent2.__proto__),
    [_RouterLink_0_5]: dart.fieldType(router_link_directive$46template.RouterLinkNgCd),
    [_RouterLinkActive_0_6]: dart.fieldType(router_link_active_directive.RouterLinkActive),
    [_expr_0]: dart.fieldType(core.String),
    [_el_0]: dart.fieldType(html.AnchorElement)
  }));
  menu_component$46template._ViewMenuComponent3 = class _ViewMenuComponent3 extends app_view.AppView$(menu_component.MenuComponent) {
    build() {
      let doc = html.document;
      this[_el_0] = html.AnchorElement._check(doc[$createElement]("a"));
      this.updateChildClass(this[_el_0], "btn btn-outline-primary");
      this[_RouterLink_0_5] = new router_link_directive$46template.RouterLinkNgCd.new(dart.test(optimizations.isDevMode) ? errors.debugInjectorWrap(router_link_directive.RouterLink, dart.wrapType(router_link_directive.RouterLink), dart.fn(() => new router_link_directive.RouterLink.new(router.Router._check(this.parentView.parentView.injectorGet(dart.wrapType(router.Router), this.parentView.viewData.parentIndex)), location.Location._check(this.parentView.parentView.injectorGet(dart.wrapType(location.Location), this.parentView.viewData.parentIndex)), null, this[_el_0]), VoidToRouterLink())) : new router_link_directive.RouterLink.new(router.Router._check(this.parentView.parentView.injectorGet(dart.wrapType(router.Router), this.parentView.viewData.parentIndex)), location.Location._check(this.parentView.parentView.injectorGet(dart.wrapType(location.Location), this.parentView.viewData.parentIndex)), null, this[_el_0]));
      this[_RouterLinkActive_0_6] = dart.test(optimizations.isDevMode) ? errors.debugInjectorWrap(router_link_active_directive.RouterLinkActive, dart.wrapType(router_link_active_directive.RouterLinkActive), dart.fn(() => new router_link_active_directive.RouterLinkActive.new(this[_el_0], router.Router._check(this.parentView.parentView.injectorGet(dart.wrapType(router.Router), this.parentView.viewData.parentIndex))), VoidToRouterLinkActive())) : new router_link_active_directive.RouterLinkActive.new(this[_el_0], router.Router._check(this.parentView.parentView.injectorGet(dart.wrapType(router.Router), this.parentView.viewData.parentIndex)));
      let _text_1 = dom_helpers.appendText(this[_el_0], "Login");
      this[_RouterLinkActive_0_6].links = JSArrayOfRouterLink().of([this[_RouterLink_0_5].instance]);
      this[_el_0][$addEventListener]("click", this.eventHandler1(html.Event, html.MouseEvent, dart.bind(this[_RouterLink_0_5].instance, 'onClick')));
      this.init1(this[_el_0]);
    }
    detectChangesInternal() {
      let firstCheck = this.cdState === 0;
      let currVal_0 = route_paths.RoutePaths.login.toUrl();
      if (dart.test(app_view_utils.checkBinding(this[_expr_0], currVal_0))) {
        this[_RouterLink_0_5].instance.routerLink = currVal_0;
        this[_expr_0] = currVal_0;
      }
      if (firstCheck) {
        this[_RouterLinkActive_0_6].routerLinkActive = "active";
      }
      this[_RouterLink_0_5].detectHostChanges(this, this[_el_0]);
      if (!dart.test(app_view_utils.AppViewUtils.throwOnChanges)) {
        if (firstCheck) {
          this[_RouterLinkActive_0_6].ngAfterViewInit();
        }
      }
    }
    destroyInternal() {
      this[_RouterLink_0_5].instance.ngOnDestroy();
      this[_RouterLinkActive_0_6].ngOnDestroy();
    }
  };
  (menu_component$46template._ViewMenuComponent3.new = function(parentView, parentIndex) {
    this[_RouterLink_0_5] = null;
    this[_RouterLinkActive_0_6] = null;
    this[_expr_0] = null;
    this[_el_0] = null;
    menu_component$46template._ViewMenuComponent3.__proto__.new.call(this, view_type.ViewType.embedded, parentView, parentIndex, 3);
    this.initComponentStyles();
  }).prototype = menu_component$46template._ViewMenuComponent3.prototype;
  dart.addTypeTests(menu_component$46template._ViewMenuComponent3);
  dart.setLibraryUri(menu_component$46template._ViewMenuComponent3, "package:todo_fe/src/menu_component.template.dart");
  dart.setFieldSignature(menu_component$46template._ViewMenuComponent3, () => ({
    __proto__: dart.getFields(menu_component$46template._ViewMenuComponent3.__proto__),
    [_RouterLink_0_5]: dart.fieldType(router_link_directive$46template.RouterLinkNgCd),
    [_RouterLinkActive_0_6]: dart.fieldType(router_link_active_directive.RouterLinkActive),
    [_expr_0]: dart.fieldType(core.String),
    [_el_0]: dart.fieldType(html.AnchorElement)
  }));
  menu_component$46template._ViewMenuComponent4 = class _ViewMenuComponent4 extends app_view.AppView$(menu_component.MenuComponent) {
    build() {
      let doc = html.document;
      this[_el_0] = html.AnchorElement._check(doc[$createElement]("a"));
      this.updateChildClass(this[_el_0], "btn btn-outline-primary");
      this[_RouterLink_0_5] = new router_link_directive$46template.RouterLinkNgCd.new(dart.test(optimizations.isDevMode) ? errors.debugInjectorWrap(router_link_directive.RouterLink, dart.wrapType(router_link_directive.RouterLink), dart.fn(() => new router_link_directive.RouterLink.new(router.Router._check(this.parentView.parentView.injectorGet(dart.wrapType(router.Router), this.parentView.viewData.parentIndex)), location.Location._check(this.parentView.parentView.injectorGet(dart.wrapType(location.Location), this.parentView.viewData.parentIndex)), null, this[_el_0]), VoidToRouterLink())) : new router_link_directive.RouterLink.new(router.Router._check(this.parentView.parentView.injectorGet(dart.wrapType(router.Router), this.parentView.viewData.parentIndex)), location.Location._check(this.parentView.parentView.injectorGet(dart.wrapType(location.Location), this.parentView.viewData.parentIndex)), null, this[_el_0]));
      this[_RouterLinkActive_0_6] = dart.test(optimizations.isDevMode) ? errors.debugInjectorWrap(router_link_active_directive.RouterLinkActive, dart.wrapType(router_link_active_directive.RouterLinkActive), dart.fn(() => new router_link_active_directive.RouterLinkActive.new(this[_el_0], router.Router._check(this.parentView.parentView.injectorGet(dart.wrapType(router.Router), this.parentView.viewData.parentIndex))), VoidToRouterLinkActive())) : new router_link_active_directive.RouterLinkActive.new(this[_el_0], router.Router._check(this.parentView.parentView.injectorGet(dart.wrapType(router.Router), this.parentView.viewData.parentIndex)));
      let _text_1 = dom_helpers.appendText(this[_el_0], "Logout");
      this[_RouterLinkActive_0_6].links = JSArrayOfRouterLink().of([this[_RouterLink_0_5].instance]);
      this[_el_0][$addEventListener]("click", this.eventHandler1(html.Event, html.MouseEvent, dart.bind(this[_RouterLink_0_5].instance, 'onClick')));
      this.init1(this[_el_0]);
    }
    detectChangesInternal() {
      let firstCheck = this.cdState === 0;
      let currVal_0 = route_paths.RoutePaths.logout.toUrl();
      if (dart.test(app_view_utils.checkBinding(this[_expr_0], currVal_0))) {
        this[_RouterLink_0_5].instance.routerLink = currVal_0;
        this[_expr_0] = currVal_0;
      }
      if (firstCheck) {
        this[_RouterLinkActive_0_6].routerLinkActive = "active";
      }
      this[_RouterLink_0_5].detectHostChanges(this, this[_el_0]);
      if (!dart.test(app_view_utils.AppViewUtils.throwOnChanges)) {
        if (firstCheck) {
          this[_RouterLinkActive_0_6].ngAfterViewInit();
        }
      }
    }
    destroyInternal() {
      this[_RouterLink_0_5].instance.ngOnDestroy();
      this[_RouterLinkActive_0_6].ngOnDestroy();
    }
  };
  (menu_component$46template._ViewMenuComponent4.new = function(parentView, parentIndex) {
    this[_RouterLink_0_5] = null;
    this[_RouterLinkActive_0_6] = null;
    this[_expr_0] = null;
    this[_el_0] = null;
    menu_component$46template._ViewMenuComponent4.__proto__.new.call(this, view_type.ViewType.embedded, parentView, parentIndex, 3);
    this.initComponentStyles();
  }).prototype = menu_component$46template._ViewMenuComponent4.prototype;
  dart.addTypeTests(menu_component$46template._ViewMenuComponent4);
  dart.setLibraryUri(menu_component$46template._ViewMenuComponent4, "package:todo_fe/src/menu_component.template.dart");
  dart.setFieldSignature(menu_component$46template._ViewMenuComponent4, () => ({
    __proto__: dart.getFields(menu_component$46template._ViewMenuComponent4.__proto__),
    [_RouterLink_0_5]: dart.fieldType(router_link_directive$46template.RouterLinkNgCd),
    [_RouterLinkActive_0_6]: dart.fieldType(router_link_active_directive.RouterLinkActive),
    [_expr_0]: dart.fieldType(core.String),
    [_el_0]: dart.fieldType(html.AnchorElement)
  }));
  const _compView_0$ = dart.privateName(menu_component$46template, "_compView_0");
  const _EventBus_0_5$ = dart.privateName(menu_component$46template, "_EventBus_0_5");
  const _MenuComponent_0_6$ = dart.privateName(menu_component$46template, "_MenuComponent_0_6");
  const __Store_0_7$ = dart.privateName(menu_component$46template, "__Store_0_7");
  const _Store_0_7$ = dart.privateName(menu_component$46template, "_Store_0_7");
  menu_component$46template._ViewMenuComponentHost0 = class _ViewMenuComponentHost0 extends app_view.AppView$(menu_component.MenuComponent) {
    get [_Store_0_7$]() {
      if (this[__Store_0_7$] == null) {
        this[__Store_0_7$] = new store.Store.new();
      }
      return this[__Store_0_7$];
    }
    build() {
      this[_compView_0$] = new menu_component$46template.ViewMenuComponent0.new(this, 0);
      this.rootEl = this[_compView_0$].rootEl;
      this[_EventBus_0_5$] = event_bus.EventBus.new();
      this[_MenuComponent_0_6$] = new menu_component.MenuComponent.new(this[_EventBus_0_5$]);
      this[_compView_0$].create(this[_MenuComponent_0_6$], this.projectedNodes);
      this.init1(this.rootEl);
      return new (ComponentRefOfMenuComponent()).new(0, this, this.rootEl, this[_MenuComponent_0_6$]);
    }
    injectorGetInternal(token, nodeIndex, notFoundResult) {
      if (0 === nodeIndex) {
        if (token === dart.wrapType(event_bus.EventBus)) {
          return this[_EventBus_0_5$];
        }
        if (token === dart.wrapType(store.Store)) {
          return this[_Store_0_7$];
        }
      }
      return notFoundResult;
    }
    detectChangesInternal() {
      let firstCheck = this.cdState === 0;
      if (!dart.test(app_view_utils.AppViewUtils.throwOnChanges) && firstCheck) {
        this[_MenuComponent_0_6$].ngOnInit();
      }
      this[_compView_0$].detectChanges();
    }
    destroyInternal() {
      this[_compView_0$].destroyInternalState();
    }
  };
  (menu_component$46template._ViewMenuComponentHost0.new = function(parentView, parentIndex) {
    this[_compView_0$] = null;
    this[_EventBus_0_5$] = null;
    this[_MenuComponent_0_6$] = null;
    this[__Store_0_7$] = null;
    menu_component$46template._ViewMenuComponentHost0.__proto__.new.call(this, view_type.ViewType.host, parentView, parentIndex, 3);
    ;
  }).prototype = menu_component$46template._ViewMenuComponentHost0.prototype;
  dart.addTypeTests(menu_component$46template._ViewMenuComponentHost0);
  dart.setMethodSignature(menu_component$46template._ViewMenuComponentHost0, () => ({
    __proto__: dart.getMethods(menu_component$46template._ViewMenuComponentHost0.__proto__),
    injectorGetInternal: dart.fnType(dart.dynamic, [dart.dynamic, core.int, dart.dynamic])
  }));
  dart.setGetterSignature(menu_component$46template._ViewMenuComponentHost0, () => ({
    __proto__: dart.getGetters(menu_component$46template._ViewMenuComponentHost0.__proto__),
    [_Store_0_7$]: store.Store
  }));
  dart.setLibraryUri(menu_component$46template._ViewMenuComponentHost0, "package:todo_fe/src/menu_component.template.dart");
  dart.setFieldSignature(menu_component$46template._ViewMenuComponentHost0, () => ({
    __proto__: dart.getFields(menu_component$46template._ViewMenuComponentHost0.__proto__),
    [_compView_0$]: dart.fieldType(menu_component$46template.ViewMenuComponent0),
    [_EventBus_0_5$]: dart.fieldType(event_bus.EventBus),
    [_MenuComponent_0_6$]: dart.fieldType(menu_component.MenuComponent),
    [__Store_0_7$]: dart.fieldType(store.Store)
  }));
  menu_component$46template.viewFactory_MenuComponent1 = function viewFactory_MenuComponent1(parentView, parentIndex) {
    return new menu_component$46template._ViewMenuComponent1.new(parentView, parentIndex);
  };
  menu_component$46template.viewFactory_MenuComponent2 = function viewFactory_MenuComponent2(parentView, parentIndex) {
    return new menu_component$46template._ViewMenuComponent2.new(parentView, parentIndex);
  };
  menu_component$46template.viewFactory_MenuComponent3 = function viewFactory_MenuComponent3(parentView, parentIndex) {
    return new menu_component$46template._ViewMenuComponent3.new(parentView, parentIndex);
  };
  menu_component$46template.viewFactory_MenuComponent4 = function viewFactory_MenuComponent4(parentView, parentIndex) {
    return new menu_component$46template._ViewMenuComponent4.new(parentView, parentIndex);
  };
  menu_component$46template.viewFactory_MenuComponentHost0 = function viewFactory_MenuComponentHost0(parentView, parentIndex) {
    return new menu_component$46template._ViewMenuComponentHost0.new(parentView, parentIndex);
  };
  menu_component$46template.initReflector = function initReflector$() {
    if (dart.test(menu_component$46template._visited)) {
      return;
    }
    menu_component$46template._visited = true;
    reflector.registerComponent(dart.wrapType(menu_component.MenuComponent), menu_component$46template.MenuComponentNgFactory);
    event_bus$46template.initReflector();
    angular$46template.initReflector();
    angular_router$46template.initReflector();
    route_paths$46template.initReflector();
    routes$46template.initReflector();
    store$46template.initReflector();
  };
  dart.copyProperties(menu_component$46template, {
    get MenuComponentNgFactory() {
      return menu_component$46template._MenuComponentNgFactory;
    }
  });
  let C8;
  let C7;
  dart.defineLazy(menu_component$46template, {
    /*menu_component$46template.styles$MenuComponent*/get styles$MenuComponent() {
      return C0 || CT.C0;
    },
    /*menu_component$46template._MenuComponentNgFactory*/get _MenuComponentNgFactory() {
      return C7 || CT.C7;
    },
    /*menu_component$46template.styles$MenuComponentHost*/get styles$MenuComponentHost() {
      return C0 || CT.C0;
    },
    /*menu_component$46template._visited*/get _visited() {
      return false;
    },
    set _visited(_) {}
  });
  dart.trackLibraries("packages/todo_fe/app_component.template", {
    "package:todo_fe/app_component.template.dart": app_component$46template,
    "package:todo_fe/src/menu_component.template.dart": menu_component$46template
  }, {
  }, '{"version":3,"sourceRoot":"","sources":["app_component.template.dart","src/menu_component.template.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;AAuDI,UAAK,AAAY,qBAAG;AACa,QAA9B,oBAAsB;;AAEzB,YAAO;IACT;;AAGE,uBAAiB,2BAAY,yCAAyC;IACxE;;AAIQ,oBAAU;AACW,6BAAmB,kBAAa,OAAO;AACjB,MAAjD,oBAAsB,qDAAmB,MAAM;AACzC,kBAAQ,AAAY;AACI,MAA9B,AAAiB,gBAAD,UAAQ,KAAK;AACK,MAAlC,sBAAwB;AACiC,MAAzD,2BAA6B,qCAAc;AACJ,MAAvC,AAAY,0BAAQ;AACd,gBAAe;AACf,kBAAQ,sBAAmB,GAAG,EAAE,gBAAgB;AACD,MAArD,AAAK,sBAAiB,KAAK,EAAE;AACvB,kBAAQ,0BAAuB,GAAG,EAAE,KAAK,EAAE;AAC3C,kBAAQ,0BAAuB,GAAG,EAAE,KAAK,EAAE;AACN,MAA3C,iBAAW,qCAAc,GAAG,GAAG,MAAM,KAAK;AAKuN,MAJjQ,oCAA8B,2BACxB,+DAAmC,qDAAc,cAChC,0FAAa,AAAW,oCAA6B,sDAAmB,AAAS,6BAAc,qCAAU,AAAW,4BAAqB,8BAAQ,AAAS,2DAAc,AAAW,oCAA6B,uCAAY,AAAS,uDAE9O,0FAAa,AAAW,oCAA6B,sDAAmB,AAAS,6BAAc,qCAAU,AAAW,4BAAqB,8BAAQ,AAAS,2DAAc,AAAW,oCAA6B,uCAAY,AAAS;AAC7O,kBAAQ,0BAAuB,GAAG,EAAE,KAAK,EAAE;AACc,MAA/D,AAAK,8CAAiB,KAAK,GAAE;AACvB,kBAAQ,sBAAmB,GAAG,EAAE,KAAK;AACR,MAAnC,AAAK,sBAAiB,KAAK,EAAE;AACvB,kBAAQ,sBAAmB,GAAG,EAAE,KAAK;AACE,MAA7C,AAAK,sBAAiB,KAAK,EAAE;AACvB,kBAAQ,0BAAuB,GAAG,EAAE,KAAK,EAAE;AACM,MAAvD,AAAK,8CAAiB,KAAK,GAAE;AACvB,oBAAU,uBAAoB,KAAK,EAAE;AACpC,MAAP;IACF;wBAGoC,OAAW,WAAmB;AAChE,UAAK,AAAE,MAAG,SAAS;AACjB,YAAI,AAAU,KAAK,KAAU;AAC3B,gBAAO;;AAET,YAAI,AAAU,KAAK,KAAU;AAC3B,gBAAO;;;AAGX,YAAO,eAAc;IACvB;;AAIO,uBAAmB,AAAQ,iBAAG;AACnC,qBAA6B,+CAAmB,UAAU;AAC3B,QAA7B,AAAmB;;AAErB,UAAI,UAAU;AACZ,YAA+B,qBAAK;AACc,UAA/C,AAAkB,iCAAyB;;;AAGhD,qBAA6B,+CAAmB,UAAU;AAC5B,QAA5B,AAAkB;;AAEiB,MAArC,AAAS;AACkB,MAA3B,AAAY;IACd;;AAI+B,MAA7B,AAAS;AACyB,MAAlC,AAAY;AACmB,MAA/B,AAAkB;IACpB;;AAIM,mBAAS;AACb,UAAI,AAAU,MAAM,IAAE;AAC0G,QAA7H,8DAAoB,SAAU,8DAA2C,qDAAS,8CAAqB;;AAElF,MAAxB,uBAAkB,MAAM;IAC1B;;6DA7FmC,YAAgB;IAPxB;IACV;IACK;IACR;IACA;IACO;AAE6C,wEAAuB,8BAAW,UAAU,EAAE,WAAW;AACpG,IAArB;AACkD,kBAAlD,wBAAkB,AAAS,8BAAc;EAC3C;;;;;;;;;;;;;;;;;;;;;MAJ+B,2DAAgB;;;;;;;;;;;;AAgH7C,UAAK,AAAkB,2BAAG;AAK6D,QAJpF,oCAA8B,2BACzB,mDAAoC,yCAAa,cAC/B,sDAAY,AAAK,iBAAqB,8BAAQ,AAAS,sDAEhE,sDAAY,AAAK,iBAAqB,8BAAQ,AAAS;;AAExE,YAAO;IACT;;AAGE,UAAK,AAAY,qBAAG;AACa,QAA9B,oBAAsB;;AAEzB,YAAO;IACT;;AAGE,UAAK,AAAkB,2BAAG;AAKyE,QAJhG,oCAA8B,2BACzB,mDAAoC,yCAAa,cAC/B,sDAAY,AAAK,iBAAqB,8BAAQ,AAAS,6BAAc,2CAE9E,sDAAY,AAAK,iBAAqB,8BAAQ,AAAS,6BAAc;;AAEtF,YAAO;IACT;;AAI0C,MAAxC,oBAAc,mDAAkB,MAAM;AACX,MAA3B,cAAS,AAAY;AACqB,MAA1C,0BAA4B;AACyB,MAArD,AAAY,yBAAO,yBAAmB;AACzB,MAAb,WAAM;AACN,YAAO,wCAAa,GAAG,MAAM,aAAQ;IACvC;wBAGoC,OAAW,WAAmB;AAChE,UAAK,AAAE,MAAG,SAAS;AACjB,YAAI,AAAU,KAAK,KAAW;AAC5B,gBAAO;;AAET,YAAI,AAAU,KAAK,KAAU;AAC3B,gBAAO;;AAET,YAAI,AAAU,KAAK,KAAW;AAC5B,gBAAO;;;AAGX,YAAO,eAAc;IACvB;;AAI6B,MAA3B,AAAY;IACd;;AAIoC,MAAlC,AAAY;IACd;;kEAhEwC,YAAgB;IALtC;IACG;IACb;IACM;IACN;AAC+D,6EAAuB,yBAAM,UAAU,EAAE,WAAW;;EAAsC;;;;;;;;;;;;;;;;;;;;;kGAmEtF,YAAgB;AAC3F,UAAO,yDAAuB,UAAU,EAAE,WAAW;EACvD;;AAIE,kBAAI;AACF;;AAEa,IAAf,oCAAW;AAEkD,IAA7D,4BAAyB,2CAAc;AAClB,IAArB;AACqB,IAArB;AACqB,IAArB;AACqB,IAArB;AACqB,IAArB;AACqB,IAArB;AACqB,IAArB;AACqB,IAArB;EACF;;;AAlGE,YAAO;IACT;;;;;;;;MA7GoB,4CAAmB;;;MA0GM,+CAAsB;;;MAK/C,gDAAuB;;;MA+EvC,iCAAQ;YAAG;;;;;;;;;;;;;;;;;;ACjLX,uBAAgB,2BAAY,8CAA8C;IAC5E;;AAIQ,oBAAU;AACU,6BAAmB,kBAAa,OAAO;AAC3D,gBAAc;AACd,kBAAQ,sBAAmB,GAAG,EAAE,gBAAgB;AAC6E,MAAnI,AAAK,sBAAiB,KAAK,EAAE;AACvB,kBAAQ,0BAAuB,GAAG,EAAE,KAAK,EAAE;AACiB,MAAlE,AAAK,8CAAiB,KAAK,GAAE;AACvB,oBAAU,uBAAoB,KAAK,EAAE;AACrC,kBAAQ,0BAAuB,GAAG,EAAE,KAAK,EAAE;AACG,MAApD,AAAK,8CAAiB,KAAK,GAAE;AACvB,sBAAY,yBAAsB,KAAK;AACE,MAA/C,iBAAW,qCAAc,GAAG,GAAG,MAAM,SAAS;AAClC,6BAAmB,iCAAY;AACC,MAA5C,kBAAY,mBAAK,gBAAU,gBAAgB;AACrC,oBAAU,uBAAoB,KAAK,EAAE;AACrC,sBAAY,yBAAsB,KAAK;AACE,MAA/C,iBAAW,qCAAc,GAAG,GAAG,MAAM,SAAS;AAClC,6BAAmB,iCAAY;AACC,MAA5C,kBAAY,mBAAK,gBAAU,gBAAgB;AACrC,sBAAY,yBAAsB,KAAK;AACE,MAA/C,iBAAW,qCAAc,GAAG,GAAG,MAAM,SAAS;AAClC,6BAAmB,iCAAY;AACC,MAA5C,kBAAY,mBAAK,gBAAU,gBAAgB;AACrC,oBAAU,uBAAoB,KAAK,EAAE;AACrC,sBAAY,yBAAsB,KAAK;AACE,MAA/C,iBAAW,qCAAc,GAAG,GAAG,MAAM,SAAS;AAClC,6BAAmB,iCAAY;AACC,MAA5C,kBAAY,mBAAK,gBAAU,gBAAgB;AACpC,MAAP;IACF;;AAIQ,iBAAO;AACoB,MAAjC,AAAU,uBAAQ,WAAC,AAAK,IAAD;AACO,MAA9B,AAAU,uBAAO,AAAK,IAAD;AACY,MAAjC,AAAU,uBAAQ,WAAC,AAAK,IAAD;AACO,MAA9B,AAAU,uBAAO,AAAK,IAAD;AACgB,MAArC,AAAS;AAC4B,MAArC,AAAS;AAC4B,MAArC,AAAS;AAC4B,MAArC,AAAS;IACX;;AAI+B,MAA7B,AAAS;AACoB,MAA7B,AAAS;AACoB,MAA7B,AAAS;AACoB,MAA7B,AAAS;IACX;;AAIM,mBAAS;AACb,UAAI,AAAU,MAAM,IAAE;AAC2G,QAA9H,gEAAoB,SAAU,gEAA2C,qDAAS,gDAAsB;;AAEnF,MAAxB,uBAAkB,MAAM;IAC1B;;+DArEoC,YAAgB;IATtC;IACT;IACS;IACT;IACS;IACT;IACS;IACT;AAE8D,0EAAuB,8BAAW,UAAU,EAAE,WAAW;AACrG,IAArB;AAC+C,kBAA/C,wBAAiB,AAAS,8BAAc;EAC1C;;;;;;;;;;;;;;;MAJ+B,6DAAgB;;;;;;;;;;;AAwFvC,gBAAc;AACU,oBAA9B,0BAAQ,AAAI,GAAD,iBAAe;AACmB,MAA7C,AAAK,sBAAiB,aAAO;AAKuL,MAJpN,wBAA2B,kEAAwB,2BAC7C,2DAAoC,iDAAY,cAC9B,8DAAW,AAAW,AAAW,uCAAqB,8BAAQ,AAAW,AAAS,iEAAc,AAAW,AAAW,uCAAqB,kCAAU,AAAW,AAAS,wCAAc,MAAM,qCAEtM,8DAAW,AAAW,AAAW,uCAAqB,8BAAQ,AAAW,AAAS,iEAAc,AAAW,AAAW,uCAAqB,kCAAU,AAAW,AAAS,wCAAc,MAAM;AAKhF,MAJ5H,wCAAiC,2BAC3B,wEAAoC,8DAAkB,cACpC,sDAAiB,kCAAO,AAAW,AAAW,uCAAqB,8BAAQ,AAAW,AAAS,sEAExG,sDAAiB,kCAAO,AAAW,AAAW,uCAAqB,8BAAQ,AAAW,AAAS;AACxG,oBAAU,uBAAoB,aAAO;AACa,MAAxD,AAAsB,oCAAQ,0BAAC,AAAgB;AACiC,MAAhF,AAAM,+BAAiB,SAAS,gDAAuC,UAAzB,AAAgB;AAClD,MAAZ,WAAM;IACR;;AAIO,uBAAmB,AAAQ,iBAAG;AAC7B,sBAAgC,AAAS;AAC/C,oBAAI,4BAAsB,eAAS,SAAS;AACK,QAA/C,AAAgB,AAAS,4CAAa,SAAS;AAC5B,QAAnB,gBAAU,SAAS;;AAErB,UAAI,UAAU;AACuC,QAAlD,AAAsB,+CAAmB;;AAEE,MAA9C,AAAgB,wCAAkB,MAAM;AACxC,qBAA4B;AAC1B,YAAI,UAAU;AAC2B,UAAvC,AAAsB;;;IAG5B;;AAIwC,MAAtC,AAAgB,AAAS;AACU,MAAnC,AAAsB;IACxB;;gEA/CqC,YAAgB;IAJ7B;IACE;IACnB;IACe;AAC8C,2EAAuB,6BAAU,UAAU,EAAE,WAAW;AACrG,IAArB;EACF;;;;;;;;;;;;AA8DQ,gBAAc;AACU,oBAA9B,0BAAQ,AAAI,GAAD,iBAAe;AACmB,MAA7C,AAAK,sBAAiB,aAAO;AAKuL,MAJpN,wBAA2B,kEAAwB,2BAC7C,2DAAoC,iDAAY,cAC9B,8DAAW,AAAW,AAAW,uCAAqB,8BAAQ,AAAW,AAAS,iEAAc,AAAW,AAAW,uCAAqB,kCAAU,AAAW,AAAS,wCAAc,MAAM,qCAEtM,8DAAW,AAAW,AAAW,uCAAqB,8BAAQ,AAAW,AAAS,iEAAc,AAAW,AAAW,uCAAqB,kCAAU,AAAW,AAAS,wCAAc,MAAM;AAKhF,MAJ5H,wCAAiC,2BAC3B,wEAAoC,8DAAkB,cACpC,sDAAiB,kCAAO,AAAW,AAAW,uCAAqB,8BAAQ,AAAW,AAAS,sEAExG,sDAAiB,kCAAO,AAAW,AAAW,uCAAqB,8BAAQ,AAAW,AAAS;AACxG,oBAAU,uBAAoB,aAAO;AACa,MAAxD,AAAsB,oCAAQ,0BAAC,AAAgB;AACiC,MAAhF,AAAM,+BAAiB,SAAS,gDAAuC,UAAzB,AAAgB;AAClD,MAAZ,WAAM;IACR;;AAIO,uBAAmB,AAAQ,iBAAG;AAC7B,sBAAgC,AAAM;AAC5C,oBAAI,4BAAsB,eAAS,SAAS;AACK,QAA/C,AAAgB,AAAS,4CAAa,SAAS;AAC5B,QAAnB,gBAAU,SAAS;;AAErB,UAAI,UAAU;AACuC,QAAlD,AAAsB,+CAAmB;;AAEE,MAA9C,AAAgB,wCAAkB,MAAM;AACxC,qBAA4B;AAC1B,YAAI,UAAU;AAC2B,UAAvC,AAAsB;;;IAG5B;;AAIwC,MAAtC,AAAgB,AAAS;AACU,MAAnC,AAAsB;IACxB;;gEA/CqC,YAAgB;IAJ7B;IACE;IACnB;IACe;AAC8C,2EAAuB,6BAAU,UAAU,EAAE,WAAW;AACrG,IAArB;EACF;;;;;;;;;;;;AA8DQ,gBAAc;AACU,oBAA9B,0BAAQ,AAAI,GAAD,iBAAe;AAC6B,MAAvD,AAAK,sBAAiB,aAAO;AAKuL,MAJpN,wBAA2B,kEAAwB,2BAC7C,2DAAoC,iDAAY,cAC9B,8DAAW,AAAW,AAAW,uCAAqB,8BAAQ,AAAW,AAAS,iEAAc,AAAW,AAAW,uCAAqB,kCAAU,AAAW,AAAS,wCAAc,MAAM,qCAEtM,8DAAW,AAAW,AAAW,uCAAqB,8BAAQ,AAAW,AAAS,iEAAc,AAAW,AAAW,uCAAqB,kCAAU,AAAW,AAAS,wCAAc,MAAM;AAKhF,MAJ5H,wCAAiC,2BAC3B,wEAAoC,8DAAkB,cACpC,sDAAiB,kCAAO,AAAW,AAAW,uCAAqB,8BAAQ,AAAW,AAAS,sEAExG,sDAAiB,kCAAO,AAAW,AAAW,uCAAqB,8BAAQ,AAAW,AAAS;AACxG,oBAAU,uBAAoB,aAAO;AACa,MAAxD,AAAsB,oCAAQ,0BAAC,AAAgB;AACiC,MAAhF,AAAM,+BAAiB,SAAS,gDAAuC,UAAzB,AAAgB;AAClD,MAAZ,WAAM;IACR;;AAIO,uBAAmB,AAAQ,iBAAG;AAC7B,sBAAgC,AAAM;AAC5C,oBAAI,4BAAsB,eAAS,SAAS;AACK,QAA/C,AAAgB,AAAS,4CAAa,SAAS;AAC5B,QAAnB,gBAAU,SAAS;;AAErB,UAAI,UAAU;AACuC,QAAlD,AAAsB,+CAAmB;;AAEE,MAA9C,AAAgB,wCAAkB,MAAM;AACxC,qBAA4B;AAC1B,YAAI,UAAU;AAC2B,UAAvC,AAAsB;;;IAG5B;;AAIwC,MAAtC,AAAgB,AAAS;AACU,MAAnC,AAAsB;IACxB;;gEA/CqC,YAAgB;IAJ7B;IACE;IACnB;IACe;AAC8C,2EAAuB,6BAAU,UAAU,EAAE,WAAW;AACrG,IAArB;EACF;;;;;;;;;;;;AA8DQ,gBAAc;AACU,oBAA9B,0BAAQ,AAAI,GAAD,iBAAe;AAC6B,MAAvD,AAAK,sBAAiB,aAAO;AAKuL,MAJpN,wBAA2B,kEAAwB,2BAC7C,2DAAoC,iDAAY,cAC9B,8DAAW,AAAW,AAAW,uCAAqB,8BAAQ,AAAW,AAAS,iEAAc,AAAW,AAAW,uCAAqB,kCAAU,AAAW,AAAS,wCAAc,MAAM,qCAEtM,8DAAW,AAAW,AAAW,uCAAqB,8BAAQ,AAAW,AAAS,iEAAc,AAAW,AAAW,uCAAqB,kCAAU,AAAW,AAAS,wCAAc,MAAM;AAKhF,MAJ5H,wCAAiC,2BAC3B,wEAAoC,8DAAkB,cACpC,sDAAiB,kCAAO,AAAW,AAAW,uCAAqB,8BAAQ,AAAW,AAAS,sEAExG,sDAAiB,kCAAO,AAAW,AAAW,uCAAqB,8BAAQ,AAAW,AAAS;AACxG,oBAAU,uBAAoB,aAAO;AACa,MAAxD,AAAsB,oCAAQ,0BAAC,AAAgB;AACiC,MAAhF,AAAM,+BAAiB,SAAS,gDAAuC,UAAzB,AAAgB;AAClD,MAAZ,WAAM;IACR;;AAIO,uBAAmB,AAAQ,iBAAG;AAC7B,sBAAgC,AAAO;AAC7C,oBAAI,4BAAsB,eAAS,SAAS;AACK,QAA/C,AAAgB,AAAS,4CAAa,SAAS;AAC5B,QAAnB,gBAAU,SAAS;;AAErB,UAAI,UAAU;AACuC,QAAlD,AAAsB,+CAAmB;;AAEE,MAA9C,AAAgB,wCAAkB,MAAM;AACxC,qBAA4B;AAC1B,YAAI,UAAU;AAC2B,UAAvC,AAAsB;;;IAG5B;;AAIwC,MAAtC,AAAgB,AAAS;AACU,MAAnC,AAAsB;IACxB;;gEA/CqC,YAAgB;IAJ7B;IACE;IACnB;IACe;AAC8C,2EAAuB,6BAAU,UAAU,EAAE,WAAW;AACrG,IAArB;EACF;;;;;;;;;;;;;;;;;AA6DE,UAAK,AAAY,sBAAG;AACc,QAA/B,qBAAuB;;AAE1B,YAAO;IACT;;AAI2C,MAAzC,qBAAc,qDAAmB,MAAM;AACZ,MAA3B,cAAS,AAAY;AACc,MAAnC,uBAAyB;AACgC,MAAzD,4BAA6B,qCAAc;AACW,MAAtD,AAAY,0BAAO,2BAAoB;AAC1B,MAAb,WAAM;AACN,YAAO,yCAAa,GAAG,MAAM,aAAQ;IACvC;wBAGoC,OAAW,WAAmB;AAChE,UAAK,AAAE,MAAG,SAAS;AACjB,YAAI,AAAU,KAAK,KAAW;AAC5B,gBAAO;;AAET,YAAI,AAAU,KAAK,KAAW;AAC5B,gBAAO;;;AAGX,YAAO,eAAc;IACvB;;AAIO,uBAAmB,AAAQ,iBAAG;AACnC,qBAA6B,+CAAmB,UAAU;AAC3B,QAA7B,AAAmB;;AAEM,MAA3B,AAAY;IACd;;AAIoC,MAAlC,AAAY;IACd;;oEA5CyC,YAAgB;IAJtC;IACD;IACI;IACP;AACyD,+EAAuB,yBAAM,UAAU,EAAE,WAAW;;EAAsC;;;;;;;;;;;;;;;;;;6FA5L1G,YAAgB;AACxE,UAAO,uDAAoB,UAAU,EAAE,WAAW;EACpD;6FAyD0D,YAAgB;AACxE,UAAO,uDAAoB,UAAU,EAAE,WAAW;EACpD;6FAyD0D,YAAgB;AACxE,UAAO,uDAAoB,UAAU,EAAE,WAAW;EACpD;6FAyD0D,YAAgB;AACxE,UAAO,uDAAoB,UAAU,EAAE,WAAW;EACpD;qGAwD+E,YAAgB;AAC7F,UAAO,2DAAwB,UAAU,EAAE,WAAW;EACxD;;AAIE,kBAAI;AACF;;AAEa,IAAf,qCAAW;AAEoD,IAA/D,4BAAyB,6CAAe;AACnB,IAArB;AACqB,IAArB;AACqB,IAArB;AACqB,IAArB;AACqB,IAArB;AACqB,IAArB;EACF;;;AAvTE,YAAO;IACT;;;;;MAvFoB,8CAAoB;;;MAoFM,iDAAuB;;;MAiPjD,kDAAwB;;;MA0DxC,kCAAQ;YAAG","file":"app_component.template.ddc.js"}');
  // Exports:
  return {
    app_component$46template: app_component$46template,
    src__menu_component$46template: menu_component$46template
  };
});

//# sourceMappingURL=app_component.template.ddc.js.map
