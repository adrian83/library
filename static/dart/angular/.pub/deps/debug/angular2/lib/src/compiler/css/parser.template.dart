// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
library angular2.src.compiler.css.parser.template.dart;

import 'parser.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/compiler/css/lexer.dart' show CssLexerMode, CssToken, CssTokenType, CssScanner, generateErrorMessage, $AT, $EOF, $RBRACE, $LBRACE, $LBRACKET, $RBRACKET, $LPAREN, $RPAREN, $COMMA, $COLON, $SEMICOLON, isNewline;
import 'package:angular2/src/compiler/parse_util.dart' show ParseSourceSpan, ParseSourceFile, ParseLocation, ParseError;
import 'package:angular2/src/facade/lang.dart' show bitWiseOr, bitWiseAnd, isPresent;
import 'package:angular2/src/compiler/css/lexer.template.dart' as i0;
import 'package:angular2/src/compiler/parse_util.template.dart' as i1;
import 'package:angular2/src/facade/lang.template.dart' as i2;
export 'parser.dart';
export 'package:angular2/src/compiler/css/lexer.dart' show CssToken;

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
