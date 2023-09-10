import 'dart:ui';

import 'package:dart_extensions_methods/dart_extension_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starsectorcompare/appState.dart';
import 'package:starsectorcompare/views/sortByView.dart';

import '../models/ship.dart';
import '../scalable_data_table/ScalableDataTable.dart';
import '../scalable_data_table/ScalableTableHeader.dart';
import '../utils.dart';

class ListEntitiesView extends ConsumerWidget {
  const ListEntitiesView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const EntitiesList();
  }
}

class EntitiesList extends ConsumerStatefulWidget {
  const EntitiesList({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => EntitiesListState();
}

class EntitiesListState extends ConsumerState<EntitiesList> {
  @override
  Widget build(BuildContext context) {
    var allShips = ref.watch(AppState.shipsByHullId).values.toList();
    var hullIdsToDisplay = ref.watch(AppState.hullIdsToDisplay);

    var filteredShips = filterShips(allShips, ref.watch(AppState.filterMods), ref.watch(AppState.filterShipHullSizes),
        ref.watch(AppState.filterShipHints), ref.watch(AppState.searchText));

    var sortBy = ref.watch(AppState.sortBy)?.entries.firstOrNull;

    if (sortBy != null) {
      switch (sortBy.key) {
        case SortByView.fleetPoints:
          filteredShips.sort((a, b) => a.shipCsv.fleet_pts!.compareTo(b.shipCsv.fleet_pts!) * (sortBy.value ? 1 : -1));
          break;
        case SortByView.techType:
          filteredShips.sort(
              (a, b) => a.shipCsv.tech_manufacturer!.compareTo(b.shipCsv.tech_manufacturer!) * (sortBy.value ? -1 : 1));
          break;
        case SortByView.name:
          filteredShips.sort((a, b) => a.shipCsv.name!.compareTo(b.shipCsv.name!) * (sortBy.value ? -1 : 1));
          break;
      }
    }

    var fields = {
      "name": (
        title: "Name",
        widget: (Ship item) {
          var hasName = item.shipCsv.name.isNotNullOrEmpty();
          return Tooltip(
              message: item.id,
              child:
                  hasName ? Text(item.shipCsv.name!) : Text(item.id, style: const TextStyle(fontFamily: "monospace")));
        }
      ),
      "techtype": (title: "Tech", widget: (Ship item) => Text(item.shipCsv.tech_manufacturer ?? "")),
      "hitpoints": (title: "Hitpoints", widget: (Ship item) => Text(item.shipCsv.hitpoints ?? "")),
      "armor": (title: "Armor", widget: (Ship item) => Text(item.shipCsv.armor_rating ?? "")),
      "max_speed": (title: "Max Speed", widget: (Ship item) => Text(item.shipCsv.max_speed ?? "")),
      "max_flux": (title: "Flux Cap", widget: (Ship item) => Text(item.shipCsv.max_flux ?? "")),
      "flux_dissipation": (title: "Flux Diss", widget: (Ship item) => Text(item.shipCsv.flux_dissipation ?? "")),
    };

    return ScalableDataTable(
      emptyBuilder: (context) => const Text("No items loaded"),
      itemCount: filteredShips.length,
      header: ScalableTableHeader(columnWrapper: columnWrapper, padding: const EdgeInsets.only(), children: [
        SizedBox(
          height: 30,
          child: Checkbox(
              value: hullIdsToDisplay.isNotEmpty,
              onChanged: (value) => ref.read(AppState.hullIdsToDisplay.notifier).update((state) => {})),
        ),
        ...fields.values.map((e) => Text(e.title, style: const TextStyle(fontWeight: FontWeight.bold))),
      ]),
      rowBuilder: (context, index) {
        var item = filteredShips[index];
        return ScalableTableRow(
          columnWrapper: columnWrapper,
          padding: const EdgeInsets.only(),
          onTap: () {
            var value = !hullIdsToDisplay.contains(item.id);
            ref.read(AppState.hullIdsToDisplay.notifier).update((state) {
              if (value == true) {
                // Create new sets so that watchers are notified.
                return {}..addAll(state..add(item.id));
              } else {
                return {}..addAll(state..remove(item.id));
              }
            });
          },
          children: [
            SizedBox(
              height: 20,
              child: Checkbox(
                  value: hullIdsToDisplay.contains(item.id),
                  activeColor: item.color,
                  onChanged: (value) {
                    ref.read(AppState.hullIdsToDisplay.notifier).update((state) {
                      if (value == true) {
                        // Create new sets so that watchers are notified.
                        return {}..addAll(state..add(item.id));
                      } else {
                        return {}..addAll(state..remove(item.id));
                      }
                    });
                  }),
            ),
            ...fields.values.map((e) => e.widget(item)).toList(),
          ],
        );
      },
    );
  }

  Widget columnWrapper(BuildContext context, int columnIndex, Widget child) {
    const padding = EdgeInsets.symmetric(horizontal: 0, vertical: 0);
    switch (columnIndex) {
      case 0:
        return Container(
          width: 60,
          padding: padding,
          child: child,
        );
      // case 1:
      //   return Container(
      //     width: 100,
      //     padding: padding,
      //     child: child,
      //   );
      // case 5:
      //   return Expanded(
      //     flex: 3,
      //     child: Container(
      //       padding: padding,
      //       child: child,
      //     ),
      //   );
      default:
        return Expanded(
          child: Container(
            padding: padding,
            child: child,
          ),
        );
    }
  }
}
