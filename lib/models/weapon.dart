import "package:dart_extensions_methods/dart_extension_methods.dart";
import "package:freezed_annotation/freezed_annotation.dart";

// import "converters/booleanConverter.dart";

part '../generated/models/weapon.freezed.dart';

@freezed
class Weapon with _$Weapon {
  factory Weapon({
    @Default("") String name,
    @Default("") String id,
    @Default("") String tier,
    @Default("") String rarity,
    @Default("") String base_value,
    @Default("") String range,
    @Default("") String damage_per_second,
    @Default("") String damage_per_shot,
    @Default("") String emp,
    @Default("") String impact,
    @Default("") String turn_rate,
    @Default("") String OPs,
    @Default("") String ammo,
    @Default("") String ammo_per_sec,
    @Default("") String reload_size,
    @Default("") String type,
    @Default("") String energy_per_shot,
    @Default("") String energy_per_second,
    @Default("") String chargeup,
    @Default("") String chargedown,
    @Default("") String burst_size,
    @Default("") String burst_delay,
    @Default("") String min_spread,
    @Default("") String max_spread,
    @Default("") String spread_per_shot,
    @Default("") String spread_decay_per_sec,
    @Default("") String beam_speed,
    @Default("") String proj_speed,
    @Default("") String launch_speed,
    @Default("") String flight_time,
    @Default("") String proj_hitpoints,
    @Default("") String autofireAccBonus,
    @Default("") String extraArcForAI,
    @Default("") String hints,
    @Default("") String tags,
    @Default("") String groupTag,
    @Default("") String tech_manufacturer,
    @Default("") String for_weapon_tooltip,
    @Default("") String primaryRoleStr,
    @Default("") String speedStr,
    @Default("") String trackingStr,
    @Default("") String turnRateStr,
    @Default("") String accuracyStr,
    @Default("") String customPrimary,
    @Default("") String customPrimaryHL,
    @Default("") String customAncillary,
    @Default("") String customAncillaryHL,
    @Default("") String noDPSInTooltip,
    @Default("") String number,
  }) = _Weapon;

  static List<Weapon> fromCsv(List<List<dynamic>> csvData) {
    var weapons = <Weapon>[];
    var columnNames = csvData[0].map((e) => e.toLowerCase()).toList();
    for (var row in csvData.sublist(1)) {
      var weapon = Weapon();
      for (var colIndex = 0; colIndex < row.length; colIndex++) {
        var columnName = columnNames[colIndex];
        var value = row[colIndex];
        switch (columnName) {
          case "name":
            weapon = weapon.copyWith(name: value);
            break;
          case "id":
            weapon = weapon.copyWith(id: value);
            break;
          case "tier":
            weapon = weapon.copyWith(tier: value);
            break;
          case "rarity":
            weapon = weapon.copyWith(rarity: value);
            break;
          case "base value":
            weapon = weapon.copyWith(base_value: value);
            break;
          case "range":
            weapon = weapon.copyWith(range: value);
            break;
          case "damage/second":
            weapon = weapon.copyWith(damage_per_second: value);
            break;
          case "damage/shot":
            weapon = weapon.copyWith(damage_per_shot: value);
            break;
          case "emp":
            weapon = weapon.copyWith(emp: value);
            break;
          case "impact":
            weapon = weapon.copyWith(impact: value);
            break;
          case "turn rate":
            weapon = weapon.copyWith(turn_rate: value);
            break;
          case "ops":
            weapon = weapon.copyWith(OPs: value);
            break;
          case "ammo":
            weapon = weapon.copyWith(ammo: value);
            break;
          case "ammo/sec":
            weapon = weapon.copyWith(ammo_per_sec: value);
            break;
          case "reload size":
            weapon = weapon.copyWith(reload_size: value);
            break;
          case "type":
            weapon = weapon.copyWith(type: value);
            break;
          case "energy/shot":
            weapon = weapon.copyWith(energy_per_shot: value);
            break;
          case "energy/second":
            weapon = weapon.copyWith(energy_per_second: value);
            break;
          case "chargeup":
            weapon = weapon.copyWith(chargeup: value);
            break;
          case "chargedown":
            weapon = weapon.copyWith(chargedown: value);
            break;
          case "burst size":
            weapon = weapon.copyWith(burst_size: value);
            break;
          case "burst delay":
            weapon = weapon.copyWith(burst_delay: value);
            break;
          case "min spread":
            weapon = weapon.copyWith(min_spread: value);
            break;
          case "max spread":
            weapon = weapon.copyWith(max_spread: value);
            break;
          case "spread/shot":
            weapon = weapon.copyWith(spread_per_shot: value);
            break;
          case "spread decay/sec":
            weapon = weapon.copyWith(spread_decay_per_sec: value);
            break;
          case "beam speed":
            weapon = weapon.copyWith(beam_speed: value);
            break;
          case "proj speed":
            weapon = weapon.copyWith(proj_speed: value);
            break;
          case "launch speed":
            weapon = weapon.copyWith(launch_speed: value);
            break;
          case "flight time":
            weapon = weapon.copyWith(flight_time: value);
            break;
          case "proj hitpoints":
            weapon = weapon.copyWith(proj_hitpoints: value);
            break;
          case "autofireaccbonus":
            weapon = weapon.copyWith(autofireAccBonus: value);
            break;
          case "extraarcforai":
            weapon = weapon.copyWith(extraArcForAI: value);
            break;
          case "hints":
            weapon = weapon.copyWith(hints: value);
            break;
          case "tags":
            weapon = weapon.copyWith(tags: value);
            break;
          case "grouptag":
            weapon = weapon.copyWith(groupTag: value);
            break;
          case "tech/manufacturer":
            weapon = weapon.copyWith(tech_manufacturer: value);
            break;
          case "for weapon tooltip>>":
            weapon = weapon.copyWith(for_weapon_tooltip: value);
            break;
          case "primaryrolestr":
            weapon = weapon.copyWith(primaryRoleStr: value);
            break;
          case "speedstr":
            weapon = weapon.copyWith(speedStr: value);
            break;
          case "trackingstr":
            weapon = weapon.copyWith(trackingStr: value);
            break;
          case "turnratestr":
            weapon = weapon.copyWith(turnRateStr: value);
            break;
          case "accuracystr":
            weapon = weapon.copyWith(accuracyStr: value);
            break;
          case "customprimary":
            weapon = weapon.copyWith(customPrimary: value);
            break;
          case "customprimaryhl":
            weapon = weapon.copyWith(customPrimaryHL: value);
            break;
          case "customancillary":
            weapon = weapon.copyWith(customAncillary: value);
            break;
          case "customancillaryhl":
            weapon = weapon.copyWith(customAncillaryHL: value);
            break;
          case "nodpsintooltip":
            weapon = weapon.copyWith(noDPSInTooltip: value);
            break;
          case "number":
            weapon = weapon.copyWith(number: value);
            break;
        }
      }

      if (weapon.id.isNotNullOrEmpty()) {
        weapons.add(weapon);
      }
    }

    return weapons;
  }
}
