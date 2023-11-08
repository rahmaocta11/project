// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:projek/post_result_model.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult postResult = null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // ignore: prefer_const_constructors
        appBar: AppBar(title: Text("API DEMONSTRASI"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text((postResult != null) 
              ? postResult.id + 
              " | " + 
              postResult.name + 
              " | " + 
              postResult.job + 
              " | " + 
              postResult.created
               : "Tidak ada data" ),
              // ignore: deprecated_member_use
              RaisedButton(onPressed: () {
                PostResult.connectToAPI("ama", "dokter").then((value) {
                  postResult = value;
                  setState(() {
                    
                  });


                } );
              },
              child: Text("POST"),
              )
            ],
          ),
          
        ),
         ),
      );

  }
}

