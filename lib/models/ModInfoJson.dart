import 'package:json_annotation/json_annotation.dart';

part '../generated/models/ModInfoJson.g.dart';

@JsonSerializable()
class ModInfoJson {
  final String id;
  final String name;

  const ModInfoJson({this.id = "", this.name = ""});

  /// Connect the generated function to the `fromJson`
  /// factory.
  factory ModInfoJson.fromJson(Map<String, dynamic> json) => _$ModInfoJsonFromJson(json);
}