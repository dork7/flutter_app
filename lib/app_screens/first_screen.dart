import 'dart:math';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Center(
        child: Text(
          "hello bhai : Number -> ${generateNumber()} ",
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
      ),
    );
  }

  String generateNumber() {
    var random = Random();
    int numb = random.nextInt(100);
    return "hello bhai : Number -> $numb ";
  }
}
