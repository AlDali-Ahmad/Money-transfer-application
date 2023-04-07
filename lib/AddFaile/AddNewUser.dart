import 'package:flutter/material.dart';
import 'package:myprogects/APIOperations.dart';
import 'package:myprogects/Transferdetails.dart';
class AddNewUser extends StatelessWidget {
  final formkey=GlobalKey<FormState>();
  var usc=TextEditingController();
  var pwc=TextEditingController();
  var cpwc=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Users",style: TextStyle(
            fontFamily: 'Alkalami'
        ),),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formkey,
          child: Center(
            child: Container(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage:AssetImage("images/user.jpg"),
                    radius: 100,
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 500,
                    child: TextFormField(
                      decoration: InputDecoration(
                        label: Text("Enter User",style: TextStyle(
                            fontFamily: 'Alkalami'
                        ),),
                        prefixIcon: Icon(Icons.person),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide (
                              color: Colors.blue,
                              width: 2
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide (
                              color: Colors.red,
                              width: 2
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide (
                              color: Colors.greenAccent,
                              width: 2
                          ),
                        ),
                      ),
                      controller: usc,
                      validator: (value) {
                        if(value!.isEmpty || value==null){
                          return "User Name Requiard";
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 500,
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        label: Text("Enter Pasword",style: TextStyle(
                            fontFamily: 'Alkalami'
                        ),),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide (
                              color: Colors.blue,
                              width: 2
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide (
                              color: Colors.red,
                              width: 2
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide (
                              color: Colors.greenAccent,
                              width: 2
                          ),
                        ),
                      ),
                      controller: pwc,

                      validator: (value) {
                        if(value!.isEmpty || value==null){
                          return "Pasword  Requiard";
                        }
                      },
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 500,
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        label: Text("Confrim Enter Pasword",style: TextStyle(
                            fontFamily: 'Alkalami'
                        ),),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide (
                              color: Colors.blue,
                              width: 2
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide (
                              color: Colors.red,
                              width: 2
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide (
                              color: Colors.greenAccent,
                              width: 2
                          ),
                        ),
                      ),
                      controller: cpwc,
                      validator: (value) {
                        if(value != pwc.text){
                          return "Pasword and confirm not equals";
                        }
                      },
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){
                    if(formkey.currentState!.validate()){
                      APiOperation.register(usc.text, pwc.text);
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
                        return transferdetails();
                      }));
                    }
                      },
                  child: Container(
                    height: 30,
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text("Submet",
                          style: TextStyle(
                            fontFamily: 'Alkalami'
                          ),),
                        ),
                      ],
                    ),
                   )
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}