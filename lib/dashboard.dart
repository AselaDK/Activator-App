import 'package:flutter/material.dart';
import 'package:activator/Ui/CustomListTitle.dart';
import 'package:activator/global.dart';
class dashboard extends StatefulWidget {
  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.lightGreen,

      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                    Colors.lightGreen,
                    Colors.lightGreenAccent,
                  ])
              ),
              child: Column(
                children: <Widget>[
                  Material(
                    borderRadius:BorderRadius.all(Radius.circular(50.0)),
                    elevation: 10,
                    child: Image.asset('images/actlogo1.png',width: 90,height: 90,),
                  ),
                  Padding(padding: EdgeInsets.all(8.0),
                    child: Text(GlobalLoginUser["Items"][0]["username"]["S"],style: TextStyle(color: Colors.white,fontSize: 20,),),
                  ),
                ],
              ),
            ),

            CustomListTitle(Icons.person,'Person',()=>{}),
            CustomListTitle(Icons.notifications,'Notifications',()=>{}),
            CustomListTitle(Icons.settings,'Settings',()=>{}),
            CustomListTitle(Icons.lock,'Logout',()=>{}),


          ],
        ),
      ),
    );
  }
}

