import 'package:dart_extensions_methods/dart_extension_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../appState.dart';

class ShipFiltersView extends ConsumerWidget {
  const ShipFiltersView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox.fromSize(
      size: const Size.fromWidth(300),
      child: const ShipHullTypeFilters(),
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
  var selectedHints = <String>{};

  @override
  Widget build(BuildContext context) {
    var shipHullTypes = ref
        .watch(AppState.shipsByHullId)
        .values
        .map((e) => e.shipJson.hullSize)
        .filter((e) => e.isNotEmpty)
        .toSet()
        .toList();

    var hints = ["UNBOARDABLE", "STATION"];
    // hints = ref
    //     .watch(AppState.shipsByHullId)
    //     .values
    //     .mapNotNull((e) => e.hintsSplitUppercase())
    //     .flattened
    //     .filter((e) => e.isNotEmpty)
    //     .toSet()
    //     .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Filter by"),
        GridView.extent(
            maxCrossAxisExtent: 150,
            childAspectRatio: 12 / 3,
            padding: const EdgeInsets.all(8),
            shrinkWrap: true,
            children: shipHullTypes
                .map((shipHullType) => TextButton(
                    onPressed: () {
                      setState(() {
                        if (selectedHullTypes.contains(shipHullType)) {
                          selectedHullTypes.remove(shipHullType);
                        } else {
                          selectedHullTypes.add(shipHullType);
                        }

                        ref
                            .read(AppState.filterShipHullSizes.notifier)
                            // Create a new set so that watchers are notified.
                            .update((state) => selectedHullTypes.isEmpty ? null : {}
                              ?..addAll(selectedHullTypes));
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 12),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                        backgroundColor: selectedHullTypes.contains(shipHullType)
                            ? Theme.of(context).primaryColor
                            : Colors.transparent),
                    child: Text(shipHullType.replaceAll("_", " ") ?? "")))
                .toList()
              ..addAll(hints
                  .map((tags) => TextButton(
                      onPressed: () {
                        setState(() {
                          if (selectedHints.contains(tags)) {
                            selectedHints.remove(tags);
                          } else {
                            selectedHints.add(tags);
                          }

                          ref
                              .read(AppState.filterShipHints.notifier)
                              .update((state) => selectedHints.isEmpty ? null : {}
                                ?..addAll(selectedHints));
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 12),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                          backgroundColor:
                              selectedHints.contains(tags) ? Theme.of(context).primaryColor : Colors.transparent),
                      child: Text(tags.replaceAll("_", " ") ?? "")))
                  .toList())),
      ],
    );
  }
}
