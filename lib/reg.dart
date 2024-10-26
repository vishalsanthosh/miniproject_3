import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

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
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/images.jpeg"),fit: BoxFit.cover)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text("CREATE NEW ACCOUNT",style: TextStyle(color: Colors.white,fontSize: 25),),
                SizedBox(height: 10,),
                TextFormField(
                  controller: fullname,
                  decoration: InputDecoration(border: OutlineInputBorder(),label: Center(child: Text("FULL NAME",style:TextStyle(color: Colors.white,))))
                ),
                SizedBox(height: 10,),
                TextFormField(
                 controller: email,
                 decoration: InputDecoration(border: OutlineInputBorder(),
                 label: Center(child: Text("EMAIL ADDRESS",style:TextStyle(color: Colors.white)))), 
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: username,
                  decoration: InputDecoration(border: OutlineInputBorder(),label: Center(child: Text("ENTER USER ID",style:TextStyle(color: Colors.white)))),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: password,
                  decoration: InputDecoration(border: OutlineInputBorder(),
                  label: Center(child: Text("ENTER PASSWORD",style:TextStyle(color: Colors.white)))),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: cpassword,
                  decoration: InputDecoration(border: OutlineInputBorder(),label: Center(child: Text("CONFIRM PASSWORD",style:TextStyle(color: Colors.white)))),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: phone,
                  decoration: InputDecoration(border: OutlineInputBorder(),label: Center(child: Text("ENTER PHONE NUMBER",style:TextStyle(color: Colors.white),))),
                ),
                 SizedBox(height: 10,),
                TextFormField(
                  controller: dob,
                  decoration: InputDecoration(border: OutlineInputBorder(),label: Center(child: Text("ENTER DATE OF BIRTH",style:TextStyle(color: Colors.white)))),
                ),
                SizedBox(height: 15,),
                ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,shape: RoundedRectangleBorder()), child: GestureDetector(
                  onTap: (){
                    setState(() {
                      if(
                        fullname.text.isEmpty || email.text.isEmpty||
                        username.text.isEmpty||password.text.isEmpty||
                        cpassword.text.isEmpty||phone.text.isEmpty||
                        dob.text.isEmpty
                      ){
                        _loginMessage="ALL FIELDS ARE REQUIRED";
                        return;
                      }if
                        (password.text !=password.text){
                          _loginMessage="password is Incorrect";
                        
                      }
                      
                    });
                  },
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}