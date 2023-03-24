import "package:freezed_annotation/freezed_annotation.dart";
import "package:wase/models/weaponMuzzleFlashSpec.dart";
import "package:wase/models/weaponSmokeSpec.dart";

import "converters/booleanConverter.dart";

part '../generated/models/weapon.freezed.dart';

part '../generated/models/weapon.g.dart';

@freezed
class Weapon with _$Weapon {
  factory Weapon({
    String name,
    String id,
    String tier,
    String rarity,
    String base_value,
    String range,
    String damage_per_second,
    String damage_per_shot,
    String emp,
    String impact,
    String turn_rate,
    String OPs,
    String ammo,
    String ammo_per_sec,
    String reload_size,
    String type,
    String energy_per_shot,
    String energy_per_second,
    String chargeup,
    String chargedown,
    String burst_size,
    String burst_delay,
    String min_spread,
    String max_spread,
    String spread_per_shot,
    String spread_decay_per_sec,
    String beam_speed,
    String proj_speed,
    String launch_speed,
    String flight_time,
    String proj_hitpoints,
    String autofireAccBonus,
    String extraArcForAI,
    String hints,
    String tags,
    String groupTag,
    String tech_manufacturer,
    String for_weapon_tooltip,
    String primaryRoleStr,
    String speedStr,
    String trackingStr,
    String turnRateStr,
    String accuracyStr,
    String customPrimary,
    String customPrimaryHL,
    String customAncillary,
    String customAncillaryHL,
    String noDPSInTooltip,
    String number,
  }) = _Weapon;

  factory Weapon.fromJson(Map<String, Object?> json) => _$WeaponFromJson(json);
}
