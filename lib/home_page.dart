import 'package:feedmi/chat.dart';
import 'package:feedmi/food_items.dart';
import 'package:feedmi/navigation.dart';
import 'package:feedmi/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screens = [Home(), Chat(), Profile()];
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              header(size),
              Padding(padding: EdgeInsets.symmetric(vertical: 4)),
              searchBar(size),
              Padding(padding: EdgeInsets.symmetric(vertical: 11)),
              offerCard(size),
              SizedBox(
                height: size.height / 50,
              ),
              Container(
                width: size.width / 1.1,
                child: Text(
                  "Eat Healthy Live healthy",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: size.height / 30,
              ),
              itemsList(size),
            ],
          ),
        ),
      ),
    );
  }

  Widget offerCard(Size size) {
    return Container(
      height: size.height / 3.5,
      width: size.width / 1.05,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Colors.pink, Colors.pinkAccent]),
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 233, 79, 92),
      ),
      child: Column(
        children: [
          Container(
            height: size.height / 7,
            width: size.width / 7,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/adss.png"))),
          ),
          Container(
            width: size.width / 1.2,
            child: Text("Welcome",
                style: TextStyle(color: Colors.white, fontSize: 15)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: size.width / 1.2,
              child: Text("GET 50% OFF \nON FIRST ORDER",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          Container(
            width: size.width / 1.2,
            child: Text("Order Now >",
                style: TextStyle(color: Colors.white, fontSize: 15)),
          ),
        ],
      ),
    );
  }

  Widget itemsList(Size size) {
    return Container(
      height: size.height / 2,
      width: size.width,
      child: GridView.builder(
          itemCount: foodItemList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, mainAxisSpacing: 30),
          itemBuilder: (context, index) {
            return Container(
              height: size.height / 5,
              width: size.width / 1,
              child: Column(
                children: [
                  Container(
                    height: size.height / 15,
                    width: size.width / 2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(foodItemList[index].imageUrl))),
                  ),
                  Text(foodItemList[index].name)
                ],
              ),
            );
          }),
    );
  }

  Widget searchBar(Size size) {
    return Container(
      height: size.height / 15,
      width: size.width / 1.05,
      decoration: BoxDecoration(
        border: Border.all(width: 0.9, color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(children: [
        SizedBox(
          width: size.width / 40,
        ),
        Icon(
          Icons.search,
          color: Colors.pink,
        ),
        SizedBox(
          width: size.width / 20,
        ),
        Expanded(
            child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none, hintText: "Search for a vegetable..."),
        ))
      ]),
    );
  }

  Widget header(Size size) {
    return Container(
      height: size.height / 10,
      width: size.width,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.location_on,
              color: Colors.pink,
            ),
          ),
          Text(
            "NH209, Silvarpatti \n#gpdf",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: size.width / 4,
          ),
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("assets/images/sst.png"),
            backgroundColor: Colors.pinkAccent,
          )
        ],
      ),
    );
  }
}
