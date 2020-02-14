import 'package:activator/login.dart';
import 'package:async/async.dart';
import 'package:http/http.dart'as http;
import 'package:activator/Ui/CustomInputField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './Ui/CustomInputField.dart';
import "package:activator/dashboard.dart";

void main()=>runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: login(),
    );
  }
}







