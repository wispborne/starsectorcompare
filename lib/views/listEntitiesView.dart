import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starsectorcompare/appState.dart';
import 'package:starsectorcompare/utils.dart';

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
    var allShips = ref
        .watch(AppState.shipsByHullId)
        .values
        .toList();

    var hullIdsToDisplay = ref.watch(AppState.hullIdsToDisplay);
    var filteredShips = filterShips(allShips, ref.watch(AppState.filterMods), ref.watch(AppState.filterShipHullSizes));

    return DataTable(
        columns: [
          DataColumn(label: Checkbox(value: hullIdsToDisplay.isNotEmpty, onChanged: (value) =>  ref.read(AppState.hullIdsToDisplay.notifier).update((state) => {}))),
          const DataColumn(
              label: Expanded(
                  child: Text("Name",
                      style: TextStyle(fontStyle: FontStyle.italic)))),
          const DataColumn(
              label: Expanded(
                  child: Text("Hitpoints",
                      style: TextStyle(fontStyle: FontStyle.italic)))),
          const DataColumn(
              label: Expanded(
                  child: Text("Armor",
                      style: TextStyle(fontStyle: FontStyle.italic)))),
          const DataColumn(
              label: Expanded(
                  child: Text("Max Speed",
                      style: TextStyle(fontStyle: FontStyle.italic)))),
          const DataColumn(
              label: Expanded(
                  child: Text("Flux Cap",
                      style: TextStyle(fontStyle: FontStyle.italic)))),
        ],
        rows: List<DataRow>.generate(
          filteredShips.length,
          (index) {
            var item = filteredShips[index];
            return DataRow(
              cells: <DataCell>[
                DataCell(Checkbox(value: hullIdsToDisplay.contains(item.id), onChanged: (value) {
                  ref.read(AppState.hullIdsToDisplay.notifier).update((state) {
                    if (value == true) {
                      // Create new sets so that watchers are notified.
                      return {}..addAll(state..add(item.id));
                    } else {
                      return {}..addAll(state..remove(item.id));
                    }
                  });
                }
                )),
                DataCell(Tooltip(message: item.id, child: Text(item.shipCsv.name ?? ""))),
                DataCell(Text(item.shipCsv.hitpoints ?? "")),
                DataCell(Text(item.shipCsv.armor_rating ?? "")),
                DataCell(Text(item.shipCsv.max_speed ?? "")),
                DataCell(Text(item.shipCsv.max_flux ?? "")),
              ],
            );
          },
        ));
  }
}
