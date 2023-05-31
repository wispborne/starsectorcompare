import 'package:json_annotation/json_annotation.dart';

part '../generated/models/shipWeaponSlot.g.dart';

/// TStarfarerShipWeapon
@JsonSerializable()
class ShipWeaponSlot {
  final double angle;
  final double arc;
  final String id;
  final List<double> locations;
  final List<double> position;
  final String mount;
  final String size;
  final String type;
  final double? renderOrderMod;

  ShipWeaponSlot(
      {this.angle = 0,
        this.arc = 0,
        this.id = "",
        this.locations = const [],
        this.position = const [],
        this.mount = "",
        this.size = "",
        this.type = "",
        this.renderOrderMod});

  /// Connect the generated function to the `fromJson`
  /// factory.
  factory ShipWeaponSlot.fromJson(Map<String, dynamic> json) => _$ShipWeaponSlotFromJson(json);

  /// Connect the generated function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ShipWeaponSlotToJson(this);

  @override
  String toString() {
    return 'ShipWeaponSlot{angle: $angle, arc: $arc, id: $id, locations: $locations, position: $position, mount: $mount, size: $size, type: $type, renderOrderMod: $renderOrderMod}';
  }
}