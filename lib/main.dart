import 'package:async/async.dart';
import 'package:http/http.dart'as http;
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

  String url='https://ox76ludg9l.execute-api.ap-southeast-2.amazonaws.com/password/passoword/tk@123';

  Future<String> makeRequest() async{
    var response=await http.get(Uri.encodeFull(url), headers: {"Accept":"application/json"});
    print(response.body);
  }

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
                        onPressed:makeRequest,
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




