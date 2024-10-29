import 'package:flutter/material.dart';
import 'package:mini_project_3/payment.dart';

class CartScreen extends StatelessWidget{
   final String imagepath;
  final String name;
  final String price;

  const CartScreen({super.key, required this.imagepath,required this.name,required this.price});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text(
        "CART",style: TextStyle(fontSize: 25),
      ),backgroundColor: const Color.fromARGB(255, 178, 219, 253),),
      body:Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child:  Column(
         children: [
           Container(
            height: 150,
            width: double.infinity,
               color: const Color.fromARGB(255, 252, 246, 246),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 70,
                    width: 100,
                   child: Image.asset(imagepath),
                  ),
                ),
                
               Column(
                mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
               children: [
                 Text(name),
               ]
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                 Icon(Icons.currency_rupee),
                 Text(price,style: TextStyle(fontSize: 20),),    Text("  9% off",style: TextStyle(color: const Color.fromARGB(255, 110, 108, 108)),)
               
               ],
             ),
             Row(
              children: [
                Text("7 Days Return Policy",style: TextStyle(color: const Color.fromARGB(255, 204, 202, 202)),)
              ],
             ),
                ],
               ), 
              ],
            ), 
                 ),
                    
                                     
                    
                   
SizedBox(height: 10,),
                 
                   Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Price Details (1 item)",style: TextStyle(fontSize: 20),),
                      ),
                    ]
                   ),
                   SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Total Product Price"),
                          ),
                          Spacer(),
                          Text("+",style: TextStyle(fontSize: 15)),
                          Icon(Icons.currency_rupee),
                          Text(price,style: TextStyle(fontSize: 20),)
                        ],
                      ),
                 Text("____________________________________________________"),
                 SizedBox(height: 20,),
                 Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text("Order Total",style: TextStyle(fontSize: 20)),
                     ),
                  
                 Spacer(),
                 Icon(Icons.currency_rupee),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text(price,style: TextStyle(fontSize: 20),),
                 ),
                   ]
                 ),
                SizedBox(height: 50,),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  
                  child: Row(
                    children: [
                      Icon(Icons.currency_rupee),
                      Text(price,style: TextStyle(fontSize: 20),),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)
                          ,color: const Color.fromARGB(255, 245, 85, 138),),
                          child: Center(child: GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentScreen()));
                            },
                            child: Text("Continue",style: TextStyle(color: Colors.white),))),
                        ),
                      )
                    ],
                  ),
                )
         ],
       ),
      
      


      
      
        
        
      )  
        
    );
  }
}