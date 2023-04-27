import 'package:dart_extensions_methods/dart_extension_methods.dart';
import 'package:fimber/fimber.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starsectorcompare/appState.dart';

class GraphView extends ConsumerWidget {
  const GraphView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var ships = ref.watch(AppState.shipsByHullIdByModId);
    return Column(
      children: [
        Container(height: 10),
        Expanded(
          child: LineChart(LineChartData(lineBarsData: [
            LineChartBarData(
              spots: ships[null]
                  ?.values
                  .map((e) => FlSpot(0, double.parse(e.hitpoints ?? "-1")))
                  .toList()
                  .also((self) {
                Fimber.i("Updated chart.");
              }),
              isCurved: false,
            )
          ])),
        ),
      ],
    );
  }
}
