import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_project/models/BarCharData.dart';

class BarChartScreen extends StatefulWidget {
  const BarChartScreen({Key? key}) : super(key: key);

  @override
  State<BarChartScreen> createState() => _BarChartScreenState();
}

class _BarChartScreenState extends State<BarChartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        margin: EdgeInsets.only(top: 20),
        child: AspectRatio(
          aspectRatio: 2,
          child: BarChart(BarChartData(
              alignment: BarChartAlignment.center,
              maxY: 25,
              minY: -25,
              groupsSpace: 12,
              barTouchData: BarTouchData(enabled: true),
              barGroups: barList
                  .map((e) => BarChartGroupData(x: e.id, barRods: [
                        BarChartRodData(
                            toY: e.y.toDouble(),
                            width: 25,
                            color: e.color,
                            borderRadius: BorderRadius.zero),
                BarChartRodData(
                    toY: 10,
                    width: 25,
                    color: Colors.red,
                    borderRadius: BorderRadius.zero),
                      ]))
                  .toList())),
        ),
      )),
    );
  }
}
