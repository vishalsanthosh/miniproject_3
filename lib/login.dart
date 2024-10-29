import 'package:flutter/material.dart';
import 'package:mini_project_3/mainscreen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder(),label: Text("USERNAME")),
              ),
              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder(),label: Text("PASSWORD")),
              ),
              SizedBox(height: 50,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstPage()));
              }, child: Text("Log In"))
            ],
          ),
        ),
      )
    );
  }
}