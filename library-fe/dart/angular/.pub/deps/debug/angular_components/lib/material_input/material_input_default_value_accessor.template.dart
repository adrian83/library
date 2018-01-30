// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_input_default_value_accessor.dart';
export 'material_input_default_value_accessor.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/utils/disposer/disposer.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:meta/meta.dart';
import 'base_material_input.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'base_material_input.template.dart' as _ref0;
import 'package:angular/angular.template.dart' as _ref1;
import 'package:angular_components/utils/disposer/disposer.template.dart' as _ref2;
import 'package:angular_forms/angular_forms.template.dart' as _ref3;

var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ngRef.registerFactory(
    MaterialInputDefaultValueAccessor,
    (BaseMaterialInput p0, NgControl p1) => new MaterialInputDefaultValueAccessor(p0, p1),
  );
  _ngRef.registerDependencies(
    MaterialInputDefaultValueAccessor,
    const [
      const [
        BaseMaterialInput,
      ],
      const [
        NgControl,
        const _ngRef.Optional(),
        const _ngRef.Self(),
      ],
    ],
  );

  _ngRef.registerFactory(
    MaterialInputBlurValueAccessor,
    (BaseMaterialInput p0, NgControl p1) => new MaterialInputBlurValueAccessor(p0, p1),
  );
  _ngRef.registerDependencies(
    MaterialInputBlurValueAccessor,
    const [
      const [
        BaseMaterialInput,
      ],
      const [
        NgControl,
        const _ngRef.Optional(),
        const _ngRef.Self(),
      ],
    ],
  );

  _ngRef.registerFactory(
    MaterialInputChangeValueAccessor,
    (BaseMaterialInput p0, NgControl p1) => new MaterialInputChangeValueAccessor(p0, p1),
  );
  _ngRef.registerDependencies(
    MaterialInputChangeValueAccessor,
    const [
      const [
        BaseMaterialInput,
      ],
      const [
        NgControl,
        const _ngRef.Optional(),
        const _ngRef.Self(),
      ],
    ],
  );
}
