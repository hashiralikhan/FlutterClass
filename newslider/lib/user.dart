import 'package:flutter/material.dart';

class user extends StatefulWidget {
  const user({super.key});

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
          ListTile(title: Text("My work"),),
            ListTile(title: Text("login Member"),),
              ListTile(title: Text("Students attendence"),),
        ],
      ),
     ),
    );
  }
}