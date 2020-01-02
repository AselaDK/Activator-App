

import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    title: "login app",
    home: HomeScreen()
  ));  // use material app
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

     appBar: AppBar(
       backgroundColor: Colors.red,
       title: Text("this is app title"),

     ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: Center(

          child: Container(
            width: 300,
            height: 300,
            color: Colors.yellow,
            child: Column(

              children: <Widget>[


                Material(

                 elevation: 5.0,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.deepOrange,

                  child :TextField(

                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black
                      )
                  ),


                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}




