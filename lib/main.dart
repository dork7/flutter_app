import 'package:flutter/material.dart';
import './app_screens/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: " Exploring UI widgets ",
    home: Home(), // this was to call the widgets present in home class
    // now to follow tutorial 2.7 i am commenting the home: Home(),
    // home: Scaffold(
    //   appBar: AppBar(
    //     title: Text("App bar"),
    //   ),
    //   body: getlistView(),
    // ),
  ));
}

Widget getlistView() {
  var listView = ListView(
    children: <Widget>[
      ListTile(
        title: Text("Phone"),
        leading: Icon(Icons.phone),
        subtitle: Text("Subtitle"),
        onTap: () {
          debugPrint("phone");
        },
      ),
      ListTile(
        title: Text("landscape"),
        leading: Icon(Icons.landscape),
        subtitle: Text("Subtitle"),
                onTap: () {
          debugPrint("landscape");
        },
      ),
      Text("Yet another widget"),
      Container(
        color: Colors.redAccent,
        height: 50.0,
      )
    ],
  );

  return listView;
}
