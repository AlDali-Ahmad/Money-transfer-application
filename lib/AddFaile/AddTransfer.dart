import 'package:flutter/material.dart';
import 'package:myprogects/APIOperations.dart';
import 'package:myprogects/Transferdetails.dart';
import 'package:http/http.dart' as http;
class Addtransfer extends StatelessWidget {
  final formkey=GlobalKey<FormState>();
  var sn=TextEditingController();
  var sp=TextEditingController();
  var st=TextEditingController();
  var ct=TextEditingController();
  var fn=TextEditingController();
  var fp=TextEditingController();
  var am=TextEditingController();
  var tc=TextEditingController();
  var cu=TextEditingController();
  var da=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Center(child: Text("New Transfer",style: TextStyle(
          fontFamily: 'Alkalami'
      ),)),
    ),
      body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child:Form(
              key: formkey,
              child: Center(
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Container(
                        width: 500,
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            label: Text("The Send Name",style: TextStyle(
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
                          controller: sn,
                          validator: (value) {
                            if(value!.isEmpty || value==null){
                              return "The Send Name Requiard";
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: 500,
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            label: Text("Send Phone",style: TextStyle(
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
                          controller: sp,

                          validator: (value) {
                            if(value!.isEmpty || value==null){
                              return "Send Phone Requiard";
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
                            label: Text("The State",style: TextStyle(
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
                          controller: st,

                          validator: (value) {
                            if(value!.isEmpty || value==null){
                              return "The State Requiard";
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: 500,
                        child: TextFormField(
                          decoration: InputDecoration(
                            label: Text("The City",style: TextStyle(
                                fontFamily: 'Alkalami'
                            ),),
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
                          controller: ct,

                          validator: (value) {
                            if(value!.isEmpty || value==null){
                              return "The City Requiard";
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: 500,
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            label: Text("Future Name",style: TextStyle(
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
                          controller: fn,

                          validator: (value) {
                            if(value!.isEmpty || value==null){
                              return "Future Name Requiard";
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: 500,
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            label: Text("Future Phone",style: TextStyle(
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
                          controller: fp,

                          validator: (value) {
                            if(value!.isEmpty || value==null){
                              return "Future Phone Requiard";
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: 500,
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.price_change),
                            label: Text("The Amount",style: TextStyle(
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
                          controller: am,

                          validator: (value) {
                            if(value!.isEmpty || value==null){
                              return "The Amount Requiard";
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: 500,
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.price_change),
                            label: Text("The Cost",style: TextStyle(
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
                          controller: tc,
                          validator: (value) {
                            if(value!.isEmpty || value==null){
                              return "The Cost Requiard";
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
                            label: Text("Currency Type",style: TextStyle(
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
                          controller: cu,

                          validator: (value) {
                            if(value!.isEmpty || value==null){
                              return "Currency Type Requiard";
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: 500,
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.date_range),
                            label: Text("Date",style: TextStyle(
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
                          controller: da,

                          validator: (value) {
                            if(value!.isEmpty || value==null){
                              return "Date Requiard";
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 20,),
                      ElevatedButton(onPressed: (){
                        APiOperation.AddTransfer(sn.text, sp.text, st.text, ct.text, fn.text, fp.text, am.text, tc.text, cu.text, da.text);
                        Navigator.of(context).push(MaterialPageRoute(builder: (_){
                          return transferdetails();
                        }));
                      }, child: Container(
                        height: 30,
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Submet",style: TextStyle(
                                fontFamily: 'Alkalami'
                            ),)
                          ],
                        ),
                      )
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                ),
              ),
            ),
          )
      ),
    );
  }
}
