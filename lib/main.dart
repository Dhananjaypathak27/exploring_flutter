




import 'package:flutter/material.dart';
import 'package:flutter_test_project/LineChartScreen.dart';
import 'package:flutter_test_project/screens/AppBarScreen.dart';
import 'package:flutter_test_project/screens/CustomWidgetScreen.dart';
import 'package:flutter_test_project/screens/DashBoard.dart';
import 'package:flutter_test_project/screens/DashBoard1.dart';
import 'package:flutter_test_project/screens/ListViewBuilder.dart';
import 'package:flutter_test_project/screens/ListViewScreen.dart';
import 'package:flutter_test_project/screens/NavigationDrawerScreen.dart';
import 'package:flutter_test_project/screens/NavigatorOne.dart';
import 'package:flutter_test_project/screens/ProfileScreen.dart';
import 'package:flutter_test_project/screens/RowColumnExpandedScreen.dart';
import 'package:flutter_test_project/screens/SimpleFloatingActionButtonScreen.dart';
import 'package:flutter_test_project/screens/StackAndPositionScreen.dart';
import 'package:flutter_test_project/screens/StateFullClassScreen.dart';

// main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LineChartScreen()
    );
  }
}