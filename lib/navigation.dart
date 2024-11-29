import 'package:feedmi/chat.dart';
import 'package:feedmi/home_page.dart';
import 'package:feedmi/profile.dart';
import 'package:flutter/material.dart';

class navigation extends StatefulWidget {
  navigation({Key? key}) : super(key: key);

  @override
  State<navigation> createState() => _navigationState();
}

class _navigationState extends State<navigation> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    final screens = [Home(), Chat(), Profile()];
    return Scaffold(
        body: screens[currentindex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.pink,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentindex,
          onTap: (index) => setState(() => currentindex = index),
          selectedIconTheme: IconThemeData(size: 30),
          unselectedIconTheme: IconThemeData(size: 30),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.food_bank),
              label: 'Haulers',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'profile',
            ),
          ],
        ));
  }
}
