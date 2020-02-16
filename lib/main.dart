import 'package:activator/login.dart';
//import 'package:async/async.dart';
//import 'package:http/http.dart'as http;
//import 'package:activator/Ui/CustomInputField.dart';
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import './Ui/CustomInputField.dart';
//import "package:activator/dashboard.dart";
//
//
//
//void main()=>runApp(Myapp());
//
//class Myapp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return MaterialApp(
//      home: login(),
//    );
//  }
//}

import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String _message = '';

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  _register() {
    _firebaseMessaging.getToken().then((token) => print(token));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMessage();
  }

  void getMessage(){
    _firebaseMessaging.configure(
        onMessage: (Map<String, dynamic> message) async {
          print('on message $message');
          setState(() => _message = message["notification"]["title"]);
        }, onResume: (Map<String, dynamic> message) async {
      print('on resume $message');
      setState(() => _message = message["notification"]["title"]);
    }, onLaunch: (Map<String, dynamic> message) async {
      print('on launch $message');
      setState(() => _message = message["notification"]["title"]);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Message: $_message"),
                OutlineButton(
                  child: Text("Register My Device"),
                  onPressed: () {
                    _register();
                  },
                ),
                // Text("Message: $message")
              ]),
        ),
      ),
    );
  }
}







