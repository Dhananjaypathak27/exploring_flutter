import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_project/screens/ListViewBuilder.dart';
import 'package:flutter_test_project/screens/ProfileScreen.dart';
import 'package:flutter_test_project/screens/StackAndPositionScreen.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SimpleFloatingActionButtonScreen extends StatefulWidget {
  const SimpleFloatingActionButtonScreen({Key? key}) : super(key: key);

  @override
  State<SimpleFloatingActionButtonScreen> createState() => _SimpleFloatingActionButtonScreenState();
}

class _SimpleFloatingActionButtonScreenState extends State<SimpleFloatingActionButtonScreen> {

  int _selectedIndex = 0;
  static const _widgetOptions =[
    StackAndPositionScreen(),
    ListViewBuilderScreen(),
    Text("screen 3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "this is Appbar"
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Fluttertoast.showToast(msg: "this is simple toast",gravity: ToastGravity.CENTER);
        },

        child: Icon(Icons.add),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.business),label: "building"),
          BottomNavigationBarItem(icon: Icon(Icons.school),label: "school"),
        ],
        currentIndex: _selectedIndex,
        onTap: (index){
        _onItemTap(index);
        },
      ),
    );
  }

  void _onItemTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
}


