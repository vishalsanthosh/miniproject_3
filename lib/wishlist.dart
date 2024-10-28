import 'package:flutter/material.dart';

class WishList extends StatelessWidget {
  const WishList({super.key, required this.imagepath, required this.name2, required this.price});
  final String imagepath;
  final String name2;
  final String price; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("WishListed Items"),centerTitle: true,),
      body: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(8),),
        height: 100,
        width: double.infinity,
      ),
    );
  }
}