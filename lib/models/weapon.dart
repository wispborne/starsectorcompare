import "package:dart_extensions_methods/dart_extension_methods.dart";
import "package:freezed_annotation/freezed_annotation.dart";

// import "converters/booleanConverter.dart";

part '../generated/models/weapon.freezed.dart';

@unfreezed
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
            weapon.name = value;
            break;
          case "id":
            weapon.id = value;
            break;
          case "tier":
            weapon.tier = value;
            break;
          case "rarity":
            weapon.rarity = value;
            break;
          case "base value":
            weapon.base_value = value;
            break;
          case "range":
            weapon.range = value;
            break;
          case "damage/second":
            weapon.damage_per_second = value;
            break;
          case "damage/shot":
            weapon.damage_per_shot = value;
            break;
          case "emp":
            weapon.emp = value;
            break;
          case "impact":
            weapon.impact = value;
            break;
          case "turn rate":
            weapon.turn_rate = value;
            break;
          case "ops":
            weapon.OPs = value;
            break;
          case "ammo":
            weapon.ammo = value;
            break;
          case "ammo/sec":
            weapon.ammo_per_sec = value;
            break;
          case "reload size":
            weapon.reload_size = value;
            break;
          case "type":
            weapon.type = value;
            break;
          case "energy/shot":
            weapon.energy_per_shot = value;
            break;
          case "energy/second":
            weapon.energy_per_second = value;
            break;
          case "chargeup":
            weapon.chargeup = value;
            break;
          case "chargedown":
            weapon.chargedown = value;
            break;
          case "burst size":
            weapon.burst_size = value;
            break;
          case "burst delay":
            weapon.burst_delay = value;
            break;
          case "min spread":
            weapon.min_spread = value;
            break;
          case "max spread":
            weapon.max_spread = value;
            break;
          case "spread/shot":
            weapon.spread_per_shot = value;
            break;
          case "spread decay/sec":
            weapon.spread_decay_per_sec = value;
            break;
          case "beam speed":
            weapon.beam_speed = value;
            break;
          case "proj speed":
            weapon.proj_speed = value;
            break;
          case "launch speed":
            weapon.launch_speed = value;
            break;
          case "flight time":
            weapon.flight_time = value;
            break;
          case "proj hitpoints":
            weapon.proj_hitpoints = value;
            break;
          case "autofireaccbonus":
            weapon.autofireAccBonus = value;
            break;
          case "extraarcforai":
            weapon.extraArcForAI = value;
            break;
          case "hints":
            weapon.hints = value;
            break;
          case "tags":
            weapon.tags = value;
            break;
          case "grouptag":
            weapon.groupTag = value;
            break;
          case "tech/manufacturer":
            weapon.tech_manufacturer = value;
            break;
          case "for weapon tooltip>>":
            weapon.for_weapon_tooltip = value;
            break;
          case "primaryrolestr":
            weapon.primaryRoleStr = value;
            break;
          case "speedstr":
            weapon.speedStr = value;
            break;
          case "trackingstr":
            weapon.trackingStr = value;
            break;
          case "turnratestr":
            weapon.turnRateStr = value;
            break;
          case "accuracystr":
            weapon.accuracyStr = value;
            break;
          case "customprimary":
            weapon.customPrimary = value;
            break;
          case "customprimaryhl":
            weapon.customPrimaryHL = value;
            break;
          case "customancillary":
            weapon.customAncillary = value;
            break;
          case "customancillaryhl":
            weapon.customAncillaryHL = value;
            break;
          case "nodpsintooltip":
            weapon.noDPSInTooltip = value;
            break;
          case "number":
            weapon.number = value;
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
