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
  TextEditingController dob=TextEditingController();
String _loginMessage="";
  @override
  void initState(){
    super.initState();
    box=Hive.box("mybox");
  }
  /*void _Login(){
    setState(() {
      String storedusername=box.get('username');
      String storedpassword=box.get('password');

      if(storedusername==username.text&&
      storedpassword==password.text
      ){
        _loginMessage="Log in succesful";
      }
      else {
        _loginMessage="Invalid Credentials";
      }
    });
  }*/
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
                 SizedBox(height: 10,),
                TextFormField(
                  controller: dob,
                  decoration: InputDecoration(border: OutlineInputBorder(),label: Center(child: Text("ENTER DATE OF BIRTH"))),
                ),
                SizedBox(height: 15,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                }, child: Text("REGISTER"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}