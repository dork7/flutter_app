import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "my flutter app",
      home: Scaffold(
        appBar: AppBar(
          title: Text("title bar"),
        ),
        body: Material(
          color: Colors.black,
          child: Center(
            child: Text(
              "hello flutter",
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.white, fontSize: 55.0),
            ),
          ),
        ),
      )));
}
