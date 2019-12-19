define(['dart_sdk'], function(dart_sdk) {
  'use strict';
  const core = dart_sdk.core;
  const dart = dart_sdk.dart;
  const dartx = dart_sdk.dartx;
  const app_component = Object.create(dart.library);
  const CT = Object.create(null);
  const AppComponent_title = dart.privateName(app_component, "AppComponent.title");
  app_component.AppComponent = class AppComponent extends core.Object {
    get title() {
      return this[title];
    }
    set title(value) {
      super.title = value;
    }
  };
  (app_component.AppComponent.new = function() {
    this[title] = "Todos";
    ;
  }).prototype = app_component.AppComponent.prototype;
  dart.addTypeTests(app_component.AppComponent);
  const title = AppComponent_title;
  dart.setLibraryUri(app_component.AppComponent, "package:todo_fe/app_component.dart");
  dart.setFieldSignature(app_component.AppComponent, () => ({
    __proto__: dart.getFields(app_component.AppComponent.__proto__),
    title: dart.finalFieldType(core.String)
  }));
  dart.trackLibraries("packages/todo_fe/app_component", {
    "package:todo_fe/app_component.dart": app_component
  }, {
  }, '{"version":3,"sourceRoot":"","sources":["app_component.dart"],"names":[],"mappings":";;;;;;;;;IAsCQ;;;;;;;;kBAAQ;;EAChB","file":"app_component.ddc.js"}');
  // Exports:
  return {
    app_component: app_component
  };
});

//# sourceMappingURL=app_component.ddc.js.map
