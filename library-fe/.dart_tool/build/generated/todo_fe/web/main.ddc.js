define(['dart_sdk', 'packages/angular/src/core/change_detection/change_detection', 'packages/http/src/base_client', 'packages/angular_router/src/directives/router_outlet_directive', 'packages/angular/angular.template', 'packages/angular_router/angular_router.template', 'packages/todo_fe/app_component.template', 'packages/angular/src/bootstrap/modules', 'packages/todo_fe/app_component'], function(dart_sdk, packages__angular__src__core__change_detection__change_detection, packages__http__src__base_client, packages__angular_router__src__directives__router_outlet_directive, packages__angular__angular$46template, packages__angular_router__angular_router$46template, packages__todo_fe__app_component$46template, packages__angular__src__bootstrap__modules, packages__todo_fe__app_component) {
  'use strict';
  const core = dart_sdk.core;
  const dart = dart_sdk.dart;
  const dartx = dart_sdk.dartx;
  const hierarchical = packages__angular__src__core__change_detection__change_detection.src__di__injector__hierarchical;
  const opaque_token = packages__angular__src__core__change_detection__change_detection.src__core__di__opaque_token;
  const injector = packages__angular__src__core__change_detection__change_detection.src__di__injector__injector;
  const browser_client = packages__http__src__base_client.src__browser_client;
  const client = packages__http__src__base_client.src__client;
  const router_impl = packages__angular_router__src__directives__router_outlet_directive.src__router__router_impl;
  const location = packages__angular_router__src__directives__router_outlet_directive.src__location__location;
  const router_hook = packages__angular_router__src__directives__router_outlet_directive.src__router_hook;
  const location_strategy = packages__angular_router__src__directives__router_outlet_directive.src__location__location_strategy;
  const browser_platform_location = packages__angular_router__src__directives__router_outlet_directive.src__location__browser_platform_location;
  const hash_location_strategy = packages__angular_router__src__directives__router_outlet_directive.src__location__hash_location_strategy;
  const platform_location = packages__angular_router__src__directives__router_outlet_directive.src__location__platform_location;
  const router = packages__angular_router__src__directives__router_outlet_directive.src__router__router;
  const angular$46template = packages__angular__angular$46template.angular$46template;
  const angular_router$46template = packages__angular_router__angular_router$46template.angular_router$46template;
  const app_component$46template = packages__todo_fe__app_component$46template.app_component$46template;
  const run = packages__angular__src__bootstrap__modules.src__bootstrap__run;
  const app_component = packages__todo_fe__app_component.app_component;
  const main$46template = Object.create(dart.library);
  const main = Object.create(dart.library);
  let OpaqueTokenOfString = () => (OpaqueTokenOfString = dart.constFn(opaque_token.OpaqueToken$(core.String)))();
  let InjectorToInjector = () => (InjectorToInjector = dart.constFn(dart.fnType(injector.Injector, [], [injector.Injector])))();
  const CT = Object.create(null);
  dart.defineLazy(CT, {
    get C0() {
      return C0 = dart.const({
        __proto__: OpaqueTokenOfString().prototype,
        [OpaqueToken__uniqueName]: "appBaseHref"
      });
    },
    get C1() {
      return C1 = dart.const({
        __proto__: core.Object.prototype
      });
    },
    get C2() {
      return C2 = dart.fn(main$46template.injector$Injector, InjectorToInjector());
    }
  });
  const _field0 = dart.privateName(main$46template, "_field0");
  const _field1 = dart.privateName(main$46template, "_field1");
  const _field2 = dart.privateName(main$46template, "_field2");
  const _field3 = dart.privateName(main$46template, "_field3");
  const _field4 = dart.privateName(main$46template, "_field4");
  const _getBrowserClient$0 = dart.privateName(main$46template, "_getBrowserClient$0");
  const _getRouterImpl$1 = dart.privateName(main$46template, "_getRouterImpl$1");
  const _getLocation$2 = dart.privateName(main$46template, "_getLocation$2");
  const _getBrowserPlatformLocation$3 = dart.privateName(main$46template, "_getBrowserPlatformLocation$3");
  const OpaqueToken__uniqueName = dart.privateName(opaque_token, "OpaqueToken._uniqueName");
  let C0;
  const _getHashLocationStrategy$4 = dart.privateName(main$46template, "_getHashLocationStrategy$4");
  const _getInjector$5 = dart.privateName(main$46template, "_getInjector$5");
  let C1;
  main$46template._Injector$injector = class _Injector$36injector extends hierarchical.HierarchicalInjector {
    [_getBrowserClient$0]() {
      let t0;
      t0 = this[_field0];
      return t0 == null ? this[_field0] = new browser_client.BrowserClient.new() : t0;
    }
    [_getRouterImpl$1]() {
      let t0;
      t0 = this[_field1];
      return t0 == null ? this[_field1] = new router_impl.RouterImpl.new(location.Location._check(this.get(dart.wrapType(location.Location))), router_hook.RouterHook._check(this.provideUntyped(dart.wrapType(router_hook.RouterHook), null))) : t0;
    }
    [_getLocation$2]() {
      let t0;
      t0 = this[_field2];
      return t0 == null ? this[_field2] = new location.Location.new(location_strategy.LocationStrategy._check(this.get(dart.wrapType(location_strategy.LocationStrategy)))) : t0;
    }
    [_getBrowserPlatformLocation$3]() {
      let t0;
      t0 = this[_field3];
      return t0 == null ? this[_field3] = new browser_platform_location.BrowserPlatformLocation.new() : t0;
    }
    [_getHashLocationStrategy$4]() {
      let t0;
      t0 = this[_field4];
      return t0 == null ? this[_field4] = new hash_location_strategy.HashLocationStrategy.new(platform_location.PlatformLocation._check(this.get(dart.wrapType(platform_location.PlatformLocation))), core.String._check(this.provideUntyped(C0 || CT.C0, null))) : t0;
    }
    [_getInjector$5]() {
      return this;
    }
    injectFromSelfOptional(token, orElse) {
      if (orElse === void 0) orElse = C1 || CT.C1;
      if (token === dart.wrapType(client.Client)) {
        return this[_getBrowserClient$0]();
      }
      if (token === dart.wrapType(router.Router)) {
        return this[_getRouterImpl$1]();
      }
      if (token === dart.wrapType(location.Location)) {
        return this[_getLocation$2]();
      }
      if (token === dart.wrapType(platform_location.PlatformLocation)) {
        return this[_getBrowserPlatformLocation$3]();
      }
      if (token === dart.wrapType(location_strategy.LocationStrategy)) {
        return this[_getHashLocationStrategy$4]();
      }
      if (token === dart.wrapType(injector.Injector)) {
        return this[_getInjector$5]();
      }
      return orElse;
    }
  };
  (main$46template._Injector$injector.__ = function(parent) {
    if (parent === void 0) parent = null;
    this[_field0] = null;
    this[_field1] = null;
    this[_field2] = null;
    this[_field3] = null;
    this[_field4] = null;
    main$46template._Injector$injector.__proto__.new.call(this, hierarchical.HierarchicalInjector._check(parent));
    ;
  }).prototype = main$46template._Injector$injector.prototype;
  dart.addTypeTests(main$46template._Injector$injector);
  dart.setMethodSignature(main$46template._Injector$injector, () => ({
    __proto__: dart.getMethods(main$46template._Injector$injector.__proto__),
    [_getBrowserClient$0]: dart.fnType(browser_client.BrowserClient, []),
    [_getRouterImpl$1]: dart.fnType(router_impl.RouterImpl, []),
    [_getLocation$2]: dart.fnType(location.Location, []),
    [_getBrowserPlatformLocation$3]: dart.fnType(browser_platform_location.BrowserPlatformLocation, []),
    [_getHashLocationStrategy$4]: dart.fnType(hash_location_strategy.HashLocationStrategy, []),
    [_getInjector$5]: dart.fnType(injector.Injector, []),
    injectFromSelfOptional: dart.fnType(core.Object, [core.Object], [core.Object])
  }));
  dart.setLibraryUri(main$46template._Injector$injector, "org-dartlang-app:///web/main.template.dart");
  dart.setFieldSignature(main$46template._Injector$injector, () => ({
    __proto__: dart.getFields(main$46template._Injector$injector.__proto__),
    [_field0]: dart.fieldType(browser_client.BrowserClient),
    [_field1]: dart.fieldType(router_impl.RouterImpl),
    [_field2]: dart.fieldType(location.Location),
    [_field3]: dart.fieldType(browser_platform_location.BrowserPlatformLocation),
    [_field4]: dart.fieldType(hash_location_strategy.HashLocationStrategy)
  }));
  main$46template.injector$Injector = function injector$36Injector(parent) {
    if (parent === void 0) parent = null;
    return new main$46template._Injector$injector.__(parent);
  };
  main$46template.initReflector = function initReflector() {
    if (dart.test(main$46template._visited)) {
      return;
    }
    main$46template._visited = true;
    main$46template.initReflector();
    angular$46template.initReflector();
    angular_router$46template.initReflector();
    app_component$46template.initReflector();
  };
  dart.defineLazy(main$46template, {
    /*main$46template._visited*/get _visited() {
      return false;
    },
    set _visited(_) {}
  });
  main.main = function main$() {
    run.runApp(app_component.AppComponent, app_component$46template.AppComponentNgFactory, {createInjector: main.injector});
  };
  let C2;
  dart.defineLazy(main, {
    /*main.injector*/get injector() {
      return C2 || CT.C2;
    }
  });
  main$46template.main = main.main;
  dart.trackLibraries("web/main", {
    "org-dartlang-app:///web/main.template.dart": main$46template,
    "org-dartlang-app:///web/main.dart": main
  }, {
  }, '{"version":3,"sourceRoot":"","sources":["main.template.dart","main.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;AAuC6C;mBAAQ,OAAR,gBAAgB;IAAe;;;AACrC;mBAAQ,OAAR,gBAAgB,wDAAW,AAAK,SAAQ,kEAAW,oBAAmB,uCAAY;IAAM;;;AAC5F;mBAAQ,OAAR,gBAAgB,oEAAS,AAAK,SAAQ;IAAkB;;;AAC1B;mBAAQ,OAAR,gBAAgB;IAAyB;;;AAC/C;mBAAQ,OAAR,gBAAgB,8FAAqB,AAAK,SAAS,wEAAmB,iCAA8D;IAAM;;AAClK;IAAI;2BAEA,OAAe;;AAClD,UAAI,AAAU,KAAK,KAAO;AACxB,cAAO;;AAET,UAAI,AAAU,KAAK,KAAO;AACxB,cAAO;;AAET,UAAI,AAAU,KAAK,KAAM;AACvB,cAAO;;AAET,UAAI,AAAU,KAAK,KAAO;AACxB,cAAO;;AAET,UAAI,AAAU,KAAK,KAAM;AACvB,cAAO;;AAET,UAAI,AAAU,KAAK,KAAM;AACvB,cAAO;;AAET,YAAO,OAAM;IACf;;oDAvCmC;;IAEjB;IAEH;IAEF;IAEe;IAEH;AAVqB,yGAAM,MAAM;;EAAC;;;;;;;;;;;;;;;;;;;;;mEAHhB;;AAAY,UAAmB,2CAAE,MAAM;EAAC;;AA+CnF,kBAAI;AACF;;AAEa,IAAf,2BAAW;AAEU,IAArB;AACqB,IAArB;AACqB,IAArB;AACqB,IAArB;EACF;;MAXI,wBAAQ;YAAG;;;;;ACjD6C,IAA1D,uCAAU,iEAAuC;EACnD;;;MAJsB,aAAQ","file":"main.ddc.js"}');
  // Exports:
  return {
    web__main$46template: main$46template,
    web__main: main
  };
});

//# sourceMappingURL=main.ddc.js.map
