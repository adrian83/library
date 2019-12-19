// ignore_for_file: directives_ordering

import 'package:build_runner_core/build_runner_core.dart' as _i1;
import 'package:angular/src/build.dart' as _i2;
import 'package:build_test/builder.dart' as _i3;
import 'package:build_config/build_config.dart' as _i4;
import 'package:built_value_generator/builder.dart' as _i5;
import 'package:pageloader/builder.dart' as _i6;
import 'package:source_gen/builder.dart' as _i7;
import 'package:todo_fe/builder.dart' as _i8;
import 'package:build_modules/builders.dart' as _i9;
import 'package:build_web_compilers/builders.dart' as _i10;
import 'package:build/build.dart' as _i11;
import 'dart:isolate' as _i12;
import 'package:build_runner/build_runner.dart' as _i13;
import 'dart:io' as _i14;

final _builders = <_i1.BuilderApplication>[
  _i1.apply(
      'angular:angular',
      [_i2.templatePlaceholder, _i2.templateCompiler, _i2.stylesheetCompiler],
      _i1.toDependentsOf('angular'),
      isOptional: true,
      hideOutput: true,
      appliesBuilders: [
        'angular:placeholder_cleanup',
        'angular:component_source_cleanup'
      ]),
  _i1.apply(
      'build_test:test_bootstrap',
      [_i3.debugIndexBuilder, _i3.debugTestBuilder, _i3.testBootstrapBuilder],
      _i1.toRoot(),
      hideOutput: true,
      defaultGenerateFor: const _i4.InputSet(include: ['test/**'])),
  _i1.apply('built_value_generator:built_value', [_i5.builtValue],
      _i1.toDependentsOf('built_value_generator'),
      hideOutput: true, appliesBuilders: ['source_gen:combining_builder']),
  _i1.apply('pageloader:pageloader', [_i6.pageloaderBuilder],
      _i1.toDependentsOf('pageloader'),
      hideOutput: true,
      defaultGenerateFor: const _i4.InputSet(include: ['test/**']),
      appliesBuilders: ['source_gen:combining_builder']),
  _i1.apply('source_gen:combining_builder', [_i7.combiningBuilder],
      _i1.toNoneByDefault(),
      hideOutput: false, appliesBuilders: ['source_gen:part_cleanup']),
  _i1.apply(
      'todo_fe:constant_builder', [_i8.constantBuilder], _i1.toNoneByDefault(),
      hideOutput: false),
  _i1.apply('build_modules:module_library', [_i9.moduleLibraryBuilder],
      _i1.toAllPackages(),
      isOptional: true,
      hideOutput: true,
      appliesBuilders: ['build_modules:module_cleanup']),
  _i1.apply(
      'build_web_compilers:dart2js_modules',
      [
        _i10.dart2jsMetaModuleBuilder,
        _i10.dart2jsMetaModuleCleanBuilder,
        _i10.dart2jsModuleBuilder
      ],
      _i1.toNoneByDefault(),
      isOptional: true,
      hideOutput: true,
      appliesBuilders: ['build_modules:module_cleanup']),
  _i1.apply(
      'build_web_compilers:ddc_modules',
      [
        _i10.ddcMetaModuleBuilder,
        _i10.ddcMetaModuleCleanBuilder,
        _i10.ddcModuleBuilder
      ],
      _i1.toNoneByDefault(),
      isOptional: true,
      hideOutput: true,
      appliesBuilders: ['build_modules:module_cleanup']),
  _i1.apply('build_web_compilers:ddc', [_i10.ddcKernelBuilder, _i10.ddcBuilder],
      _i1.toAllPackages(),
      isOptional: true,
      hideOutput: true,
      appliesBuilders: [
        'build_web_compilers:ddc_modules',
        'build_web_compilers:dart2js_modules',
        'build_web_compilers:dart_source_cleanup'
      ]),
  _i1.apply('build_web_compilers:sdk_js_copy', [_i10.sdkJsCopyBuilder],
      _i1.toNoneByDefault(),
      hideOutput: true,
      appliesBuilders: ['build_web_compilers:sdk_js_cleanup']),
  _i1.apply('build_web_compilers:entrypoint', [_i10.webEntrypointBuilder],
      _i1.toRoot(),
      hideOutput: true,
      defaultGenerateFor: const _i4.InputSet(include: [
        'web/**',
        'test/**.dart.browser_test.dart',
        'example/**',
        'benchmark/**'
      ], exclude: [
        'test/**.node_test.dart',
        'test/**.vm_test.dart'
      ]),
      defaultOptions: _i11.BuilderOptions({
        'dart2js_args': ['--minify']
      }),
      defaultReleaseOptions: _i11.BuilderOptions({'compiler': 'dart2js'}),
      appliesBuilders: ['build_web_compilers:dart2js_archive_extractor']),
  _i1.applyPostProcess('source_gen:part_cleanup', _i7.partCleanup,
      defaultGenerateFor: const _i4.InputSet()),
  _i1.applyPostProcess('angular:placeholder_cleanup', _i2.placeholderCleanup,
      defaultGenerateFor: const _i4.InputSet()),
  _i1.applyPostProcess(
      'angular:component_source_cleanup', _i2.componentSourceCleanup,
      defaultReleaseOptions: _i11.BuilderOptions({'enabled': true}),
      defaultGenerateFor: const _i4.InputSet(include: ['lib/**'])),
  _i1.applyPostProcess('build_modules:module_cleanup', _i9.moduleCleanup,
      defaultGenerateFor: const _i4.InputSet()),
  _i1.applyPostProcess('build_web_compilers:dart2js_archive_extractor',
      _i10.dart2jsArchiveExtractor,
      defaultReleaseOptions: _i11.BuilderOptions({'filter_outputs': true}),
      defaultGenerateFor: const _i4.InputSet()),
  _i1.applyPostProcess(
      'build_web_compilers:dart_source_cleanup', _i10.dartSourceCleanup,
      defaultReleaseOptions: _i11.BuilderOptions({'enabled': true}),
      defaultGenerateFor: const _i4.InputSet()),
  _i1.applyPostProcess(
      'build_web_compilers:sdk_js_cleanup', _i10.sdkJsCleanupBuilder,
      defaultReleaseOptions: _i11.BuilderOptions({'enabled': true}),
      defaultGenerateFor: const _i4.InputSet())
];
main(List<String> args, [_i12.SendPort sendPort]) async {
  var result = await _i13.run(args, _builders);
  sendPort?.send(result);
  _i14.exitCode = result;
}
