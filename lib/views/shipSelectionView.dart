import 'package:collection/collection.dart';
import 'package:dart_extensions_methods/dart_extension_methods.dart';
import 'package:flutter/material.dart';
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
      child: ShipHullTypeFilters(),
    );
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
  var selectedHullTypes = <String>{};

  @override
  Widget build(BuildContext context) {
    List<String> shipHullTypes = ref
        .watch(AppState.shipsByHullId)
        .values
        .map((e) => e.shipJson.hullSize)
        .filter((e) => e.isNotEmpty)
        .toSet()
        .toList();

    return Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.extent(
          maxCrossAxisExtent: 150,
          childAspectRatio: 12 / 3,
          padding: const EdgeInsets.all(8),
          children: shipHullTypes
              .map((shipHullType) => TextButton(
                  onPressed: () {
                    setState(() {
                      if (selectedHullTypes.contains(shipHullType)) {
                        selectedHullTypes.remove(shipHullType);
                      } else {
                        selectedHullTypes.add(shipHullType);
                      }

                      ref.read(AppState.shipFilter.notifier).update((state) =>
                          state.copyWith(selectedHullTypes: selectedHullTypes));
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(fontSize: 12),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      backgroundColor: selectedHullTypes.contains(shipHullType)
                          ? Theme.of(context).primaryColor
                          : Colors.transparent),
                  child: Text(shipHullType.replaceAll("_", " ") ?? "")))
              .toList(),
        ));
  }
}
