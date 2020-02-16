import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget{
  final GlobalKey<FormState> _formKey=GlobalKey<FormState>();
  String userName;
  var password;
  Icon fieldIcon;
  String hintText;
  CustomInputField(this.fieldIcon,this.hintText);

  @override
  Widget build(BuildContext context) {


    // TODO: implement build
    return  Container(
        width: 250,
        //color: Colors.black,


        child:Material(  // meka gahanne textfild ekatai icon ekatai yatin
          // ehema unama icon ekai text field ekain yatin penawa

          elevation: 5.0,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.lightGreen,

          //column eka athule thinne

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child :fieldIcon,
              ),

              Container(

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),bottomRight: Radius.circular(10.0)),
                ),
                width: 203,
                height: 70,
                child:Padding(
                  padding: const EdgeInsets.all(8.0),

                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: hintText,
                            border: InputBorder.none,
                            fillColor: Colors.white,
                            filled: true,


                          ),
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,

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
                          },



                        ),

                      ],
                    ),
                  ),
                ),

              )
            ],
          ),





        )
    );
  }

}


//TextField(
//
//
//decoration: InputDecoration(
//
//border: InputBorder.none,
//hintText: hintText,
//fillColor: Colors.white,
//filled: true, //Meka damme naththam white kiyala penne naha
//
//
//),
//style: TextStyle(
//fontSize: 20.0,
//color: Colors.black
//)
//),


//TextFormField(
//decoration: InputDecoration(
//labelText: 'password'
//),
//validator: (value){
//if(value.isEmpty){
//return 'required';
//}
//return null;
//},
//onSaved: (value){
//value=value.trim();
//password=value;
//},
//),