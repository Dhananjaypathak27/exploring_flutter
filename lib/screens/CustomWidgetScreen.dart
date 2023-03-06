import 'package:flutter/material.dart';

class CustomWidgetScreen extends StatelessWidget {
  const CustomWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("this is app Bar"),
      ),
      body: ListView(
        children: [
         CustomListTime("add title", "subTitle", Icons.abc, Icons.abc_outlined),
         CustomListTime("add title", "subTitle", Icons.abc, Icons.abc_outlined),
         CustomListTime("add title", "subTitle", Icons.abc, Icons.abc_outlined),
         CustomListTime("add title", "subTitle", Icons.abc, Icons.abc_outlined),
        ],
      ),
    );
  }
}


class CustomListTime extends StatelessWidget {

  String title,subTitle;
  IconData leadingIcon = Icons.add,trailingIcon = Icons.add;


  CustomListTime(
      this.title, this.subTitle, this.leadingIcon, this.trailingIcon, {super.key});

  @override
  Widget build(BuildContext context) {
    return const  ListTile(
      title: Text(""),
      leading: Icon(Icons.add),
      subtitle: Text(""),
      trailing: Icon(Icons.add),
    );
  }
}

