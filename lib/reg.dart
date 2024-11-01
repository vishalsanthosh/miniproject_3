import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:mini_project_3/login.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  late Box box;
  TextEditingController fullname=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController username=TextEditingController();
  TextEditingController password=TextEditingController();
  TextEditingController cpassword=TextEditingController();
  TextEditingController phone=TextEditingController();
  
  List<Map<String,String>>itemS=[];
String _loginMessage="";
  @override
  void initState(){
    super.initState();
    box=Hive.box("mybox");
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            child: Column(
              children: [
                Text("CREATE NEW ACCOUNT",),
                SizedBox(height: 10,),
                TextFormField(
                  controller: fullname,
                  decoration: InputDecoration(border: OutlineInputBorder(),label: Center(child: Text("FULL NAME")))
                ),
                SizedBox(height: 10,),
                TextFormField(
                 controller: email,
                 decoration: InputDecoration(border: OutlineInputBorder(),
                 label: Center(child: Text("EMAIL ADDRESS",))), 
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: username,
                  decoration: InputDecoration(border: OutlineInputBorder(),label: Center(child: Text("ENTER USER ID",))),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: password,
                  decoration: InputDecoration(border: OutlineInputBorder(),
                  label: Center(child: Text("ENTER PASSWORD"))),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: cpassword,
                  decoration: InputDecoration(border: OutlineInputBorder(),label: Center(child: Text("CONFIRM PASSWORD"))),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: phone,
                  decoration: InputDecoration(border: OutlineInputBorder(),label: Center(child: Text("ENTER PHONE NUMBER"))),
                ),
                
                SizedBox(height: 15,),
                ElevatedButton(
                  onPressed:() {
                   setState(() {
                      if (
                         fullname.text.isEmpty ||
                            email.text.isEmpty ||
                            password.text.isEmpty ||
                            cpassword.text.isEmpty ||
                            phone.text.isEmpty) {
                          _loginMessage= "All fields are required.";
                          return;
                     }
                     if ( password.text !=
                             cpassword.text) {
                          _loginMessage = "Passwords do not match.";
                          return;
                        }

                         itemS.add({
                          'fullname':  fullname.text,
                          'email': email.text,
                          'password': password.text,
                          'cpassword':cpassword.text,
                          'phonenumber': phone.text
                        });
                         box.put(
                          'ListItem',
                         itemS
                              .map((e) => Map<String, dynamic>.from(e))
                              .toList(),
                        );

                        
                           fullname.clear();
                           email.clear();
                           password.clear();
                          cpassword.clear();
                          phone.clear();
                           _loginMessage = "Registration Successful";

                     Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));


                    });
                    print("Registered Items:$itemS");
                  },
                  child:Text("REGISTER")
                    
                  
                ),
                SizedBox(height: 10,),
                Column(
                  children: [
                    Text("Existing User?",style: TextStyle(color: Colors.red),),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                    }, child: Text("LOG IN"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}