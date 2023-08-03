import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starsectorcompare/appState.dart';

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
    var filteredShips = filterShips(allShips, ref.watch(AppState.filterMods),
        ref.watch(AppState.filterShipHullSizes));

    return ScalableDataTable(
      emptyBuilder: (context) => const Text("No items loaded"),
      itemCount: filteredShips.length,
      header: ScalableTableHeader(columnWrapper: columnWrapper, children: [
        Checkbox(
            value: hullIdsToDisplay.isNotEmpty,
            onChanged: (value) => ref
                .read(AppState.hullIdsToDisplay.notifier)
                .update((state) => {})),
        const Text("Name", style: TextStyle(fontWeight: FontWeight.bold)),
        const Text("Hitpoints", style: TextStyle(fontWeight: FontWeight.bold)),
        const Text("Armor", style: TextStyle(fontWeight: FontWeight.bold)),
        const Text("Max Speed", style: TextStyle(fontWeight: FontWeight.bold)),
        const Text("Flux Cap", style: TextStyle(fontWeight: FontWeight.bold)),
      ]),
      rowBuilder: (context, index) {
        var item = filteredShips[index];
        return ScalableTableRow(
          columnWrapper: columnWrapper,
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
            Checkbox(
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
            Tooltip(message: item.id, child: Text(item.shipCsv.name ?? "")),
            Text(item.shipCsv.hitpoints ?? ""),
            Text(item.shipCsv.armor_rating ?? ""),
            Text(item.shipCsv.max_speed ?? ""),
            Text(item.shipCsv.max_flux ?? ""),
          ],
        );
      },
    );
  }

  Widget columnWrapper(BuildContext context, int columnIndex, Widget child) {
    const padding = EdgeInsets.symmetric(horizontal: 10);
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
