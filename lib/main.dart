import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/first_screen.dart';
import './app_screens/first_screen.dart';

void main() => runApp(new MyFlutterClass());

class MyFlutterClass extends StatelessWidget {
  const MyFlutterClass({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "my flutter app",
        home: Scaffold(
            appBar: AppBar(
              title: Text("title bar"),
            ),
            body: FirstScreen()));
  }
}
