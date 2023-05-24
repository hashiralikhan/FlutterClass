import 'package:flutter/material.dart';
import 'package:newslider/user.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


       body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
//               CircleAvatar(
// backgroundColor: Colors.black,
//   radius: 20,
// ),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 40,
            ),
            ),



           Padding(
  padding:
      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: TextFormField(
        // controller: emailController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(), labelText: "Email"),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your email';
          }
          return null;
        },
     ),
  ),



Padding(
  padding:
  const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
    child: TextFormField(
      // controller: passwordController,
      obscureText: true,
      decoration: const InputDecoration(
        border: OutlineInputBorder(), labelText: "Password"),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your password';
        }
        return null;
      },
   ),
),





        // SizedBox(height: 20,),
        //    Container(
        //    width: 200,
        //    child: TextField(),
        // ),
        //  SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => user()));
          }, child: Text("Login")),
          ],
        ),
      ),
    );
  }
}