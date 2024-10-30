
import 'package:flutter/material.dart';
import 'package:mini_project_3/cart.dart';
import 'package:mini_project_3/database.dart';

class WhishListScreen extends StatelessWidget {
  const WhishListScreen({super.key});

  
 @override
  Widget build(BuildContext context){
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: Text("Wishlist"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Expanded(
          child: ListView.builder(
          itemCount: 1,
            scrollDirection: Axis.vertical,
            itemBuilder: (context,index){
            return ListTile(
              leading:Image(image: AssetImage(Database.myList[index]["image"])),
              title: Text(Database.myList[index]["name"]),
              subtitle: Text(Database.myList[index]["Price"]),
              trailing: ElevatedButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen(imagepath: Database.myList[index]["image"], name:Database.myList[index]["name"] , price:Database.myList[index]["Price"])));
              }, child:Text("ADD TO CART") ),
            );
            }),
        ),
      )
    );
  }
}