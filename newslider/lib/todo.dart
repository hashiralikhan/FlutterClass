
import 'package:flutter/material.dart';

class todo extends StatefulWidget {
  

  @override
  State<todo> createState() => _todoState();
}


class _todoState extends State<todo> {
  var output ="";
  List<dynamic> St= [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text("Todo app",
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
        ),
      ),
      body:
       ListView.builder(
        
        
        itemCount: St.length,
        itemBuilder: (context,index){
        return Container(
          
          height: 50,
          width: 20,
          color: Color.fromARGB(255, 101, 180, 77),
          margin: EdgeInsets.only(top: 5),
          child: ListTile(
            title: Text("${St[index]}"),
            trailing: Container(
              width: 50,
              child: Row(
                children: [ 
                  GestureDetector(onTap:(){
                     showDialog(context: context, builder: (context){
          return AlertDialog(
            title: Text("Edit item",style: TextStyle(color: Colors.amberAccent),),
            content: TextField(
              onChanged: (value) {
                output=value;
              },
            ),
            actions: [
              ElevatedButton(onPressed: (){
                
                setState(() {
                  St.replaceRange(index, index+1, {output});
                });
                        Navigator.of(context).pop();

              }, child: Text("Edit"))
            ],

          );
        });
                  
                    
                  }  ,child: Icon(Icons.edit)),

                  GestureDetector(onTap:(){
                    setState(() {
                      St.removeAt(index);
                    });
                  }  ,child: Icon(Icons.delete)),
                ],
              ),
            ) ,
          ),
        );
      }),

      floatingActionButton: FloatingActionButton(onPressed: (){
        
        showDialog(context: context, builder: (context){
          return AlertDialog(
            backgroundColor: Colors.black,

            title: Text("add item",style: TextStyle(color: Color.fromARGB(122, 255, 140, 64)),),
            content: TextField(
              style: TextStyle(color: Colors.white),
              onChanged: (value) {
                output=value;
              },
            ),
            actions: [
              ElevatedButton(onPressed: (){
                Colors.deepOrangeAccent;
                setState(() {
                  St.add(output);
                });
                
                        Navigator.of(context).pop();
                
              }, child: Text("add",style: TextStyle(color: Color.fromARGB(255, 230, 35, 9)),),)
            ],

          );
        });
      },child: Text("add",style: TextStyle(color: Color.fromARGB(120, 231, 8, 8)),),),
    );
  }
}