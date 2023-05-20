// ignore_for_file: camel_case_types, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
class info extends StatefulWidget {
  const info({super.key});

  @override
  State<info> createState() => _infoState();
}

class _infoState extends State<info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Column( 
      
        children: [
          abc(),
          abc(),
          abc(),abc(),abc(),abc(),abc(),
        ],
      ),
    );
  }
}

Widget abc(){
  return ListTile(
leading: CircleAvatar(
  backgroundColor: Colors.black,
  radius: 20,
),
title: Text("Hashir"),
subtitle: Text("Hey...!"),
trailing: Column(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    Text("4:25 PM"),
    CircleAvatar(backgroundColor: const Color.fromARGB(255, 163, 173, 163),radius: 19,)
  ],
),


  );
}