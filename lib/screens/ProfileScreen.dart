import 'package:flutter/material.dart';
import 'package:flutter_test_project/models/StoryModel.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  List<StoryModel> list = [];


  @override
  Widget build(BuildContext context) {

    for(int i=0;i<10;i++){
      if(i==0){
        list.add(StoryModel("New", Icons.add, null));
      }
      else{
        list.add(StoryModel("batman",null, "https://static.wikia.nocookie.net/dccu/images/2/2e/Batman_-_Justice_League_-_promo.jpg/revision/latest?cb=20191214215631"));
      }

    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              "Batman",
              style: TextStyle(color: Colors.black),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black,
            )
          ],
        ),
        actions: const [
          Icon(
            Icons.line_weight_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: 20.0,
          )
        ],
      ),
      body: Container(

        padding: EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [TopSection(), AboutSection(),StorySection(list),TabSection()],
        ),
      ),
    );
  }
}

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Stack(
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    "https://i.ytimg.com/vi/dxa34RatmSc/maxresdefault.jpg"),
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(100)),
                  )),
            ],
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "1,554",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Text(
                "Posts",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "1,439",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Text(
                "Followers",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "890",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Text(
                "Following",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Bruce Wayne",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          "Batman is the alias of Bruce Wayne, a wealthy American playboy, philanthropist, and industrialist who resides in Gotham City.",

        ),
        SizedBox(height: 10,),
        Container(
          width: MediaQuery.of(context).size.width,
          child: OutlinedButton(onPressed: (){}, child: Text(
            "Edit Profile",style: TextStyle(color: Colors.black),
          )),
        )


      ],
    );
  }
}

class StorySection extends StatelessWidget {
  late List<StoryModel> list;
  StorySection(this.list, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length ?? 0,
        itemBuilder: (context, index) {
          return Column(
            children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          foregroundImage: list[index].imageUrl!=null ? NetworkImage(list[index].imageUrl ?? ""):null,
                          child: Icon(list[index].icon,color: Colors.black,),
                          radius: 28,
                        )
                      ),
                      Text(list[index].title)
                    ],
                  ),
                )
            ],
          );
        },
      ),
    );

  }
}

class TabSection extends StatelessWidget {
  const TabSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.directions_bike),
                ),
                Tab(
                  icon: Icon(
                    Icons.directions_car,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: TabBarView(
            children: [
              // first tab bar view widget
              Container(
                color: Colors.red,
                child: Center(
                  child: Text(
                    'Bike',
                  ),
                ),
              ),

              // second tab bar viiew widget
              Container(
                color: Colors.pink,
                child: Center(
                  child: Text(
                    'Car',
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


