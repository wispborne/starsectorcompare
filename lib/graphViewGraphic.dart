import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:dart_extensions_methods/dart_extension_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphic/graphic.dart';
import 'package:starsectorcompare/appState.dart';
import 'package:starsectorcompare/extensions.dart';

import 'models/shipCsv.dart';

// class DataAttribute {
//   String id;
//   String name;
//   String attr;
//   String value;
//   String normalizedValue;
//   DataAttribute({
//      this.id,
//   });
// }

enum Columns { Hitpoints, Armor, MaxSpeed }

class GraphViewGraphic extends ConsumerWidget {
  const GraphViewGraphic({
    Key? key,
  }) : super(key: key);

  List<Map<String, Object?>> _createShipData(
      Iterable<ShipCsv> ships, String attr, String? Function(ShipCsv) valueGetter) {
    return ships
        .map((ship) => {
              "id": ship.id,
              "name": ship.name ?? "null",
              "attr": attr,
              "value": valueGetter(ship),
              "normalizedValue": valueGetter(ship)?.toDoubleOrNull()?.normalize(
                  0,
                  ships.map((e) => valueGetter(e)?.toDoubleOrNull() ?? 0).max)
            })
        .toList();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isSpiderWeb = false;
    var ships = ref.watch(AppState.shipsInCsvByHullIdByModId);
    var vanillaShips = ships[null]?.values.take(10) ?? {};
    var hpData =
        _createShipData(vanillaShips, "Hitpoints", (ship) => ship.hitpoints);
    var armorData =
        _createShipData(vanillaShips, "Armor", (ship) => ship.armor_rating);
    var maxSpeedData =
        _createShipData(vanillaShips, "Max Speed", (ship) => ship.max_speed);
    var capacityData =
    _createShipData(vanillaShips, "Flux Cap", (ship) => ship.max_flux);
    var dissipationData =
    _createShipData(vanillaShips, "Flux Diss", (ship) => ship.flux_dissipation);

    var columns = [hpData, armorData, maxSpeedData, capacityData, dissipationData];

    var data = columns.reduce((value, element) => value..addAll(element));

    return data.isEmpty
        ? SizedBox.fromSize(
            size: const Size(20, 20), child: const CircularProgressIndicator())
        : Column(
            children: [
              Container(height: 10),
              Expanded(
                  child: Padding(
                      padding: const EdgeInsets.only(left: 50, bottom: 10),
                      child: Chart(
                        data: data,
                        variables: {
                          "attr": Variable(
                            accessor: (Map map) => map["attr"] as String,
                          ),
                          "normalizedValue": Variable(
                            accessor: (Map map) =>
                                map["normalizedValue"] as double,
                          ),
                          "name": Variable(
                            accessor: (Map map) => map["name"] as String,
                          ),
                          "id": Variable(
                            accessor: (Map map) => map["id"] as String,
                          ),
                          "value": Variable(
                            accessor: (Map map) => map["value"] as String,
                          ),
                        },
                        marks: [
                          LineMark(
                            position: Varset("attr") *
                                Varset("normalizedValue") /
                                Varset("id"),
                            shape: ShapeEncode(
                              value: BasicLineShape(
                                  smooth: false, loop: isSpiderWeb),
                            ),
                            size: SizeEncode(value: 1.5),
                            label: LabelEncode(
                                encoder: (tuple) => Label(
                                    "${tuple["value"]}",
                                    LabelStyle(
                                        textStyle:
                                            const TextStyle(fontSize: 12),
                                        align: Alignment.centerLeft,
                                        offset: const Offset(-15, 0)))),
                            color: ColorEncode(
                              variable: "id",
                              values: Defaults.colors20,
                              updaters: {
                                "groupMouse": {
                                  false: (color) => color.withAlpha(100)
                                },
                                "groupTouch": {
                                  false: (color) => color.withAlpha(100)
                                },
                              },
                            ),
                          ),
                          PointMark(
                            size: SizeEncode(value: 7),
                            color: ColorEncode(
                              variable: "name",
                              values: Defaults.colors20,
                              updaters: {
                                "groupMouse": {
                                  false: (color) => color.withAlpha(100)
                                },
                                "groupTouch": {
                                  false: (color) => color.withAlpha(100)
                                },
                              },
                            ),
                          ),
                        ],
                        coord: isSpiderWeb ? PolarCoord() : RectCoord(),
                        axes: isSpiderWeb
                            ? [
                                Defaults.circularAxis,
                                Defaults.radialAxis,
                              ]
                            : [
                                AxisGuide(
                                  line: Defaults.strokeStyle,
                                  variable: "attr",
                                  label: LabelStyle(
                                    textStyle:
                                        Theme.of(context).textTheme.bodyMedium,
                                    offset: const Offset(0, 7.5),
                                  ),
                                ),
                                // AxisGuide(
                                //     variable: 'name',
                                //     label: LabelStyle(
                                //       textStyle: Defaults.textStyle,
                                //       offset: const Offset(-7.5, 0),
                                //     ),
                                //     grid: Defaults.strokeStyle)
                              ],
                        selections: {
                          "tooltipMouse": PointSelection(on: {
                            GestureType.hover,
                          }, devices: {
                            PointerDeviceKind.mouse
                          }),
                          "groupMouse": PointSelection(
                              on: {
                                GestureType.hover,
                              },
                              variable: "name",
                              devices: {PointerDeviceKind.mouse}),
                          "tooltipTouch": PointSelection(on: {
                            GestureType.scaleUpdate,
                            GestureType.tapDown,
                            GestureType.longPressMoveUpdate
                          }, devices: {
                            PointerDeviceKind.touch
                          }),
                          "groupTouch": PointSelection(
                              on: {
                                GestureType.scaleUpdate,
                                GestureType.tapDown,
                                GestureType.longPressMoveUpdate
                              },
                              variable: "name",
                              devices: {PointerDeviceKind.touch}),
                        },
                        tooltip: TooltipGuide(
                          selections: {"tooltipTouch", "tooltipMouse"},
                          followPointer: [true, true],
                          align: Alignment.topLeft,
                          mark: 0,
                          variables: [
                            "name",
                            "id",
                            "attr",
                            "value",
                          ],
                        ),
                        annotations: [
                          ...(data.take(vanillaShips.length).map((entity) =>
                              TagAnnotation(
                                  label: Label(
                                    entity["name"].toString(),
                                    LabelStyle(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                      offset: const Offset(-90, 0),
                                    ),
                                  ),
                                  // Takes each data point and uses the normalized value for the y coordinate.
                                  values: [
                                    entity['attr'],
                                    entity['normalizedValue'] as double?
                                  ]))),
                        ],
                      ))),
            ],
          );
  }
}
