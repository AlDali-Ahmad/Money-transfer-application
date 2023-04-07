import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myprogects/Classes/ClassTransfer.dart';
import 'package:http/http.dart' as http;
class getTransferPyName extends StatefulWidget {
  const getTransferPyName({Key? key}) : super(key: key);

  @override
  State<getTransferPyName> createState() => _getTransferPyNameState();
}

class _getTransferPyNameState extends State<getTransferPyName> {
  List<Transfer> lst=[];
  _getAllStudents() async {
    var request=await http.get(Uri.http("127.0.0.1:8000","/Transfer/getAllPyName"));
    print(request.body.toString());
    List<dynamic> lstd=jsonDecode(request.body.toString());
    setState(() {
      lst=lstd.map((s){
        return Transfer.fromJson(s) ;
      }).toList();
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getAllStudents();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(

        children: [
          DataTable(
            columns: [
              DataColumn(label: Text("Id")),
              DataColumn(label: Text("theSendname")),
              DataColumn(label: Text("sendphone")),
              DataColumn(label: Text("theState")),
              DataColumn(label: Text("city")),
              DataColumn(label: Text("futureName")),
              DataColumn(label: Text("futurephone")),
              DataColumn(label: Text("theamount")),
              DataColumn(label: Text("thecost")),
              DataColumn(label: Text("currencytype")),
              DataColumn(label: Text("data")),
            ],
            rows: [
              ...lst.map((e){
                return DataRow(cells:[
                  DataCell(Text("${e.id}")),
                  DataCell(Text("${e.theSendname}")),
                  DataCell(Text("${e.sendphone}")),
                  DataCell(Text("${e.theState}")),
                  DataCell(Text("${e.city}")),
                  DataCell(Text("${e.futureName}")),
                  DataCell(Text("${e.futurephone}")),
                  DataCell(Text("${e.theamount}")),
                  DataCell(Text("${e.thecost}")),
                  DataCell(Text("${e.currencytype}")),
                  DataCell(Text("${e.date}")),
                ]
                );
              })

            ],
          ),
        ],
      ),
    );
  }
}
