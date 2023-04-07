import 'package:flutter/material.dart';
import 'package:myprogects/Classes/ProviderClass.dart';
import 'package:myprogects/UpdateFolder/EditTransfer.dart';
import 'package:provider/provider.dart';
class GetTransfer extends StatelessWidget {
   int i=0;
  @override
  Widget build(BuildContext context) {
    if(i==0){
      Provider.of<ProviderClass>(context,listen: false).getAllTransfer();
      i++;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Transfer Details",style: TextStyle(
            fontFamily: 'Alkalami'
        ),),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 10,),
          Icon(Icons.menu_open),
          SizedBox(width: 20,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            DataTable(
              columns: [
                DataColumn(label: Text("Id",style: TextStyle(
                    fontFamily: 'Alkalami'
                ),)),
                DataColumn(label: Text("theSendname",style: TextStyle(
                    fontFamily: 'Alkalami'
                ),)),
                DataColumn(label: Text("sendphone",style: TextStyle(
                    fontFamily: 'Alkalami'
                ),)),
                DataColumn(label: Text("theState",style: TextStyle(
                    fontFamily: 'Alkalami'
                ),)),
                DataColumn(label: Text("city",style: TextStyle(
                    fontFamily: 'Alkalami'
                ),)),
                DataColumn(label: Text("futureName",style: TextStyle(
                    fontFamily: 'Alkalami'
                ),)),
                DataColumn(label: Text("futurephone",style: TextStyle(
                    fontFamily: 'Alkalami'
                ),)),
                DataColumn(label: Text("theamount",style: TextStyle(
                    fontFamily: 'Alkalami'
                ),)),
                DataColumn(label: Text("thecost",style: TextStyle(
                    fontFamily: 'Alkalami'
                ),)),
                DataColumn(label: Text("currencytype",style: TextStyle(
                    fontFamily: 'Alkalami'
                ),)),
                DataColumn(label: Text("date",style: TextStyle(
                    fontFamily: 'Alkalami'
                ),)),
                DataColumn(label: Text("")),
              ],
              rows: [
                ...Provider.of<ProviderClass>(context).lstT.map((e){
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
                    DataCell(Row(
                      children: [
                        IconButton(onPressed: (){
                          showDialog(context: context, builder: (_){
                            return AlertDialog(
                              title: Text("Are you Sure to Delete",style: TextStyle(
                                  fontFamily: 'Alkalami'
                              ),),
                              content: Container(
                                height: 100,
                              ),
                              actions: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    ElevatedButton(onPressed: (){
                                      Navigator.of(context).pop();
                                      Provider.of<ProviderClass>(context,listen: false).removeTransfer(e.id);
                                    }, child: Text("Yes")),
                                    ElevatedButton(onPressed: (){
                                      Navigator.of(context).pop();
                                    }, child: Text("No")),
                                  ],
                                )
                              ],
                            );
                          });
                        }, icon: Icon(Icons.remove_circle,color: Colors.red,)),
                        IconButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_){
                            return EditTransfer(e.id,e.theSendname,e.sendphone,e.theState,e.city,e.futureName,e.futurephone,e.theamount,e.thecost,e.currencytype,e.date);
                          }));
                        }, icon: Icon(Icons.edit,color: Colors.cyanAccent,))
                      ],
                    ),)
                  ]
                  );
                })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
