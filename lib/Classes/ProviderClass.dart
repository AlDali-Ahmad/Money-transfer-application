import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myprogects/Classes/ClassCity.dart';
import 'package:myprogects/Classes/ClassTransfer.dart';
import 'package:myprogects/Classes/ClassUsers.dart';
class ProviderClass with ChangeNotifier{
  var user="";
  void RefreshUser(newuser){
    user=newuser;
    notifyListeners();
  }
  List<City> lst=[];
  void getAllState() async {
    var request=await http.get(Uri.http("127.0.0.1:8000","/Newtransfer/getAllState"));
    List<dynamic> lstd=jsonDecode(request.body.toString());
    lst=lstd.map((city) {
      return City.fromJson(city);
    }).toList();
    notifyListeners();
  }
  void removeState(id) async {
    var request=await http.post(Uri.http("127.0.0.1:8000","/Transfer/deleteState",{
      "id1":"$id",
    }),);
    getAllState();
    notifyListeners();
  }

  List<Users> lstU=[];
  void getAllUser() async {
    var request=await http.get(Uri.http("127.0.0.1:8000","/Newtransfer/getAllUser"));
    List<dynamic> lstd=jsonDecode(request.body.toString());
    lstU=lstd.map((user) {
      return Users.fromJson(user);
    }).toList();
    notifyListeners();
  }
  void removeUsers(id) async {
    var request=await http.post(Uri.http("127.0.0.1:8000","/Transfer/deleteUser",{
      "id1":"$id",
    }),);
    getAllUser();
    notifyListeners();
  }
  List<Transfer> lstT=[];
   void getAllTransfer() async {
    var request=await http.get(Uri.http("127.0.0.1:8000","/Newtransfer/getAll"));
    print(request.body.toString());
    List<dynamic> lstd=jsonDecode(request.body.toString());
    lstT=lstd.map((e) {
      return Transfer.fromJson(e);
    }).toList();
    notifyListeners();
  }
  void removeTransfer(id) async {
    var request=await http.post(Uri.http("127.0.0.1:8000","/Transfer/deleteTransfer",{
      "id1":"$id",
    }),);
    getAllTransfer();
    print(request.body.toString());
    notifyListeners();
  }

}