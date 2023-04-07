import 'package:flutter/material.dart';
class phone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contact Information"),),
      body: Center(
        child: Container(
          width: 200,
          height: 500,
          color: Colors.white38,
          child: Column(
            children: [

              Container(
                child: Column(
                  children: [
                    Text("Ahmad Aldali"),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Center(child: Icon(Icons.phone)),
                        SizedBox(width: 20,),
                        Text("00963 962 089 184"),
                      ],
                    ),
                  ],
                ),
                color: Colors.cyan,
              ),
              Container(
                child: Column(
                  children: [
                    Text("Ahmad Aldali"),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Icon(Icons.phone),
                        SizedBox(width: 20,),
                        Text("00963 968 889 863 "),
                      ],
                    ),
                  ],
                ),
                color: Colors.cyanAccent,
              ),
              Container(
                child: Column(
                  children: [
                    Text("Ahmad Aldali"),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Icon(Icons.phone),
                        SizedBox(width: 20,),
                        Text("00963 968 889 863 "),
                      ],
                    ),
                  ],
                ),
                color: Colors.cyan,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
