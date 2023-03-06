import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';

class BarCharData{
  int id;
  String name;
  int y;
  Color color;

  BarCharData(this.id, this.name, this.y, this.color);

}


List<BarCharData> barList = [
  BarCharData(1, "choco", 10, Color(0xffff7d94)),
  BarCharData(2, "milk", 4, Color(0xff0f44e0)),
  BarCharData(3, "apple", 15, Color(0xff9adc4b)),
  BarCharData(4, "choco", 22, Color(0xffb18000)),
];