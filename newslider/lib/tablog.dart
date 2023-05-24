import 'package:flutter/material.dart';
import 'package:newslider/login.dart';
import 'package:newslider/register.dart';

class tablog extends StatefulWidget {
  const tablog({super.key});

  @override
  State<tablog> createState() => _tablogState();
}

class _tablogState extends State<tablog> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
      appBar: AppBar(
        title: TabBar(
          
          unselectedLabelColor: Colors.black54,
          labelColor: Colors.orange,
          indicatorColor: Colors.orange,
          tabs: [
          Tab(child: Text("Login"),),
          Tab(child: Text("Register"),)
        ]),
      ),

      body: TabBarView(children: [
        login(),
        Register(),

      ]),
    ));
  }
}