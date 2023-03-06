import 'package:flutter/material.dart';

class DashBoard1 extends StatelessWidget {
  const DashBoard1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 250.0,
              width: 250.0,
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  // borderRadius: BorderRadius.all(Radius.circular(35)),
                  shape: BoxShape.circle,
                  image:
                      DecorationImage(image: AssetImage("images/profile.jpg")),
                  border: Border.all(
                      color: Colors.orange,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      width: 5.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.deepOrange,
                        blurRadius: 5,
                        spreadRadius: 10,
                        offset: Offset(10, 10))
                  ]),
              child: Text(
                "hello Flutter".toUpperCase(),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Elevated Btn"),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(10),
                  fixedSize: Size(400, 60),
                  alignment: Alignment.bottomCenter,
                  textStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  backgroundColor: Colors.amberAccent,
                  foregroundColor: Colors.blueGrey,
                  elevation: 20,
                  shadowColor: Colors.green,
                  side: BorderSide(
                      color: Colors.black, width: 5, style: BorderStyle.solid),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(52)))),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.ac_unit),
              label: Text("Elevated btn with icon"),
              style: ElevatedButton.styleFrom(),
            ),
            OutlinedButton(onPressed: (){}, child: Text("hello"),
            style: OutlinedButton.styleFrom(
              shape: StadiumBorder()
            ),),
            TextButton(onPressed: (){}, child: Text("TExt button"),),
            ElevatedButton(onPressed: null, child: Text("disable button"))
          ],
        ),
      ),
    );
  }
}
