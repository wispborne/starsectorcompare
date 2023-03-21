import 'package:json_annotation/json_annotation.dart';
import 'package:wase/models/shipEngineSlot.dart';
import 'package:wase/models/shipWeaponSlot.dart';

part '../generated/models/ship.g.dart';

/// TStarfarerShip
@JsonSerializable()
class Ship {
  final String name;
  final String id;
  final String designation;
  final String tech_manufacturer;
  final String system_id;
  final String fleet_pts;
  final String hitpoints;
  final String armor_rating;
  final String max_flux;
  final String eight_six_five_four_percent;
  final String flux_dissipation;
  final String ordnance_points;
  final String fighter_bays;
  final String max_speed;
  final String acceleration;
  final String deceleration;
  final String max_turn_rate;
  final String turn_acceleration;
  final String mass;
  final String shield_type;
  final String defense_id;
  final String shield_arc;
  final String shield_upkeep;
  final String shield_efficiency;
  final String phase_cost;
  final String phase_upkeep;
  final String min_crew;
  final String max_crew;
  final String cargo;
  final String fuel;
  final String fuel_ly;
  final String range;
  final String max_burn;
  final String base_value;
  final String cr_percent_day;
  final String CR_to_deploy;
  final String peak_CR_sec;
  final String CR_loss_sec;
  final String supplies_rec;
  final String supplies_mo;
  final String c_s;
  final String c_f;
  final String f_s;
  final String f_f;
  final String crew_s;
  final String crew_f;
  final String hints;
  final String tags;
  final String rarity;
  final String breakProb;
  final String minPieces;
  final String maxPieces;
  final String travel_drive;
  final String number;

  const Ship(
      {this.bounds = const [],
      this.center,
      this.collisionRadius = 0,
      this.engineSlots,
      this.height = 0,
      this.width = 0,
      this.hullId = "",
      this.hullName = "",
      this.hullSize = "",
      this.shieldCenter = const [],
      this.shieldRadius = 0,
      this.spriteName = "",
      this.style = "",
      this.viewOffset = 0,
      this.weaponSlots = const [],
      this.builtInWeapons = const {},
      this.builtInMods = const [],
      this.coversColor = "",
      this.builtInWings = const [],
      this.moduleAnchor = const []});

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
