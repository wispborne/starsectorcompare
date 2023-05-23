import 'package:dart_extensions_methods/dart_extension_methods.dart';
import 'package:fimber/fimber.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/models/ship.freezed.dart';

@unfreezed
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
        try {
          var columnName = columnNames[colIndex];
          var value = row[colIndex];
          switch (columnName) {
            case "name":
              ship.name = value;
              break;
            case "id":
              ship.id = value;
              break;
            case "designation":
              ship.designation = value;
              break;
            case "tech/manufacturer":
              ship.tech_manufacturer = value;
              break;
            case "system id":
              ship.system_id = value;
              break;
            case "fleet pts":
              ship.fleet_pts = value;
              break;
            case "hitpoints":
              ship.hitpoints = value;
              break;
            case "armor rating":
              ship.armor_rating = value;
              break;
            case "max flux":
              ship.max_flux = value;
              break;
            case "8/6/5/4%":
              ship.eight_six_five_four_percent = value;
              break;
            case "flux dissipation":
              ship.flux_dissipation = value;
              break;
            case "ordnance points":
              ship.ordnance_points = value;
              break;
            case "fighter bays":
              ship.fighter_bays = value;
              break;
            case "max speed":
              ship.max_speed = value;
              break;
            case "acceleration":
              ship.acceleration = value;
              break;
            case "deceleration":
              ship.deceleration = value;
              break;
            case "max turn rate":
              ship.max_turn_rate = value;
              break;
            case "turn acceleration":
              ship.turn_acceleration = value;
              break;
            case "mass":
              ship.mass = value;
              break;
            case "shield type":
              ship.shield_type = value;
              break;
            case "defense id":
              ship.defense_id = value;
              break;
            case "shield arc":
              ship.shield_arc = value;
              break;
            case "shield upkeep":
              ship.shield_upkeep = value;
              break;
            case "shield efficiency":
              ship.shield_efficiency = value;
              break;
            case "phase cost":
              ship.phase_cost = value;
              break;
            case "phase upkeep":
              ship.phase_upkeep = value;
              break;
            case "min crew":
              ship.min_crew = value;
              break;
            case "max crew":
              ship.max_crew = value;
              break;
            case "cargo":
              ship.cargo = value;
              break;
            case "fuel":
              ship.fuel = value;
              break;
            case "fuel/ly":
              ship.fuel_ly = value;
              break;
            case "range":
              ship.range = value;
              break;
            case "max burn":
              ship.max_burn = value;
              break;
            case "base value":
              ship.base_value = value;
              break;
            case "cr %/day":
              ship.cr_percent_day = value;
              break;
            case "cr to deploy":
              ship.CR_to_deploy = value;
              break;
            case "peak cr sec":
              ship.peak_CR_sec = value;
              break;
            case "cr loss/sec":
              ship.CR_loss_sec = value;
              break;
            case "supplies/rec":
              ship.supplies_rec = value;
              break;
            case "supplies/mo":
              ship.supplies_mo = value;
              break;
            case "c/s":
              ship.c_per_s = value;
              break;
            case "c/f":
              ship.c_per_f = value;
              break;
            case "f/s":
              ship.f_per_s = value;
              break;
            case "f/f":
              ship.f_per_f = value;
              break;
            case "crew/s":
              ship.crew_per_s = value;
              break;
            case "crew/f":
              ship.crew_per_f = value;
              break;
            case "hints":
              ship.hints = value;
              break;
            case "tags":
              ship.tags = value;
              break;
            case "rarity":
              ship.rarity = value;
              break;
            case "breakprob":
              ship.breakProb = value;
              break;
            case "minpieces":
              ship.minPieces = value;
              break;
            case "maxpieces":
              ship.maxPieces = value;
              break;
            case "travel drive":
              ship.travel_drive = value;
              break;
            case "number":
              ship.number = value;
              break;
          }
        } catch (ex) {
          Fimber.w("Unable to load index $colIndex from row $row", ex: ex);
        }
      }

      if (ship.id.isNotNullOrEmpty()) {
        ships.add(ship);
      }
    }

    return ships;
  }
}
