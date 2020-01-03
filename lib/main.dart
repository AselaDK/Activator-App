

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
              mainAxisAlignment: MainAxisAlignment.center, //coloum eke ewa center karaganna one hinda
              children: <Widget>[
                Container(
                  width: 250,

                  child:Material(  // meka gahanne textfild ekatai icon ekatai yatin
                    // ehema unama icon ekai text field ekain yatin penawa

                   elevation: 5.0,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.deepOrange,


                    //column eka athule thinne

                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child :Icon(Icons.person,color: Colors.black,size: 30,),
                      ),

                     Container(
                       width: 200,
                       child:TextField(

                           decoration: InputDecoration(
                             border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                             fillColor: Colors.white,
                             filled: true, //Meka damme naththam white kiyala penne naha

                           ),
                           style: TextStyle(
                               fontSize: 20.0,
                               color: Colors.black
                           )
                       ),

                     )
                    ],
                  ),





                )
                 )

              ],
            ),
          ),
        ),
      ),
    );
  }
}




