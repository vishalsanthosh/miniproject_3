import 'package:flutter/material.dart';


class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key,});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Step 3 of 3\n Payments",style: TextStyle(fontSize: 16,color: Colors.grey),),
        actions: [
          Container(
    
            decoration: BoxDecoration(border: Border.all(color: Colors.grey,),borderRadius: BorderRadius.circular(6)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(Icons.lock,),
                  SizedBox(width: 2,),
                  Text("100%Secure",style: TextStyle(color: Colors.grey),)
                ],
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: const Color.fromARGB(255, 188, 218, 231)),
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Total Amount>",style: TextStyle(color: Colors.blue),),
                      Spacer(),
                      Icon(Icons.currency_rupee,color: Colors.blue,),
                      Text("6,064",style: TextStyle(color: Colors.blue),)
                    ],
                  ),
                )
                
              
              ),
              SizedBox(height: 10,),
              Container(
                height: 60,
                decoration: BoxDecoration(color: const Color.fromARGB(255, 203, 231, 170),borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("10%INSTANT DISCOUNT\nclaim now with payment offer",style: TextStyle(color: const Color.fromARGB(255, 20, 207, 26)),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.credit_card),
                  SizedBox(width: 5,),
                  Text("Credit/Debit/ATM card"),
                  Spacer(),
                  Icon(Icons.arrow_upward),
                
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [Text("Note:Please Ensure your card can be used for online\ntransactions.Learn more",style: TextStyle(color: Colors.grey,fontSize: 12),)],
              ),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color.fromARGB(255, 233, 231, 231)),
                height: 200,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("card Number",textAlign: TextAlign.start,),
                      SizedBox(height: 3,),
                      Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(border: Border.all(color: Colors.blue),borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text("XXXX XXXX XXXX XXXX",style: TextStyle(color: Colors.grey),),
                              Spacer(),
                              Icon(Icons.credit_card,color: const Color.fromARGB(255, 163, 204, 223),)
                            ],
                          ),
                        ),
                        
                      ),
                      SizedBox(height: 15,),
                      Row(children: [
                        Text("Valid Thru"),
                        SizedBox(width: 130,),
                        Text("CVV")

                      ],),
                      SizedBox(height: 5,),
                     Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(5)),
                          height: 30,
                          width: 122,
                          child: Center(child: Text("MM/YY")),
                          
                        ),
                        SizedBox(width:70,),
                        Container(
                            decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(5)),
                          height: 30,
                          width: 122,
                          child: Center(child: Text("CVV")),
                          
                        )
                      
                      ],
                     ),SizedBox(height: 20,),
                     Container(
                      height: 30,
                      width: double.infinity,
                      decoration: BoxDecoration(color: const Color.fromARGB(255, 241, 218, 3),borderRadius: BorderRadius.circular(5)),
                      child: Center(child: Text("Pay 6,064",style: TextStyle(fontWeight: FontWeight.bold),)),
                     )
                    ],
                  ),
                  
                ),
                
                

              ),
              SizedBox(height: 10,),
              Column(
                children: [
                  ListTile(
                    title: Row(
                      children: [
                        Icon(Icons.percent,color: Colors.grey,),
                        Text("EMI"),
                        
                      ],
                    ),
                    subtitle: Text("Get Debit and cardless EMIs on HDFC Bank",style: TextStyle(color: const Color.fromARGB(255, 8, 228, 15),fontSize: 12),),
                    trailing: Icon(Icons.arrow_downward),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(Icons.house,color: Colors.grey,),
                        Text("Net Banking"),
                        SizedBox(width: 173,),
                        Icon(Icons.arrow_downward),
                      ],
                    ),
                    
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                          Icon(Icons.wallet,color: Colors.grey,),
                          Text("Wallets"),
                          SizedBox(width: 205,),
                          Icon(Icons.arrow_downward),
                        ],
                    ),
                 
                  ),
                  
                   ListTile(
                    title: Row(
                      children: [
                        Icon(Icons.payment,color: Colors.grey,),
                        Text("UPI"),
                        
                      ],
                    ),
                    subtitle: Text("Pay by any UPI app",style: TextStyle(color: const Color.fromARGB(255, 8, 228, 15),fontSize: 12),),
                    trailing: Icon(Icons.arrow_downward),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                            Icon(Icons.currency_rupee_rounded,color: Colors.grey,),
                            Text("Cash on Delivery"),
                            SizedBox(width: 145,),
                            Icon(Icons.arrow_downward),
                          ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(Icons.card_giftcard_sharp,color: Colors.grey,),
                        Text("Have a Gift Card?"),
                        Spacer(),
                        Text("ADD",style: TextStyle(color: Colors.blue),)
                    
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Column(
                    children: [
                      Text("35 Crore happy customers and",style: TextStyle(color: Colors.grey),),
                      Text("counting!",style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 6,),
                      Icon(Icons.emoji_emotions,color: Colors.grey,)
                    ],
                  )
                ],
                
              )
            ],
            
          ),
        ),
        
      ),
    );
  }
}