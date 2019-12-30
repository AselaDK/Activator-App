//import 'package:flutter/material.dart';
//
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      title: 'ACTIVATOR: READERS',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: MyHomePage(title: 'ACTIVATOR: READERS'),
//    );
//  }
//}
//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//
//  @override
//  Widget build(BuildContext context) {
//
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(widget.title),
//      ),
//      body: Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
<<<<<<< HEAD
//            Text("I'm a Reader"),
=======
//            Text("I'm a Reader from pamal pamal"),
>>>>>>> 0e003a736046db963284dab25cc226ebc5130665
//          ],
//        ),
//      ),
//    );
//  }
//}
<<<<<<< HEAD

import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    title: "login app",
    home: HomeScreen()
  ));  // use material app
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

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

                  elevation: 100.0,
                   borderRadius: BorderRadius.all(Radius.circular(10.0)),
                   color: Colors.deepOrange,
                  child :TextField(
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.orange
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
=======

// create login page

//import 'material';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "login app",
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
     
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

        color: Colors.lightGreenAccent,
      ),
    );
  }

>>>>>>> 0e003a736046db963284dab25cc226ebc5130665
}