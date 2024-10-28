import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          TextFormField(
            decoration: InputDecoration(border: OutlineInputBorder(),label: Text("USERNAME")),
          ),
          SizedBox(height: 20,),
          TextFormField(
            decoration: InputDecoration(border: OutlineInputBorder(),label: Text("PASSWORD")),
          ),
          SizedBox(height: 50,),
          ElevatedButton(onPressed: (){}, child: Text("Log In"))
        ],
      )
    );
  }
}