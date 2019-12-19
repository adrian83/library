define(['dart_sdk'], function(dart_sdk) {
  'use strict';
  const core = dart_sdk.core;
  const dart = dart_sdk.dart;
  const dartx = dart_sdk.dartx;
  const generated_consts = Object.create(dart.library);
  const CT = Object.create(null);
  dart.defineLazy(generated_consts, {
    /*generated_consts.backendHost*/get backendHost() {
      return "http://localhost:9090";
    }
  });
  dart.trackLibraries("packages/todo_fe/generated_consts", {
    "package:todo_fe/generated_consts.dart": generated_consts
  }, {
  }, '{"version":3,"sourceRoot":"","sources":["generated_consts.dart"],"names":[],"mappings":";;;;;;;;MAAM,4BAAW","file":"generated_consts.ddc.js"}');
  // Exports:
  return {
    generated_consts: generated_consts
  };
});

//# sourceMappingURL=generated_consts.ddc.js.map
