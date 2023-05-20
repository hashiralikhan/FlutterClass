// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_loginpage/data.dart';
void main() {
  runApp(MyApp());
  
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("login page")),
        ),
        body: Data(),
      ),
    );
  }
}