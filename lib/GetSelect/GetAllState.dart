import 'package:flutter/material.dart';
import 'package:myprogects/Classes/ProviderClass.dart';
import 'package:myprogects/UpdateFolder/EditState.dart';
import 'package:provider/provider.dart';

class GetAllState extends StatelessWidget {
 int i=0;
  @override
  Widget build(BuildContext context) {
    if(i==0){
      Provider.of<ProviderClass>(context,listen: false).getAllState();
      i++;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Get All State",style: TextStyle(
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
        padding: const EdgeInsets.all(10.0),
          child: DataTable(
            columns: [
              DataColumn(label: Text("Id",style: TextStyle(
                  fontFamily: 'Alkalami'
              ),)),
              DataColumn(label: Text("SendState",style: TextStyle(
                  fontFamily: 'Alkalami'
              ),)),
              DataColumn(label: Text("FuterState",style: TextStyle(
                  fontFamily: 'Alkalami'
              ),)),
              DataColumn(label: Text("FuterCity",style: TextStyle(
                  fontFamily: 'Alkalami'
              ),)),
              DataColumn(label: Text("TransferFee",style: TextStyle(
                  fontFamily: 'Alkalami'
              ),)),
              DataColumn(label: Text("")),
            ],
            rows: [
              ...Provider.of<ProviderClass>(context).lst.map((city){
                return DataRow(cells:[
                  DataCell(Text("${city.id}")),
                  DataCell(Text("${city.sendState}")),
                  DataCell(Text("${city.futerState}")),
                  DataCell(Text("${city.futerCity}")),
                  DataCell(Text("${city.transferFee}")),
                  DataCell(
                    Row(
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
                                    Provider.of<ProviderClass>(context,listen: false).removeState(city.id);
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
                            return EditState(city.id,city.sendState,city.futerState,city.futerCity,city.transferFee);
                          }));
                        }, icon: Icon(Icons.edit,color: Colors.cyanAccent,))
                      ],
                    ),),
                ]
                );
              })
            ],
          ),
      ),
    );
  }
}
