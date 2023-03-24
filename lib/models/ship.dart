import 'package:json_annotation/json_annotation.dart';

part '../generated/models/ship.freezed.dart';
part '../generated/models/ship.g.dart';

@freezed
class Ship with _$Ship {
  factory Ship({
  String name,
  String id,
  String designation,
  String tech_manufacturer,
  String system_id,
  String fleet_pts,
  String hitpoints,
  String armor_rating,
  String max_flux,
  String eight_six_five_four_percent,
  String flux_dissipation,
  String ordnance_points,
  String fighter_bays,
  String max_speed,
  String acceleration,
  String deceleration,
  String max_turn_rate,
  String turn_acceleration,
  String mass,
  String shield_type,
  String defense_id,
  String shield_arc,
  String shield_upkeep,
  String shield_efficiency,
  String phase_cost,
  String phase_upkeep,
  String min_crew,
  String max_crew,
  String cargo,
  String fuel,
  String fuel_ly,
  String range,
  String max_burn,
  String base_value,
  String cr_percent_day,
  String CR_to_deploy,
  String peak_CR_sec,
  String CR_loss_sec,
  String supplies_rec,
  String supplies_mo,
  String c_s,
  String c_f,
  String f_s,
  String f_f,
  String crew_s,
  String crew_f,
  String hints,
  String tags,
  String rarity,
  String breakProb,
  String minPieces,
  String maxPieces,
  String travel_drive,
  String number, }) = _Ship;


  /// Connect the generated function to the `fromJson`
  /// factory.
  factory Ship.fromJson(Map<String, dynamic> json) => _$ShipFromJson(json);

  /// Connect the generated function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ShipToJson(this);

  @override
  String toString() {
    return 'Ship{bounds: $bounds, center: $center, collisionRadius: $collisionRadius, engineSlots: $engineSlots, height: $height, width: $width, hullId: $hullId, hullName: $hullName, hullSize: $hullSize, shieldCenter: $shieldCenter, shieldRadius: $shieldRadius, spriteName: $spriteName, style: $style, viewOffset: $viewOffset, weaponSlots: $weaponSlots, builtInWeapons: $builtInWeapons, builtInMods: $builtInMods, coversColor: $coversColor, builtInWings: $builtInWings, moduleAnchor: $moduleAnchor}';
  }
}
