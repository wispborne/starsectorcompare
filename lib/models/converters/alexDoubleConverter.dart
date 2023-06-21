import 'package:fimber/fimber.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// In some .wpn files, Alex added a `;` instead of a `,` in an obj declaration, causing the parser to treat the double as a string.
class AlexDoubleConverter implements JsonConverter<double, Object> {
  const AlexDoubleConverter();

  @override
  double fromJson(Object json) {
    if (json is String) {
      var result = double.parse(json);
      Fimber.d("Parsed string '$json' to $result.");
      return result;
    } else if (json is int) {
      var result = json.toDouble();
      Fimber.d("Parsed int '$json' to $result.");
      return result;
    }

    return json as double;
  }

  @override
  Object toJson(double object) => object;
}
