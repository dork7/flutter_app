import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Center(
        child: Text(
          "hello bhai :  3 ",
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 55.0),
        ),
      ),
    );
  }
}
