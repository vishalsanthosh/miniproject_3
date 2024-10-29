import 'package:flutter/material.dart';
import 'package:mini_project_3/cart.dart';
import 'package:mini_project_3/payment.dart';

class SecondScreen extends StatelessWidget {


  final String imagepath;

  final String name;

  final String name2;

  final String price;
  const SecondScreen({super.key, required this.imagepath,required this.name,required this.name2,required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(imagepath),fit: BoxFit.cover),
                
              ),
              child: GestureDetector(onTap: (){
                Navigator.pop(context);
              },),
             
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                children: [
                  Text(name,style: TextStyle(fontSize: 35,color: Colors.red),),
                  Text(name2,style: TextStyle(fontSize: 30),),
                  SizedBox(height: 15,),
                 Container(
                  decoration: BoxDecoration(color: const Color.fromARGB(255, 228, 228, 228),border: Border.all(color: Colors.black,),borderRadius: BorderRadiusDirectional.circular(10)),
                  height: 30,
                  width: 200,
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.currency_rupee),
                      Text(price,style: TextStyle(fontSize: 22),)
                    ],
                   ),
                   
                 ),
                 SizedBox(height: 8,),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text('''Earbuds are used for audio entertainment and communication. 
                 You can use them to listen to music, podcasts and movies.
                  Earbuds with a mic are also helpful for hands-free communication . for example, 
                  as gaming earbuds or to take calls from your mobile phone or computer.''',maxLines: 3,
                    overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.grey),),
                 ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen(imagepath: imagepath, name: name, price: price)));
                    }, child: Text("Add to Cart")),
                    Spacer(),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentScreen()));
                    }, child: Text("BUY NOW"))
                  ],
                 )
                ],
              ),
          ),
        ],
      ),
    );
  }
}