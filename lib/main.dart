import 'package:flutter/material.dart';
import 'package:myprogects/APIOperations.dart';
import 'package:myprogects/AddFaile/phone.dart';
import 'package:myprogects/Classes/ProviderClass.dart';
import 'package:myprogects/GetSelect/GetAllState.dart';
import 'package:myprogects/Transferdetails.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => ProviderClass(),
    builder: (context, child) {
      return MaterialApp(
        title: "Dali Transfers",
        debugShowCheckedModeBanner: false,
        home: MyApp(),
        theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.cyan), ),
      );
    }
    )
  );
}
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final formkey=GlobalKey<FormState>();
  var usc=TextEditingController();
  var pwc=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Dali Transfers",style: TextStyle(
              fontFamily: 'Alkalami'
          ),)),
        ),
        body:Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black26,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  Center(
                    child: Container(
                      width: 250,
                        height: 250,
                        child: Image(image: AssetImage("images/loginicon.png"))
                    ),
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
                        label: Text("Enter Pasword",style: TextStyle(
                            fontFamily: 'Alkalami'
                        ),),
                        prefixIcon: Icon(Icons.password),
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
                  ElevatedButton(onPressed: (){
                    if(formkey.currentState!.validate()){
                      APiOperation.Login(usc.text, pwc.text).then((rtn){
                        if(rtn==true){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
                            return transferdetails();
                          }));
                        }
                      });
                    }
                  }, child: Container(
                    height: 30,
                    width: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Login",style: TextStyle(
                            fontFamily: 'Alkalami'
                        ),)
                      ],
                    ),
                  )
                  ),
                  SizedBox(height: 20,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_){
                            return GetAllState();
                          }));
                        }, child: Container(
                          height: 30,
                          width: 200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Go To Minuo State",style: TextStyle(
                                  fontFamily: 'Alkalami'
                              ),),
                            ],
                          ),
                        )
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_){
                            return phone();
                          }));
                        }, child: Container(
                          height: 30,
                          width: 200,

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Contact Information",style: TextStyle(
                                  fontFamily: 'Alkalami'
                              ),),
                            ],
                          ),
                        )
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        )
    );
  }
}


