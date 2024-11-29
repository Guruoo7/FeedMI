import 'package:feedmi/home_page.dart';
import 'package:feedmi/navigation.dart';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import "package:permission_handler/permission_handler.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Feedmi",
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: navigation());
  }
}
