import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'shipFiltersView.dart';
import 'sortByView.dart';

class EntityFilteringTabs extends ConsumerStatefulWidget {
  const EntityFilteringTabs({super.key});

  @override
  ConsumerState createState() => _EntityFilteringTabsState();
}

class _EntityFilteringTabsState extends ConsumerState<EntityFilteringTabs> with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Baseline'),
    Tab(text: 'Ships'),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.maxFinite,
          height: 30,
          child: TabBar(
            controller: _tabController,
            tabs: myTabs,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: myTabs.map((Tab tab) {
                  return SortByView();
                }).toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
