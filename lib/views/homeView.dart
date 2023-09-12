import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../views/searchView.dart';
import '../views/shipFiltersView.dart';
import 'entityFilteringTabs.dart';
import 'graphViewGraphic.dart';
import 'listEntitiesView.dart';
import 'sortByView.dart';

class HomeView extends ConsumerWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        const SizedBox(
            width: 300,
            child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(children: [
                  SearchView(),
                  Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: SortByView(),
                  ),
                  Divider(),
                  SizedBox(
                    child: Padding(padding: EdgeInsets.only(top: 8), child: ShipFiltersView()),
                  ),
                  Expanded(
                    child: Padding(padding: EdgeInsets.only(top: 0), child: EntityFilteringTabs()),
                  ),
                ]))),
        Expanded(
            child: Column(
          children: [
            SizedBox.fromSize(size: const Size.fromHeight(200), child: const ListEntitiesView()),
            const Expanded(flex: 1, child: GraphViewGraphic()),
          ],
        ))
      ],
    );
  }
}
