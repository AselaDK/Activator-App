

import 'package:activator/Ui/CustomInputField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './Ui/CustomInputField.dart';
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


      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,

        child: Stack(

          children: <Widget>[
           Align(
             alignment: Alignment.bottomRight,
             widthFactor: 0.5,
             heightFactor: 0.5,


             child:  Material(
               color: Colors.lightGreen,
               borderRadius: BorderRadius.all(Radius.circular(200)),
               child: Container(


                 width: 400,
                 height: 400,
               ),
             ),
           ),


            Center(

              child: Container(
                width: 400,
                height: 400,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, //coloum eke ewa center karaganna one hinda
                  children: <Widget>[
                    Image.asset('images/actlogo1.png',
                      width: 100,
                      height: 100,
                    ),
                    CustomInputField(Icon(Icons.person,color:Colors.white),'User Name'),
                    CustomInputField(Icon(Icons.lock,color: Colors.white,),'Password'),
                    Container(
                      width: 150,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        onPressed: (){},
                        color: Colors.lightGreen,
                        textColor: Colors.white,
                        child: Text('Login',
                          style: TextStyle(
                            fontSize: 20.0,

                          ),

                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),
          ],
        ),


      ),
    );
  }
}




