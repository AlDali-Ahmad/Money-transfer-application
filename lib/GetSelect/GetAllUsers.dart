import 'package:flutter/material.dart';
import 'package:myprogects/Classes/ProviderClass.dart';
import 'package:myprogects/Transferdetails.dart';
import 'package:provider/provider.dart';
class GetAllUsers extends StatelessWidget {
  int i=0;
  @override
  Widget build(BuildContext context) {
    if(i==0){
      Provider.of<ProviderClass>(context,listen: false).getAllUser();
      i++;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Get All Users",style: TextStyle(
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
              DataColumn(label: Text("User Name",style: TextStyle(
                  fontFamily: 'Alkalami'
              ),)),
              DataColumn(label: Text("Pasword",style: TextStyle(
                  fontFamily: 'Alkalami'
              ),)),
              DataColumn(label: Text("")),
            ],
            rows: [
              ...Provider.of<ProviderClass>(context,listen: false).lstU.map((user){
                  return DataRow(cells:[
                  DataCell(Text("${user.id}")),
                  DataCell(Text("${user.username}")),
                  DataCell(Text("${user.pasword}")),
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
                                    Provider.of<ProviderClass>(context,listen: false).removeUsers(user.id);
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
                            return transferdetails();
                          }));
                        }, icon: Icon(Icons.remove_red_eye,color: Colors.cyanAccent,))
                      ],
                    ),
                  ),
                ]
                );
              })
            ],
          ),

      ),
    );
  }
}
