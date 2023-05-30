import 'package:flutter/material.dart';
import 'package:newslider/todo.dart';

class user extends StatefulWidget {
  const user(jsonData, {super.key});

  @override
  State<user> createState() => _userState();
}

class _userState extends State<user> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text("User Panel"),),
     drawer: Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Text("User-name"),),
          ListTile(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => todo()));
          },title: Text("Todo"),),
            ListTile(title: Text("login Member"),),
              ListTile(title: Text("Students attendence"),),
        ],
      ),
     ),
    );
  }
}