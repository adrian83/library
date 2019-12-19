import 'dart:async';

import 'package:build/build.dart';

Builder constantBuilder(BuilderOptions options) => ConstantBuilder(options.config);

class ConstantBuilder implements Builder {
  static String _constantsFile = 'generated_consts.dart';

  ConstantBuilder(this.values);

  final Map<String, dynamic> values;

  @override
  Map<String, List<String>> get buildExtensions => {
        r'$lib$': [ConstantBuilder._constantsFile]
      };

  @override
  Future<void> build(BuildStep buildStep) => buildStep.writeAsString(
      AssetId(
          buildStep.inputId.package, 'lib/${ConstantBuilder._constantsFile}'),
      Future.value(values.entries
          .map((e) => _toDartConstantDeclaration(e.key, e.value))
          .join()));

  String _toDartConstantDeclaration(String name, dynamic value) {
    if (value is String) {
      return 'const $name = \"$value\";';
    }
    return 'const $name = $value;';
  }
}