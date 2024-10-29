import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:mini_project_3/mainscreen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late Box box;
  TextEditingController username=TextEditingController();
  TextEditingController password=TextEditingController();
  String _LogMsg="";

  void initState(){
    super.initState();
    box=Hive.box("mybox");
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            children: [
              TextFormField(
                controller: username,
                decoration: InputDecoration(border: OutlineInputBorder(),label: Text("USERNAME")),
                onChanged: (text){
                  setState(() {
                    _LogMsg="";
                  });
                },
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: password,
                decoration: InputDecoration(border: OutlineInputBorder(),label: Text("PASSWORD")),
                onChanged: (text){
                  setState(() {
                    _LogMsg="";
                  });
                },
              ),
              SizedBox(height: 50,),
              ElevatedButton(onPressed: (){
                List<dynamic>userListDynamic=box.get("itemS",defaultValue: []);
                List<Map<String,String>>userList=userListDynamic.map((e)=>Map<String,String>.from(e as Map)).toList();
                bool userFound=false;
                bool passCorrect=false;
                for(var user in userList){
                  if(
                    user['fullname']==password.text
                  ){
                    userFound=true;
                    
                  if
                  (
                    user['password']==password.text
                  ){
                    passCorrect=true;
                    break;
                    
                  }}
                }
                if(userFound&&passCorrect){
                  setState(() {
                    _LogMsg="LOGGED IN";
                  });
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstPage()));
                  username.clear();
                  password.clear();
                }
                else if (passCorrect){
                  setState(() {
                    _LogMsg="Incorrect password";

                  });
                  
                }else{
                  setState(() {
                    _LogMsg="User not found";
                  });
                }


              },
              
              
               child: Text("Log In")),
               Text(_LogMsg)
            ],
          ),
        ),
      )
    );
  }
}