import 'package:flutter/material.dart';


class CustomListTitle extends StatelessWidget{
  IconData icon;
  String text;
  Function onTap;
  CustomListTitle(this.icon,this.text,this.onTap);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),

      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom:BorderSide(color: Colors.grey.shade400))
        ),
        child: InkWell(   // touch response karanne meken
          splashColor:Colors.lightGreenAccent,

          onTap:onTap,
          child: Container(    // that combines panting ,positioning a sizing widgets

            height: 50,
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(text,style: TextStyle(
                        fontSize: 20.0,

                      ),),
                    ),
                  ],
                ),

                Icon(Icons.arrow_right)

              ],
            ),
          ),

        ),
      ),
    );
  }

}