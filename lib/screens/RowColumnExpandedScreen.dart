import 'package:flutter/material.dart';

class RowColumnExpandedScreen extends StatelessWidget {
  const RowColumnExpandedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: const [
                Icon(Icons.star,size: 16,),
                Icon(Icons.star,size: 16,),
                Icon(Icons.star,size: 16,),
                Icon(Icons.star_border,size: 16,),
                Icon(Icons.star_border,size: 16,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    Icon(Icons.access_alarm_outlined),
                    Text("Ac Unit")
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.abc),
                    Text("Abc")
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.ac_unit_outlined),
                    Text("ICE")
                  ],
                ),
              ],
            ),
            Row(
              children: const [
                Expanded(flex:2,child: Image(image: NetworkImage("https://snworksceo.imgix.net/rce/eb5fe1d1-74e9-4076-969e-59212727451a.sized-1000x1000.webp?w=1000"))),
                Expanded(child: Image(image: NetworkImage("https://snworksceo.imgix.net/rce/eb5fe1d1-74e9-4076-969e-59212727451a.sized-1000x1000.webp?w=1000")))
              ],
            )
          ],
        ),
      ),
    );
  }
}
