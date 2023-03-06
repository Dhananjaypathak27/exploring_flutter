import 'package:flutter/material.dart';

class NavigationDrawerAndBottomAppBarFloatingBtnScreen extends StatelessWidget {
  const NavigationDrawerAndBottomAppBarFloatingBtnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.0,
        clipBehavior: Clip.antiAlias,
        shape: CircularNotchedRectangle(),
        child: Container(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.home,color: Colors.white,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Colors.white)),
              IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white)),
              IconButton(onPressed: (){}, icon: Icon(Icons.person,color: Colors.white)),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        // mini: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.amber,
        // shape: BeveledRectangleBorder(
        //   borderRadius: BorderRadius.circular(20),
        //   side: BorderSide(color: Colors.blue,width: 2.0,style: BorderStyle.solid)
        // ),
        // elevation: 10,
        child: Icon(
          Icons.add
        ),
      ),
      drawer: Drawer(
        elevation: 0,
        child: ListView(
          children: [
           const UserAccountsDrawerHeader(
              accountName: Text("Dhananjay Pathak"),
              accountEmail: Text("d.pathak@gmail.com"),
              currentAccountPicture: CircleAvatar(
                foregroundImage: NetworkImage(
                    "http://t1.gstatic.com/licensed-image?q=tbn:ANd9GcQavfSfyOVYO54wkFq1cV0yguHfZSUiYwmiGvtdlDDav_wKZYsyy9NPBk952R2zXNSs"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  foregroundImage: NetworkImage(
                      "http://t1.gstatic.com/licensed-image?q=tbn:ANd9GcQavfSfyOVYO54wkFq1cV0yguHfZSUiYwmiGvtdlDDav_wKZYsyy9NPBk952R2zXNSs"),
                ),
                CircleAvatar(
                  foregroundImage: NetworkImage(
                      "http://t1.gstatic.com/licensed-image?q=tbn:ANd9GcQavfSfyOVYO54wkFq1cV0yguHfZSUiYwmiGvtdlDDav_wKZYsyy9NPBk952R2zXNSs"),
                ),
              ],
            ),
            // DrawerHeader(
            //   padding: EdgeInsets.all(0),
            //   child: Container(
            //     color: Colors.blue,
            //     child: Column(
            //       children: [Text("Hii")],
            //     ),
            //   ),
            // ),
            ListTile(
              leading: const Icon(Icons.abc),
              trailing: const Icon(Icons.add),
              title:const  Text("this is add"),
              onTap: () {},
            ),
            ListTile(
              leading:const  Icon(Icons.abc),
              trailing: const Icon(Icons.add),
              title:const  Text("this is add"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.abc),
              trailing: const Icon(Icons.add),
              title: const Text("this is add"),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text("This is Heading"),
            ),
            ListTile(
              leading: Icon(Icons.abc),
              title: Text("this is add"),
            ),
            ListTile(
              leading: Icon(Icons.abc),
              title: Text("this is add"),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text.rich(TextSpan(children: [
          TextSpan(text: "simple "),
          TextSpan(
              text: "Text",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold)),
          TextSpan(
              text: " From Flutter", style: TextStyle(color: Colors.black)),
        ])),
      ),
    );
  }
}
