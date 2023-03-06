import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_project/models/PricePointLineChart.dart';
import 'package:flutter_test_project/screens/BarChartScreen.dart';
import 'package:flutter_test_project/screens/RadioButtonScreen.dart';

class LineChartScreen extends StatefulWidget {
  const LineChartScreen({Key? key}) : super(key: key);

  @override
  State<LineChartScreen> createState() => _LineChartScreenState();
}

class _LineChartScreenState extends State<LineChartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Line Chart Screen"),
        ),
        body: Column(
          children: [
            AspectRatio(
              aspectRatio: 2,
              child: LineChart(
                LineChartData(
                  lineBarsData: [
                    LineChartBarData(
                      spots: listPrincePoint().map((e) => FlSpot(e.x, e.y)).toList(),
                      isCurved: false,
                      dotData: FlDotData(show: false),
                    )
                  ]
                )
              ),
            ),
            ElevatedButton(onPressed: (){

              Navigator.push(context,MaterialPageRoute(builder: (context) => BarChartScreen(),));

            }, child:Text("Move BarChart Screen")
            ),
            ElevatedButton(onPressed: (){

              Navigator.push(context,MaterialPageRoute(builder: (context) => RadioButtonScreen(),));

            }, child:Text("Move Radio Button Screen")
            ),
          ],
        ),
      ),
    );
  }
}
