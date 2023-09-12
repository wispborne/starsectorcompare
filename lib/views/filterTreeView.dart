import 'package:StarCompare/models/gameData.dart';
import 'package:collection/collection.dart';
import 'package:dart_extensions_methods/dart_extension_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_treeview/flutter_treeview.dart';
import 'package:ktx/ktx.dart';

import '../appState.dart';
import '../models/ship.dart';

class FilterTreeView extends ConsumerStatefulWidget {
  const FilterTreeView({super.key});

  @override
  ConsumerState createState() => _FilterTreeViewState();
}

class _FilterTreeViewState extends ConsumerState<FilterTreeView> {
  String? _selectedNode;
  Set<String> expandedNodes = {};
  late List<Node> _nodes;
  late TreeViewController _treeViewController;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var ships = ref.watch(AppState.shipsByHullId).values;
    var modsById = ref.watch(AppState.loadedModsByModId);
    var selectedTechTypes = ref.watch(AppState.filterTechTypes) ?? {};
    var allTechTypes = ships.map((e) => e.shipCsv.tech_manufacturer).toSet();
    var theme = Theme.of(context);
    var vanillaKey = "<sc_vanilla>";

    // nodes where the top level nodes are the mods and their children are the tech types
    _nodes = ships.groupBy((Ship element) => element.modId).mapToList((modId, ships) {
      var key = modId ?? vanillaKey;
      return Node(
          key: key,
          label: modId?.let((modId) => modsById[modId]?.json.name) ?? "Vanilla",
          children: ships
              .map((ship) => Node(
                  key: ship.shipCsv.tech_manufacturer ?? "(none)",
                  label: ship.shipCsv.tech_manufacturer ?? "(none)",
                  icon: selectedTechTypes.contains(ship.shipCsv.tech_manufacturer)
                      ? Icons.check_box
                      : Icons.check_box_outline_blank))
              .distinctBy((obj) => obj.key)
              .filterNot((node) => node.label.isNullOrEmpty())
              .sortedBy((element) => element.label)
              .toList());
    }).sorted((a, b) => a.key == vanillaKey ? -1 : a.label.compareTo(b.label));

    _treeViewController = TreeViewController(
      children: _nodes,
      selectedKey: _selectedNode,
    );

    return TreeView(
        controller: _treeViewController,
        theme: TreeViewTheme(expanderTheme: ExpanderThemeData(size: 20, color: theme.colorScheme.onBackground),
        iconTheme: const IconThemeData.fallback().copyWith(color: theme.colorScheme.onBackground)),
        onNodeTap: (nodeKey) => {
              if (allTechTypes.contains(nodeKey))
                {
                  ref.read(AppState.filterTechTypes.notifier).update((state) => {}
                    ..addAll(state ?? {})
                    ..let((it) => state?.contains(nodeKey) == true ? it.remove(nodeKey) : it.add(nodeKey)))
                }
            },
        onExpansionChanged: (key, state) {
          Node node = _treeViewController.getNode(key)!;
          if (node != null) {
            if (expandedNodes.contains(key)) expandedNodes.remove(key);
              else expandedNodes.add(key);
            List<Node> updated = _treeViewController.updateNode(key, node.copyWith(expanded: expandedNodes.contains(key)));
            setState(() {
              _treeViewController = _treeViewController.copyWith(children: updated);
            });
          }
        });
  }
}
