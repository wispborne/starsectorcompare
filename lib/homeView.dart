import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starsectorcompare/appState.dart';
import 'package:starsectorcompare/shipSelectionView.dart';

import 'graphView.dart';
import 'graphViewGraphic.dart';

class HomeView extends ConsumerWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        ShipSelectionView(),
        Expanded(
          child: GraphViewGraphic(),
        ),
      ],
    );
  }
}
