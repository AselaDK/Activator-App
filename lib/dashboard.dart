
import 'package:flutter/material.dart';

class dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.lightGreen,

      ),
      body: Center(
        child: Center(
           child: Column(
             children: <Widget>[
               RaisedButton(
                 color: Colors.red,


               )
             ],
           ),
        ),
      ),
    );
  }
}
