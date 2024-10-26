import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mini_project_3/reg.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState(){
    Timer(const Duration(seconds: 3),(){
      Navigator.push(context,
      MaterialPageRoute(builder: (context)=>Registration()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
       
        Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/gimage.jpeg"),fit: BoxFit.cover)),
          
          child: Center(child: Lottie.asset("assets/images/shopping.json",width: 250,height: 250,fit: BoxFit.fill))),
     
    );
  }
}