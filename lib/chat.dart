import 'package:feedmi/home_page.dart';
import 'package:feedmi/message.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Home();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
            child: Column(
          children: [MyCardWidget(), MyCardWidget(), MyCardWidget()],
        )),
      ),
    );
  }
}

class MyCardWidget extends StatefulWidget {
  @override
  State<MyCardWidget> createState() => _MyCardWidgetState();
}

class _MyCardWidgetState extends State<MyCardWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: 400,
      height: 200,
      padding: EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              minVerticalPadding: 20,
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/ijk.png"),
              ),
              title: Text("saravanan",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              subtitle: Text(
                "palani Highways \nRediyarchaththiram",
                style: TextStyle(fontSize: 15),
              ),
            ),
            ButtonBar(
              children: <Widget>[
                ElevatedButton(
                  child: Text("Click To order"),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => message()));
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
