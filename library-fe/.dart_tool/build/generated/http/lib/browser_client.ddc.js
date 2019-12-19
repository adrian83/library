define(['dart_sdk'], function(dart_sdk) {
  'use strict';
  const core = dart_sdk.core;
  const dart = dart_sdk.dart;
  const dartx = dart_sdk.dartx;
  const browser_client = Object.create(dart.library);
  const CT = Object.create(null);
  dart.trackLibraries("packages/http/browser_client", {
    "package:http/browser_client.dart": browser_client
  }, {
  }, '{"version":3,"sourceRoot":"","sources":[],"names":[],"mappings":"","file":"browser_client.ddc.js"}');
  // Exports:
  return {
    browser_client: browser_client
  };
});

//# sourceMappingURL=browser_client.ddc.js.map
