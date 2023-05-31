import 'package:petitparser/core.dart';
import 'package:petitparser/debug.dart';

import 'definition.dart';
import 'element.dart';

/// This package contains a complete implementation of [JSON](https://json.org/).

/// Internal JSON parser.
final _jsonParser = JsonGrammar().build<Token<JsonElement>>();

/// Converts the given JSON-string [input] to its corresponding object.
///
/// For example:
///
///     final result = parseJson('{"a": 1, "b": [2, 3.4], "c": false}');
///     print(result.value);  // {a: 1, b: [2, 3.4], c: false}
Object? parseRjson(String input, {bool withTrace = false}) {
  if (withTrace) {
    return trace(_jsonParser).parse(input).value.value.toJson();
  } else {
    return _jsonParser.parse(input).value.value.toJson();
  }
}
