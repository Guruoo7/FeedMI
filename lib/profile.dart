import 'package:flutter/material.dart';
import 'package:feedmi/profilescreen.dart';

void main() {
  runApp(const Profile());
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const ProfileScreen(),
    );
  }
}
