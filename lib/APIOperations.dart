import 'dart:convert';
import 'dart:ui';
import 'package:http/http.dart' as http;
class APiOperation{
  static Future<bool> Login(usn,pwc) async {
    var request=await http.get(Uri.http("127.0.0.1:8000", "/Login",{
      "username":"$usn",
      "pasword":"$pwc",
    }));
    print(request.body.toString());
    if(request.body.toString().trim()=="true"){
      return true;
    }else{
        return false;
    }
  }
  static void register(usn,pwc) async {
    var request=await http.post(Uri.http("127.0.0.1:8000","/Reguest",{
      "username":"$usn",
      "pasword":"$pwc",
    }));
  }
  static void AddState(SendState,sendstate,FuterCity,TransferFee) async {
    var request=await http.post(Uri.http("127.0.0.1:8000","/NewState/insert",{
      "SendState":"$SendState",
      "FuterState":"$sendstate",
      "FuterCity":"$FuterCity",
      "TransferFee":"$TransferFee",
    }),);
  }
  static void udateState(id,SendState,sendstate,FuterCity,TransferFee) async {
    var request=await http.post(Uri.http("127.0.0.1:8000","/NewState/Updete",{
      "id":"$id",
      "SendState":"$SendState",
      "FuterState":"$sendstate",
      "FuterCity":"$FuterCity",
      "TransferFee":"$TransferFee",
    }),);
  }
    static void AddTransfer(theSendname,sendphone,theState,city,futureName,futurephone,theamount,thecost,currencytype,date) async {
    var request=await http.post(Uri.http("127.0.0.1:8000","/Newtransfer/insert",{
      "theSendname":"$theSendname",
      "sendphone":"$sendphone",
      "theState":"$theState",
      "city":"$city",
      "futureName":"$futureName",
      "futurephone":"$futurephone",
      "theamount":"$theamount",
      "thecost":"$thecost",
      "currencytype":"$currencytype",
      "date":"$date",
    }),);
  }
  static void updateTransfer(id,theSendname,sendphone,theState,city,futureName,futurephone,theamount,thecost,currencytype,date) async {
    var request=await http.post(Uri.http("127.0.0.1:8000","/Newtransfer/update",{
      "id":"$id",
      "theSendname":"$theSendname",
      "sendphone":"$sendphone",
      "theState":"$theState",
      "city":"$city",
      "futureName":"$futureName",
      "futurephone":"$futurephone",
      "theamount":"$theamount",
      "thecost":"$thecost",
      "currencytype":"$currencytype",
      "date":"$date",
    }),);
  }
}