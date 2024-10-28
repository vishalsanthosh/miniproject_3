import 'package:flutter/material.dart';

class WishListScreen extends StatelessWidget {
  final String imagepath;
  final String name2;
  final String price; 
  const WishListScreen({super.key, required this.imagepath,required this.name2,required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("WishListed Items"),centerTitle: true,),
      body: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(8),),
        height: 300,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.grey),
              child: Column(children: [
                Image.asset(imagepath),
                SizedBox(width: 5,),
                Text(name2),
                Text(price)
              ],)),
          ],
        ),
      ),
    );
  }
}