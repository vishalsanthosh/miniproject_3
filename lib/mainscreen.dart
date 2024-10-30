import 'package:flutter/material.dart';
import 'package:mini_project_3/cart.dart';
import 'package:mini_project_3/database.dart';
import 'package:mini_project_3/description.dart';
import 'package:mini_project_3/wishlist.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi,Welcome"),centerTitle: true,
        actions: [
          ElevatedButton(onPressed: (){
          
          }, child: Icon(Icons.add_shopping_cart))
        ],
        
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(color: const Color.fromARGB(255, 156, 203, 241),border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(5)),
              height: 40,
              width: double.infinity,
              
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.search,size: 12,),
                    Text("search"),
                    Spacer(),
                    Text('filter'),
                    SizedBox(width: 5,),
                    Text("sort")
                  ],
                ),
              ),
            
            ),
          ),
          Expanded(
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,crossAxisSpacing: 5,mainAxisSpacing: 15,)
              ,itemCount: 6,
               itemBuilder:(context,index){
            return Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(8)),
              height: 800,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 90,
                      width: 120,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(Database.myList[index]["image"],)),
                        
                        
                      ),
                      child: GestureDetector(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen(imagepath:Database.myList[index]["image"],
                        name:Database.myList[index]["n1"],
                        name2:Database.myList[index]["name"],
                        price:Database.myList[index]["Price"]
                        )));
                      },),
                    ),
                    Text(Database.myList[index]["n1"],style: TextStyle(fontSize: 15,color: Colors.red),),
                    Text(Database.myList[index]["name"],style: TextStyle(fontSize: 15),),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.currency_rupee,size: 15,),
                        Text(Database.myList[index]["Price"],style: TextStyle(fontSize: 18),),
                        Spacer(),
                        GestureDetector(
                          onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>WhishListScreen())); 
                          }
                          ,
                          child: Icon(Icons.favorite,color: Colors.red,size: 25,))
                      ],
                    )
                  
                  ],
                ),
              ),
            );
            } ),
          )
        ],
        
      ),
      bottomNavigationBar: BottomNavigationBar(   backgroundColor: Colors.orange,
    selectedItemColor: Colors.blue,
    unselectedItemColor: Colors.black,
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),label: 'Orders'),
      BottomNavigationBarItem(icon: Icon(Icons.shopping_basket),label:"Cart"),
      BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
    ],),
    

    );
  }
}