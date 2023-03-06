import 'package:flutter/material.dart';

class StackAndPositionScreen extends StatelessWidget {
  const StackAndPositionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      // appBar: AppBar(
      //   backgroundColor: Colors.black54,
      //   title: Text("Stack"),
      // ),
      body: Center(
        child: Container(
          height: 600,
          width: 300,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Positioned(
                  bottom: 10,
                    child: Text("Bruce Wayne wages eternal war on the criminals of Gotham City.",style: TextStyle(color: Colors.white,fontSize: 10),)),
                Positioned(
                    bottom: 50,
                    right: 0,
                    child: Text("BATMAN",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),)),
                Positioned(
                    top: 60,
                    child: Text("He is vengeance. ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                Positioned(child: Text("He is the night.",style: TextStyle(color: Colors.white,fontSize:40),)),

              ],
            ),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage("https://images2.minutemediacdn.com/image/fetch/w_2000,h_2000,c_fit/https%3A%2F%2Fbamsmackpow.com%2Ffiles%2Fimage-exchange%2F2018%2F08%2Fie_66991.jpeg"),
            ),boxShadow: [
              BoxShadow(color: Colors.white,blurRadius: 10,blurStyle: BlurStyle.normal)
          ],
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
        ),
      ),


      // body: Center(
      //   child: Stack(
      //     alignment: Alignment.center,
      //     children: [
      //       Container(
      //         color: Colors.blue,
      //         height: 200,
      //         width: 200,
      //       ),
      //       Positioned(
      //         top: 0,
      //         child: Container(
      //           color: Colors.red,
      //           height: 100,
      //           width: 100,
      //         ),
      //       ),
      //       Container(
      //         color: Colors.green,
      //         height: 50,
      //         width: 50,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
