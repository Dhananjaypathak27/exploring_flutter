import 'package:flutter/material.dart';

import 'Navigator2.dart';

class Navigator1 extends StatefulWidget {
  const Navigator1({Key? key}) : super(key: key);

  @override
  State<Navigator1> createState() => _Navigator1State();
}

class _Navigator1State extends State<Navigator1> {

   var textEditingController = TextEditingController();
   var text="";

   @override
  void initState() {
    super.initState();
    textEditingController.addListener(() {
      updateText();
    });
  }


   @override
  void dispose() {
     textEditingController.dispose();
     super.dispose();

  }

  updateText(){
    setState(() {
      text = textEditingController.text;
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration:const InputDecoration(
                prefixIcon: Icon(Icons.temple_buddhist_rounded),
                border: OutlineInputBorder()
              ),
              controller: textEditingController,
            ),
            Text("Text entered is- $text"),
            OutlinedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Navigator2(   textEditingController.text);
                }));
              }, child: Text("Move to Next Screen"),
            ),
          ],
        ),
      ),
    );
  }
}



