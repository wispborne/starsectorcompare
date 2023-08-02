import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starsectorcompare/appState.dart';

class ListEntitiesView extends ConsumerWidget {
  const ListEntitiesView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return EntitiesList();
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
    var items = ref
        .watch(AppState.shipsByHullId)
        .values
        .toList();

    var displayedItems = ref.watch(AppState.hullIdsToDisplay);

    return DataTable(
        columns: [
          DataColumn(label: Spacer()),
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
          items.length,
          (index) {
            var item = items[index];
            return DataRow(
              cells: <DataCell>[
                DataCell(Checkbox(value: displayedItems.contains(item.id), onChanged: (value) {
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
                DataCell(Text(item.shipCsv.name ?? "")),
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
