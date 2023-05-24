import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text("drawer example"),),
     drawer: Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Text("data")),
          ListTile(title: Text("user"),),
          ListTile(title: Text("login as admin"),)
        ],
        
      ),
     ),
    );
  }
}

Widget abc(var name){
  return   Container(
            color: Colors.amberAccent,
            height: 100,

            child: Row(
              children: [
                Container(
                  color:Colors.blue,
                  height: 90, width: 90,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    
                    Text(name),
                    
                  ],),
                )
              ],
            ),
          );
}