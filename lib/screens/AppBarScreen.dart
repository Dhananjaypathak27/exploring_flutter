import 'package:flutter/material.dart';


//app bar has 3 portion leading icon,title text, action buttons

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu),onPressed: (){},),
        title: Text("this is appBar Screen".toUpperCase()),
        centerTitle: true,
        backgroundColor: Colors.purple,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
        flexibleSpace: Image(
          image: NetworkImage("https://snworksceo.imgix.net/rce/eb5fe1d1-74e9-4076-969e-59212727451a.sized-1000x1000.webp?w=1000")
          ,fit: BoxFit.cover,
        ),
        actions: [
          Icon(Icons.access_alarm_outlined),
          Icon(Icons.search),
          Icon(Icons.shopping_cart),
        ],
      ),
     body: Center(
       child: Text("this is for AppBar Screen".toUpperCase()),
     ),
    );
  }
}
