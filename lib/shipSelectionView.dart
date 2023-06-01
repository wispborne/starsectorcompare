import 'package:collection/collection.dart';
import 'package:dart_extensions_methods/dart_extension_methods.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starsectorcompare/appState.dart';

class ShipSelectionView extends ConsumerWidget {
  const ShipSelectionView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox.fromSize(
        size: Size.fromWidth(300),
        child: Column(
          children: [
            ShipHullTypeFilters(),
          ],
        ));
  }
}

class ShipHullTypeFilters extends ConsumerStatefulWidget {
  const ShipHullTypeFilters({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _ShipHullTypeFiltersState();
}

class _ShipHullTypeFiltersState extends ConsumerState<ShipHullTypeFilters> {
  @override
  Widget build(BuildContext context) {
    List<String?> shipHullTypes = ref
        .watch(AppState.shipsByHullIdByModId)
        .values
        .map((e) => e.values)
        .flattened
        .map((e) => e.shipJson.hullSize)
        .filter((e) => e.isNotEmpty)
        .toSet()
        .toList();

    Fimber.i("Ship hull types: $shipHullTypes");
    return Expanded(
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: GridView.extent(
              maxCrossAxisExtent: 150,
              padding: const EdgeInsets.all(8),
              shrinkWrap: true,
              children: shipHullTypes
                  .map((e) => OutlinedButton(
                      onPressed: () {},
                      child: Text(e?.replaceAll("_", " ") ?? "")))
                  .toList(),
            )));
  }
}
