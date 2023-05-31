import 'package:fimber/fimber.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class BoolConverter implements JsonConverter<bool, Object> {
  const BoolConverter();

  @override
  bool fromJson(Object json) {
    if (json is String) {
      var bool = json.toLowerCase() == "true";
      Fimber.d("Parsed string '$json' to $bool.");
      return bool;
    }

    return json as bool;
  }

  @override
  Object toJson(bool object) => object;
}
