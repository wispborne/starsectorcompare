import 'package:freezed_annotation/freezed_annotation.dart';

/// Handles maps that are defined in json either as `[ { key: value } ]` or `{ key: value }`.
class AlexMapConverter implements JsonConverter<Map<String, dynamic>, Object> {
  const AlexMapConverter();

  @override
  Map<String, dynamic> fromJson(Object json) {
    if (json is List<dynamic>) {
      // [
      // 		# decor add-ons
      // 		{"WS 007": "module_decor_midline1_Standard"},
      // 		{"WS 009": "module_decor_midline1_Standard"},
      // 	],
      // Some "maps" are actually Lists of Maps
      // so leave it as a dynamic but talk to it like it's a single-entry map.
      return json.isNotEmpty ? Map.fromEntries(json.map((e) => e.entries.first)) : {};
    }

    return json as Map<String, dynamic>;
  }

  @override
  Object toJson(Map<String, dynamic> object) => object;
}
