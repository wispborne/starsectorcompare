import 'package:dart_extensions_methods/dart_extension_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../appState.dart';
import '../models/ship.dart';
import '../scalable_data_table/ScalableDataTable.dart';
import '../scalable_data_table/ScalableTableHeader.dart';
import '../utils.dart';
import '../views/sortByView.dart';

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
    var allShips = ref.watch(AppState.shipsByHullId);
    var selectedHullIds = ref.watch(AppState.selectedHullIds);
    var themeData = Theme.of(context);
    var baselineEntity = ref.watch(AppState.baselineHullId);

    var filteredShips = filterShips(
            allShips.values,
            ref.watch(AppState.filterMods),
            ref.watch(AppState.filterShipHullSizes),
            ref.watch(AppState.filterShipHints),
            ref.watch(AppState.filterTechTypes))
        .filterNot((element) => element.id == baselineEntity);

    var searchText = ref.watch(AppState.searchText);
    if (searchText.isNotNullOrEmpty()) {
      filteredShips = searchShips(filteredShips, searchText!);
    }

    var sortBy = ref.watch(AppState.sortBy)?.entries.firstOrNull;

    if (sortBy != null) {
      switch (sortBy.key) {
        case SortByView.fleetPoints:
          filteredShips.sort((a, b) =>
              a.shipCsv.fleet_pts!.compareTo(b.shipCsv.fleet_pts!) *
              (sortBy.value ? 1 : -1));
          break;
        case SortByView.techType:
          filteredShips.sort((a, b) =>
              a.shipCsv.tech_manufacturer!
                  .compareTo(b.shipCsv.tech_manufacturer!) *
              (sortBy.value ? -1 : 1));
          break;
        case SortByView.name:
          filteredShips.sort((a, b) =>
              a.shipCsv.name!.compareTo(b.shipCsv.name!) *
              (sortBy.value ? -1 : 1));
          break;
      }
    }

    Widget columnWrapper(BuildContext context, int columnIndex, Widget child) {
      const padding = EdgeInsets.symmetric(horizontal: 0, vertical: 0);
      if ((baselineEntity == null && (columnIndex == 0 || columnIndex == 1))
      || (baselineEntity != null && columnIndex == 0)) {
        return Container(
          width: 60,
          padding: padding,
          child: child,
        );
      } else {
        return Expanded(
          child: Container(
            padding: padding,
            child: child,
          ),
        );
      }
    }

    var infoColumnWidth = 15.0;
    var selectBaselineColumnWidth = 10.0;
    var rowHeight = 20.0;

    var fields = {
      "name": (
        title: "Name",
        widget: (Ship item) {
          var hasName = item.shipCsv.name.isNotNullOrEmpty();
          return Tooltip(
              message: item.id,
              child: hasName
                  ? Text(item.shipCsv.name!)
                  : Text(item.id,
                      style: const TextStyle(fontFamily: "monospace")));
        }
      ),
      "techtype": (
        title: "Tech",
        widget: (Ship item) => Text(item.shipCsv.tech_manufacturer ?? "")
      ),
      "hitpoints": (
        title: "Hitpoints",
        widget: (Ship item) => Text(item.shipCsv.hitpoints ?? "")
      ),
      "armor": (
        title: "Armor",
        widget: (Ship item) => Text(item.shipCsv.armor_rating ?? "")
      ),
      "max_speed": (
        title: "Max Speed",
        widget: (Ship item) => Text(item.shipCsv.max_speed ?? "")
      ),
      "max_flux": (
        title: "Flux Cap",
        widget: (Ship item) => Text(item.shipCsv.max_flux ?? "")
      ),
      "flux_dissipation": (
        title: "Flux Diss",
        widget: (Ship item) => Text(item.shipCsv.flux_dissipation ?? "")
      ),
      "mod": (title: "Mod", widget: (Ship item) => Text(item.modName ?? "")),
      "info": (
        title: " ",
        widget: (Ship item) => Tooltip(
            message: item.toString(),
            child: SizedBox(
                height: rowHeight,
                child: Icon(
                  Icons.info,
                  size: infoColumnWidth,
                ))),
      ),
    };

    return ScalableDataTable(
      emptyBuilder: (context) => const Text("No items loaded"),
      itemCount: filteredShips.length,
      header: ScalableTableHeader(
          columnWrapper: columnWrapper,
          padding: const EdgeInsets.only(),
          children: [
            if (baselineEntity == null)
              SizedBox(
                height: rowHeight,
                width: selectBaselineColumnWidth,
              ),
            SizedBox(
              height: 30,
              child: Checkbox(
                  value: selectedHullIds.isNotEmpty,
                  onChanged: (value) => ref
                      .read(AppState.selectedHullIds.notifier)
                      .update((state) => {})),
            ),
            ...fields.values.map((e) => Text(e.title,
                style: const TextStyle(fontWeight: FontWeight.bold))),
          ]),
      pinnedRowBuilders: (context, index) {
        if (baselineEntity != null && allShips.containsKey(baselineEntity)) {
          var item = ref.read(AppState.shipsByHullId)[baselineEntity]!;
          return ScalableTableRow(
            columnWrapper: columnWrapper,
            padding: const EdgeInsets.only(),
            children: [
              SizedBox(
                  width: selectBaselineColumnWidth,
                  child: IconButton(
                      icon: Transform.rotate(
                          angle: .78,
                          child: const Icon(Icons.push_pin, size: 18)),
                      padding: const EdgeInsets.all(0),
                      onPressed: () => ref
                          .read(AppState.baselineHullId.notifier)
                          .update((state) => null))),
              ...fields.values.map((e) => e.widget(item)).toList(),
            ],
          );
        }
        return Container();
      },
      rowBuilder: (context, index) {
        var item = filteredShips[index];
        return ScalableTableRow(
          columnWrapper: columnWrapper,
          padding: const EdgeInsets.only(),
          onTap: () {
            var value = !selectedHullIds.contains(item.id);
            ref.read(AppState.selectedHullIds.notifier).update((state) {
              if (value == true) {
                // Create new sets so that watchers are notified.
                return {}..addAll(state..add(item.id));
              } else {
                return {}..addAll(state..remove(item.id));
              }
            });
          },
          children: [
            if (baselineEntity == null)
              SizedBox(
                  width: selectBaselineColumnWidth,
                  child: IconButton(
                      icon: const Icon(Icons.push_pin, size: 18),
                      onPressed: () => ref
                          .read(AppState.baselineHullId.notifier)
                          .update((state) => item.id))),
            SizedBox(
              height: rowHeight,
              child: Checkbox(
                  value: selectedHullIds.contains(item.id),
                  activeColor: item.color,
                  onChanged: (value) {
                    ref.read(AppState.selectedHullIds.notifier).update((state) {
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
}
