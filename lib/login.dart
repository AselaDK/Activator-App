import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:activator/dashboard.dart';
import 'package:activator/global.dart' as global;

import 'dart:async';
import 'dart:convert';



class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  String Logurl='https://ox76ludg9l.execute-api.ap-southeast-2.amazonaws.com/ActivatorAppLogin/username/';

  String readerLogurl="https://ox76ludg9l.execute-api.ap-southeast-2.amazonaws.com/readers"; //original reader
  
  //String url='https://ox76ludg9l.execute-api.ap-southeast-2.amazonaws.com/ActivatorAppLogin/username/tharindu_prabath';
  String userName;
  var password;
  final GlobalKey<FormState> _formKey=GlobalKey<FormState>(); // making of form key

  //commented function
  Future<String> makeRequest() async{
//    if(!_formKey.currentState.validate()){
//      return "good";
//    }
//    _formKey.currentState.save();
//    print(userName);
//    print(password);

   // var response=await http.get(Uri.encodeFull(url), headers: {"Accept":"application/json"});

    //print(response.body);
   // var employees_list = json.decode(response.body);
    //var pamal = json.decode(employees_list["Items"]);
    //print(employees_list);
   // var pamal = employees_list["Items"];
   // print(pamal[0]["password"]["S"]);
    //print(employees_list[0]);
    //print()
    //print karanawa response body eka
  }

  ///login(); function
  void log() async{
    if(_formKey.currentState.validate()){

    }
    _formKey.currentState.save();
    //print(userName);
    print(password);
    String ak=readerLogurl + userName;
   // print(ak);
    var response=await http.get(Uri.encodeFull(ak), headers: {"Accept":"application/json"});
    var Reader_info_list = json.decode(response.body);
    Map<String,dynamic> loginuser=jsonDecode(response.body);
    var p=loginuser["Items"][0]["password"]["S"];
    var q=loginuser["Items"][0]["username"]["S"];
    print(q);
    //print(loginuser);
    if(p.trim() !=password){
      global.GlobalLoginUser=loginuser;
      //print(global.GlobalLoginUser);
      print("password is correct");
      Navigator.push(context,
          MaterialPageRoute(builder: (context)=>dashboard())
      );
    }
    else{
      print("password is uncorrect");
    }


  }



  @override
  Widget build(BuildContext context) {
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


                    Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'userName',

                            ),
                            validator: (value){
                              if(value.isEmpty){
                                return "reqired"; //display wennna one eka
                              }
                              return null;

                            },
                            onSaved: (value){
                              value=value.trim();
                              userName=value;
                            }
                            ,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: 'password'
                            ),
                            validator: (value){
                              if(value.isEmpty){
                                return 'required';
                              }
                              return null;
                            },
                            onSaved: (value){
                              value=value.trim();
                              password=value;
                            },
                          ),
                        ],
                      ),
                    ),


                    Container(
                      width: 150,
                      child: RaisedButton(

                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        onPressed:log,
                        //makeRequest,
//                        {
//                          if(!_formKey.currentState.validate()){
//                            return;
//                          }
//                          _formKey.currentState.save();
//                          print(userName);
//                          print(password);
//                        },
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
