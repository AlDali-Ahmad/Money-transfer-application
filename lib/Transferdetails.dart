import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:myprogects/APIOperations.dart';
import 'package:myprogects/AddFaile/AddNewUser.dart';
import 'package:myprogects/AddFaile/AddStatte.dart';
import 'package:myprogects/AddFaile/AddTransfer.dart';
import 'package:myprogects/AddFaile/phone.dart';
import 'package:myprogects/GetSelect/GetAllState.dart';
import 'package:myprogects/GetSelect/GetAllUsers.dart';
import 'package:myprogects/GetSelect/GetTransfer.dart';
class transferdetails extends StatefulWidget {
  @override
  State<transferdetails> createState() => _transferdetailsState();
}
class _transferdetailsState extends State<transferdetails> {
  var index=0;
  var wid=null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Dali money exchange and remittances",style: TextStyle(
          fontFamily: 'Alkalami'
      ),)),
      elevation:0,
      ),
    bottomNavigationBar: CurvedNavigationBar(
      height: 50,
      color:Colors.cyanAccent,
      items: [
        Icon(Icons.account_balance),
        Icon(Icons.account_circle),
        Icon(Icons.location_city_sharp),
      ],
      onTap: (currentindex){
        setState(() {
          index=currentindex;
          if(currentindex==0){
            wid= GetTransfer();
          }else if(currentindex==1){
            wid= GetAllUsers();
          }else{
            wid=GetAllState();
          }
        });
      },
        backgroundColor: Colors.white,
        animationDuration:Duration(milliseconds: 300),
    ),
      body:wid,
      drawer: Drawer(
        backgroundColor: Colors.cyan,
        child: Column(
          children: [
            Container(
              height: 250,
              child: DrawerHeader(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage:AssetImage("images/ima.png"),
                        radius: 100,
                      ),
                    ],
                  )
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(Icons.account_circle),
                    ),
                    SizedBox(width: 15,),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_){
                          return AddNewUser();
                        }));
                      },
                      child: Text("Add New User",style: TextStyle(fontSize: 15,
                          fontFamily: 'Alkalami'
                      ),),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(Icons.price_change),
                    ),
                    SizedBox(width: 15,),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_){
                          return Addtransfer();
                        }));
                      },
                      child: Text("Add New Transfer",style: TextStyle(fontSize: 15,fontFamily: 'Alkalami'),),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(Icons.real_estate_agent_outlined),
                    ),
                    SizedBox(width: 15,),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_){
                          return AddState();
                        }));
                      },
                      child: Text("Add New State",style: TextStyle(fontSize: 15,fontFamily: 'Alkalami'),),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(Icons.phone),
                    ),
                    SizedBox(width: 15,),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_){
                          return phone();
                        }));
                      },
                      child: Text("Contact Information",style: TextStyle(fontSize: 15,fontFamily: 'Alkalami'),),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(Icons.link),
                    ),
                    SizedBox(width: 15,),
                    InkWell(
                      onTap: (){

                      },
                      child: Text("Useful Links",style: TextStyle(fontSize: 15,fontFamily: 'Alkalami'),),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(Icons.account_box_rounded),
                    ),
                    SizedBox(width: 15,),
                    InkWell(
                      onTap: (){
                      },
                      child: Text("Flutter Documentation",style: TextStyle(fontSize: 15,fontFamily: 'Alkalami'),),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(Icons.add_to_photos_sharp),
                    ),
                    SizedBox(width: 15,),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_){
                          return AddState();
                        }));
                      },
                      child: Text("Steps",style: TextStyle(fontSize: 15,fontFamily: 'Alkalami'),),
                    )
                  ],
                ),
                SizedBox(height: 15,),
              ],
            ),

          ],
        ),

      ),
    );
  }
}
/*
      /*getCurrentIndex(currentindex){
    setState(() {
      index=currentindex;
      if(currentindex==0){
        wid= GetTransfer();
      }else if(currentindex==1){
        wid= GetAllUsers();
      }else{
        wid=GetAllState();
      }
    });
  }*/
        bottomNavigationBar: BottomNavigationBar(
          onTap: getCurrentIndex,
          currentIndex: index,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.account_balance),label: "Transfer"),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "Users"),
            BottomNavigationBarItem(icon: Icon(Icons.location_city_sharp),label: "Stats"),
          ],
        ),*/
/*TabBarView(
        children: [
              GetTransfer(),
              GetAllUsers(),
              GetAllState(),
        ],
      bottom: TabBar(
        tabs: [
          Row(
              children: [
                Icon(Icons.home),
                SizedBox(width: 10,),
                Center(child: Text("Get All Trsnsfer"))
              ],
            ),
          Row(
            children: [
              Icon(Icons.home),
              SizedBox(width: 10,),
              Center(child: Text("Get All User"))
            ],
          ),
          Row(
            children: [
              Icon(Icons.home),
              SizedBox(width: 10,),
              Center(child: Text("Get Perse Mani"))
            ],
          ),
        ],
      ),
      ) */