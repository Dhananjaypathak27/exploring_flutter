import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("DashBoard")),
      ),
      body: Column(
        children: [
          Image(
            image: AssetImage("images/profile.jpg"),
            height: 200,
          ),
          Image.network(
              "http://t1.gstatic.com/licensed-image?q=tbn:ANd9GcQavfSfyOVYO54wkFq1cV0yguHfZSUiYwmiGvtdlDDav_wKZYsyy9NPBk952R2zXNSs"),
          Icon(
            Icons.ac_unit,
            size: 100,
            color: Colors.red,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.magnifyingGlass),
            iconSize: 50,
            color: Colors.amberAccent,
            splashColor: Colors.deepOrange,
            highlightColor: Colors.blueGrey,
          )
        ],
      ),
    );
  }
}

int generateRandom() {
  return Random().nextInt(10);
}
