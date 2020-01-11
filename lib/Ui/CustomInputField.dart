import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget{
  Icon fieldIcon;
  String hintText;
  CustomInputField(this.fieldIcon,this.hintText);

  @override
  Widget build(BuildContext context) {


    // TODO: implement build
    return  Container(
        width: 250,


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
                height: 50,
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(


                      decoration: InputDecoration(

                        border: InputBorder.none,
                        hintText: hintText,
                        fillColor: Colors.white,
                        filled: true, //Meka damme naththam white kiyala penne naha


                      ),
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black
                      )
                  ),
                ),

              )
            ],
          ),





        )
    );
  }

}