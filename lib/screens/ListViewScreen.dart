import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // itemExtent: 20,//to add height of each tile
        // reverse: true, // will scroll upward
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.rocket_launch),
              backgroundColor: Colors.purple[400],
            ),
            title: Text("Launch Rocket"),
            subtitle: Text("this is for Launch"),
            trailing: Text("1000"),
            onTap: () {},
            tileColor: Colors.purple.shade50,
          ),
          ListTile(
            leading: Icon(Icons.rocket_launch),
            title: Text("Launch Rocket"),
            subtitle: Text("this is for Launch"),
            trailing: Text("Add To Cart"),
          ),
          ListTile(
            leading: Icon(Icons.rocket_launch),
            title: Text("Launch Rocket"),
            subtitle: Text("this is for Launch"),
            trailing: Icon(Icons.add),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: CircleAvatar(
              child: Text("c"),
              backgroundColor: Colors.green,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          )
        ],
      ),
    );
  }
}
