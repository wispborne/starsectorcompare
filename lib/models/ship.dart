import 'package:starsectorcompare/models/shipCsv.dart';
import 'package:starsectorcompare/models/shipJson.dart';

class Ship {
  String id;
  ShipCsv shipCsv;
  ShipJson shipJson;

  Ship({required this.id, required this.shipCsv, required this.shipJson});
}