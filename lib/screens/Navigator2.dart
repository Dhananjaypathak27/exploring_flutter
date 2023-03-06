import 'package:flutter/material.dart';



class Navigator2 extends StatelessWidget {
  Navigator2( this.name,{Key? key}) : super(key: key);
  var name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(name),
      ),
    );
  }
}
