import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      alignment: Alignment.center,
      color: Colors.deepOrange,
      margin : EdgeInsets.all(50),
      child: Text("flight", textDirection: TextDirection.ltr),
      // width: 200.0,
      // height: 100.0,
    ));
  }
}
