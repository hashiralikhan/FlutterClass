
import 'package:flutter/material.dart';
import 'package:my_loginpage/info.dart';

class Data extends StatefulWidget {
  const Data({super.key});

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
           width: 200,
           child: TextField(),
        ),
        SizedBox(height: 20,),
           Container(
           width: 200,
           child: TextField(),
        ),
         SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => info(),));
          }, child: Text("data")),
          ],
        ),
      ),
    );
  }
}


