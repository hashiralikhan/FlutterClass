// ignore_for_file: prefer_const_constructors, duplicate_ignore
import 'package:flutter/material.dart';
import 'package:firstflutter/app.dart';

void main(){
  runApp(const MyApp());
  
  
  }
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => App(),));
        }, child: Text("data")),
      ),
    );
  }
}