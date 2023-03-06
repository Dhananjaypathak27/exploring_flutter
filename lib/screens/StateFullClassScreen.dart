import 'package:flutter/material.dart';

class SateFullClassScreen extends StatelessWidget {
  const SateFullClassScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
      ),
      body: ListView(
        children: [
          CustomListTile()
        ],
      ),
    );
  }
}


class CustomListTile extends StatefulWidget {
  const CustomListTile({Key? key}) : super(key: key);

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {

  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("this is title"),
      trailing: isLiked? Icon(Icons.link) : Icon(Icons.abc_outlined),
      onTap: (){
        setState(() {
          isLiked = !isLiked;
        });
      },
    );
  }
}
