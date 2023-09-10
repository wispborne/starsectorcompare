import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starsectorcompare/views/searchView.dart';
import 'package:starsectorcompare/views/shipFiltersView.dart';
import 'package:starsectorcompare/views/sortByView.dart';

import 'graphViewGraphic.dart';
import 'listEntitiesView.dart';

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
                    padding: EdgeInsets.only(top: 16),
                    child: SizedBox(
                      height: 180,
                      child: ShipFiltersView(),
                    ),
                  ),
                  SortByView()
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
