import 'package:flutter/material.dart';

import 'app.dart';

class file extends StatefulWidget {
  const file({super.key});

  @override
  State<file> createState() => _fileState();
}

class _fileState extends State<file> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => App(),));
        }, child: Text("data")),
    );
  }
}