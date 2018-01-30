// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'material_percent_directive.dart';
export 'material_percent_directive.dart';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/material_input/material_input.dart';
import 'package:angular_components/material_input/material_input_error_keys.dart';
import 'package:intl/intl.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_components/material_input/material_input.template.dart' as _ref1;
import 'package:angular_components/material_input/material_input_error_keys.template.dart' as _ref2;
import 'package:angular_components/material_input/material_number_accessor.template.dart' as _ref3;

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
    MaterialPercentInputDirective,
    (MaterialInputComponent p0, HtmlElement p1) => new MaterialPercentInputDirective(p0, p1),
  );
  _ngRef.registerDependencies(
    MaterialPercentInputDirective,
    const [
      const [
        MaterialInputComponent,
      ],
      const [
        HtmlElement,
      ],
    ],
  );
}
