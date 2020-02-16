import 'package:flutter/material.dart';
import 'dart:async';  //for async functions
import 'package:http/http.dart' as http;
import 'dart:convert';  //to convert http response in json fromat

class reference extends StatefulWidget {
  @override
  _referenceState createState() => _referenceState();

}

class _referenceState extends State<reference> {
  Map data;
  List dataUser;

  Future getData() async{
    http.Response response= await http.get('https://reqres.in/api/users?page=2');
    //print(response.body);
    data=json.decode(response.body);
    setState(() {
      dataUser=data["data"];
      print(dataUser);
    });
  }



  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('References'),
       backgroundColor: Colors.lightGreenAccent,
     ),
      body: ListView.builder(
          itemCount: dataUser==null ? 0 : dataUser.length,
          itemBuilder: (BuildContext context,int index){
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(dataUser[index]["avatar"]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("${dataUser[index]["first_name"]} ${dataUser[index]["last_name"]}",
                      style :TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,

                      )),
                    )
                  ],
                ),
              ),
            );
          },
      ),

    );
  }
}
