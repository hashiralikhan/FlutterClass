import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
class api extends StatefulWidget {
 

  @override
  State<api> createState() => _apiState();
}

class _apiState extends State<api> {
  getuser() async{

    var users=[];
    var response =await http.get(Uri.https('jsonplaceholder.typicode.com','users'));
    var jsonData = jsonDecode(response.body);
    

    for (var i in jsonData) {
      UserModel User = UserModel(i['name'],i['username'],i['email']);
      users.add(User);  
    }
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getuser(),
        builder: (context, a) {
         if (a.data == null) {
          return Container(child: Text("nothing in api"),);
           
         } else {
              return ListView.builder(
            itemCount: a.data.length ,
            itemBuilder: (context, i) {
              return ListTile(title: Text(a.data[i].name),);
            },
          );
         }
         
         
          
          
        
      },)


    );
  }
}


class UserModel{
  var name;
  var username;
  var email;
  UserModel(this.name,this.username,this.email);
}