import 'package:flutter/material.dart';
import 'package:myprogects/APIOperations.dart';
import 'package:myprogects/GetSelect/GetAllState.dart';
import 'package:myprogects/GetSelect/GetTransferPyName.dart';
import 'package:http/http.dart' as http;
import 'package:myprogects/Transferdetails.dart';
class EditState extends StatelessWidget {
  var id;
  EditState(id,SendState,FuterState,FuterCity,TransferFee){
    this.id=id;
    St.text=SendState;
    Fs.text=FuterState;
    Fc.text=FuterCity;
    fr.text=TransferFee;
  }
  final formkey=GlobalKey<FormState>();
  var St=TextEditingController();
  var Fs=TextEditingController();
  var Fc=TextEditingController();
  var fr=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit The State"),
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
                    backgroundImage:AssetImage("images/city.jpg"),
                    radius: 100,
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 500,
                    child: TextFormField(
                      decoration: InputDecoration(
                        label: Text("Enter Send State"),
                        prefixIcon: Icon(Icons.location_city),
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
                      controller: St,
                      validator: (value) {
                        if(value!.isEmpty || value==null){
                          return "User Send State Requiard";
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 500,
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.location_city),
                        label: Text("Enter Futer State"),
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
                      controller: Fs,

                      validator: (value) {
                        if(value!.isEmpty || value==null){
                          return "Futer State Requiard";
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 500,
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.history_toggle_off_sharp),
                        label: Text("Enter Futer City"),
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
                      controller: Fc,
                      validator: (value) {
                        if(value!.isEmpty || value==null){
                          return "Futer City Requiard";
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 500,
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.price_change_outlined),
                        label: Text("Enter Transfer Fee"),
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
                      controller: fr,
                      validator: (value) {
                        if(value!.isEmpty || value==null){
                          return "Enter Transfer Fee";
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){
                    if(formkey.currentState!.validate()){
                      APiOperation.udateState(id, St.text, Fs.text, Fc.text, fr.text);
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
                        return transferdetails();
                      }));
                    }
                  },
                      child: Container(
                        height: 30,
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Submet"),
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
