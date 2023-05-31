// import 'package:dart_extensions_methods/dart_extension_methods.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:starsectorcompare/appState.dart';
//
// @Deprecated("Using graphicViewGraphic")
// class GraphView extends ConsumerWidget {
//   const GraphView({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     var ships = ref.watch(AppState.shipsByHullIdByModId);
//     var vanillaShips = ships[null];
//     var vanillaData = vanillaShips?.values
//         .map((ship) => LineChartBarData(
//               spots: [
//                 FlSpot(0, ship.hitpoints.toDouble()),
//                 FlSpot(1, ship.armor_rating.toDouble()),
//                 FlSpot(2, ship.max_speed.toDouble()),
//               ],
//               isCurved: false,
//             ))
//         .toList();
//     // var vanillaData = ;
//     return Column(
//       children: [
//         Container(height: 10),
//         Expanded(
//             child: Padding(
//                 padding: const EdgeInsets.all(10),
//                 child: LineChart(
//                   LineChartData(
//                     lineBarsData: vanillaData,
//                     showingTooltipIndicators: vanillaData
//                             ?.map((item) => ShowingTooltipIndicators(item.spots
//                                 .map((spot) => LineBarSpot(item, 0, spot))
//                                 .toList()))
//                             .toList() ??
//                         [],
//                     titlesData: FlTitlesData(
//                       bottomTitles: AxisTitles(
//                           sideTitles: SideTitles(
//                         showTitles: true,
//                         interval: 1,
//                         getTitlesWidget: (value, titleMeta) {
//                           return switch (value.toInt()) {
//                             0 => Text("Hitpoints"),
//                             1 => Text("Armor"),
//                             2 => Text("Max Speed"),
//                             _ => Text(value.toString()),
//                           };
//                         },
//                       )),
//                       leftTitles: AxisTitles(
//                           sideTitles: SideTitles(
//                         showTitles: true,
//                         getTitlesWidget: (value, titleMeta) {
//                           return Text(value.toString());
//                         },
//                       )),
//                     ),
//                     lineTouchData: LineTouchData(
//                       enabled: true,
//                       touchTooltipData: LineTouchTooltipData(
//                         tooltipBgColor: const Color(0xFF000000),
//                         tooltipRoundedRadius: 8,
//                         getTooltipItems: (touchedSpots) {
//                           return touchedSpots.map((LineBarSpot touchedSpot) {
//                             final textStyle = TextStyle(
//                               color: touchedSpot.bar.gradient?.colors[0] ??
//                                   touchedSpot.bar.color,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 14,
//                             );
//                             return LineTooltipItem(
//                               '${touchedSpot.x}, ${touchedSpot.y.toStringAsFixed(2)}',
//                               textStyle,
//                             );
//                           }).toList();
//                         },
//                       ),
//                     ),
//                   ),
//                 ))),
//       ],
//     );
//   }
// }
