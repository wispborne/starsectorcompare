import 'package:dart_extensions_methods/dart_extension_methods.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/models/ship.freezed.dart';

@freezed
class Ship with _$Ship {
  factory Ship({
    @Default("") String? name,
    @Default("") String id,
    @Default("") String? designation,
    @Default("") String? tech_manufacturer,
    @Default("") String? system_id,
    @Default("") String? fleet_pts,
    @Default("") String? hitpoints,
    @Default("") String? armor_rating,
    @Default("") String? max_flux,
    @Default("") String? eight_six_five_four_percent,
    @Default("") String? flux_dissipation,
    @Default("") String? ordnance_points,
    @Default("") String? fighter_bays,
    @Default("") String? max_speed,
    @Default("") String? acceleration,
    @Default("") String? deceleration,
    @Default("") String? max_turn_rate,
    @Default("") String? turn_acceleration,
    @Default("") String? mass,
    @Default("") String? shield_type,
    @Default("") String? defense_id,
    @Default("") String? shield_arc,
    @Default("") String? shield_upkeep,
    @Default("") String? shield_efficiency,
    @Default("") String? phase_cost,
    @Default("") String? phase_upkeep,
    @Default("") String? min_crew,
    @Default("") String? max_crew,
    @Default("") String? cargo,
    @Default("") String? fuel,
    @Default("") String? fuel_ly,
    @Default("") String? range,
    @Default("") String? max_burn,
    @Default("") String? base_value,
    @Default("") String? cr_percent_day,
    @Default("") String? CR_to_deploy,
    @Default("") String? peak_CR_sec,
    @Default("") String? CR_loss_sec,
    @Default("") String? supplies_rec,
    @Default("") String? supplies_mo,
    @Default("") String? c_per_s,
    @Default("") String? c_per_f,
    @Default("") String? f_per_s,
    @Default("") String? f_per_f,
    @Default("") String? crew_per_s,
    @Default("") String? crew_per_f,
    @Default("") String? hints,
    @Default("") String? tags,
    @Default("") String? rarity,
    @Default("") String? breakProb,
    @Default("") String? minPieces,
    @Default("") String? maxPieces,
    @Default("") String? travel_drive,
    @Default("") String? number,
  }) = _Ship;

  /// Connect the generated function to the `fromJson`
  /// factory.
// factory Ship.fromJson(Map<String, dynamic> json) => _$ShipFromJson(json);

  /// Connect the generated function to the `toJson` method.
// Map<String, dynamic> toJson() => _$ShipToJson(this);

  static List<Ship> fromCsv(List<List<dynamic>> csvData) {
    var ships = <Ship>[];
    var columnNames = csvData[0].map((e) => e.toLowerCase()).toList();
    for (var row in csvData.sublist(1)) {
      var ship = Ship();
      for (var colIndex = 0; colIndex < row.length; colIndex++) {
        var columnName = columnNames[colIndex];
        var value = row[colIndex];
        switch (columnName) {
          case "name":
            ship = ship.copyWith(name: value);
            break;
          case "id":
            ship = ship.copyWith(id: value);
            break;
          case "designation":
            ship = ship.copyWith(designation: value);
            break;
          case "tech/manufacturer":
            ship = ship.copyWith(tech_manufacturer: value);
            break;
          case "system id":
            ship = ship.copyWith(system_id: value);
            break;
          case "fleet pts":
            ship = ship.copyWith(fleet_pts: value);
            break;
          case "hitpoints":
            ship = ship.copyWith(hitpoints: value);
            break;
          case "armor rating":
            ship = ship.copyWith(armor_rating: value);
            break;
          case "max flux":
            ship = ship.copyWith(max_flux: value);
            break;
          case "8/6/5/4%":
            ship = ship.copyWith(eight_six_five_four_percent: value);
            break;
          case "flux dissipation":
            ship = ship.copyWith(flux_dissipation: value);
            break;
          case "ordnance points":
            ship = ship.copyWith(ordnance_points: value);
            break;
          case "fighter bays":
            ship = ship.copyWith(fighter_bays: value);
            break;
          case "max speed":
            ship = ship.copyWith(max_speed: value);
            break;
          case "acceleration":
            ship = ship.copyWith(acceleration: value);
            break;
          case "deceleration":
            ship = ship.copyWith(deceleration: value);
            break;
          case "max turn rate":
            ship = ship.copyWith(max_turn_rate: value);
            break;
          case "turn acceleration":
            ship = ship.copyWith(turn_acceleration: value);
            break;
          case "mass":
            ship = ship.copyWith(mass: value);
            break;
          case "shield type":
            ship = ship.copyWith(shield_type: value);
            break;
          case "defense id":
            ship = ship.copyWith(defense_id: value);
            break;
          case "shield arc":
            ship = ship.copyWith(shield_arc: value);
            break;
          case "shield upkeep":
            ship = ship.copyWith(shield_upkeep: value);
            break;
          case "shield efficiency":
            ship = ship.copyWith(shield_efficiency: value);
            break;
          case "phase cost":
            ship = ship.copyWith(phase_cost: value);
            break;
          case "phase upkeep":
            ship = ship.copyWith(phase_upkeep: value);
            break;
          case "min crew":
            ship = ship.copyWith(min_crew: value);
            break;
          case "max crew":
            ship = ship.copyWith(max_crew: value);
            break;
          case "cargo":
            ship = ship.copyWith(cargo: value);
            break;
          case "fuel":
            ship = ship.copyWith(fuel: value);
            break;
          case "fuel/ly":
            ship = ship.copyWith(fuel_ly: value);
            break;
          case "range":
            ship = ship.copyWith(range: value);
            break;
          case "max burn":
            ship = ship.copyWith(max_burn: value);
            break;
          case "base value":
            ship = ship.copyWith(base_value: value);
            break;
          case "cr %/day":
            ship = ship.copyWith(cr_percent_day: value);
            break;
          case "cr to deploy":
            ship = ship.copyWith(CR_to_deploy: value);
            break;
          case "peak cr sec":
            ship = ship.copyWith(peak_CR_sec: value);
            break;
          case "cr loss/sec":
            ship = ship.copyWith(CR_loss_sec: value);
            break;
          case "supplies/rec":
            ship = ship.copyWith(supplies_rec: value);
            break;
          case "supplies/mo":
            ship = ship.copyWith(supplies_mo: value);
            break;
          case "c/s":
            ship = ship.copyWith(c_per_s: value);
            break;
          case "c/f":
            ship = ship.copyWith(c_per_f: value);
            break;
          case "f/s":
            ship = ship.copyWith(f_per_s: value);
            break;
          case "f/f":
            ship = ship.copyWith(f_per_f: value);
            break;
          case "crew/s":
            ship = ship.copyWith(crew_per_s: value);
            break;
          case "crew/f":
            ship = ship.copyWith(crew_per_f: value);
            break;
          case "hints":
            ship = ship.copyWith(hints: value);
            break;
          case "tags":
            ship = ship.copyWith(tags: value);
            break;
          case "rarity":
            ship = ship.copyWith(rarity: value);
            break;
          case "breakprob":
            ship = ship.copyWith(breakProb: value);
            break;
          case "minpieces":
            ship = ship.copyWith(minPieces: value);
            break;
          case "maxpieces":
            ship = ship.copyWith(maxPieces: value);
            break;
          case "travel drive":
            ship = ship.copyWith(travel_drive: value);
            break;
          case "number":
            ship = ship.copyWith(number: value);
            break;
        }
      }

      if (ship.id.isNotNullOrEmpty()) {
        ships.add(ship);
      }
    }

    return ships;
  }
}
