import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  var result = "";



Widget btn(var taxtt){

return ElevatedButton(onPressed: (){
  setState(() {
    result = result +taxtt;
  });
}, child: Text(taxtt));
}

clear(){
setState(() {
  result="";
});}


show(){
  Parser p =Parser();
  Expression exp = p.parse(result);
  ContextModel cm = ContextModel();
  double eval = exp.evaluate(EvaluationType.REAL,cm);

  setState(() {
    result=eval.toString();
  });

}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(result,style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
            btn("1"),
            btn("2"),
            btn("3"),
            btn("4"),
              ],
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
            btn("5"),
            btn("6"),
            btn("7"),
            btn("8"),
              ],
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
            btn("9"),
            btn("0"),
            btn("+"),
            btn("-"),
              ],
            ),  
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
            btn("*"),
            btn("/"),
            ElevatedButton(onPressed: clear, child: Text("Clear")),
            ElevatedButton(onPressed: show, child: Text("="))
              ],
            )
          ],
        ),
      ),
    );
  }
}