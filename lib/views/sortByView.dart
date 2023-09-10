import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starsectorcompare/appState.dart';

class SortByView extends ConsumerStatefulWidget {
  static const fleetPoints = "Fleet Points";
  static const techType = "Tech Type";
  static const name = "Name";

  const SortByView({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _SortByViewState();
}

class _SortByViewState extends ConsumerState<SortByView> {
  /// Field name + asc/desc
  var selectedFilter = <String, bool>{};

  @override
  Widget build(BuildContext context) {
    var options = {SortByView.fleetPoints, SortByView.techType, SortByView.name};

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text("Sort by"),
      GridView.extent(
          maxCrossAxisExtent: 150,
          childAspectRatio: 12 / 3,
          padding: const EdgeInsets.all(8),
          shrinkWrap: true,
          children: [
            ...options
                .map((option) => TextButton.icon(
                      icon: Icon(
                        selectedFilter[option] == true ? Icons.arrow_upward : Icons.arrow_downward,
                        size: 10,
                      ),
                      label: Align(alignment: Alignment.centerLeft, child: Text(option.replaceAll("_", " ") ?? "")),
                      onPressed: () {
                        setState(() {
                          if (selectedFilter.keys.contains(option)) {
                            selectedFilter[option] = !selectedFilter[option]!;
                          } else {
                            selectedFilter.clear();
                            selectedFilter[option] = false;
                          }

                          ref.read(AppState.sortBy.notifier).update((state) => {}..addAll(selectedFilter));
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 12),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                          backgroundColor: selectedFilter.keys.contains(option)
                              ? Theme.of(context).primaryColor
                              : Colors.transparent),
                    ))
                .toList()
          ])
    ]);
  }
}
