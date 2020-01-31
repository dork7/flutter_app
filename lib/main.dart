// import 'dart:js';

 
import 'package:flutter/material.dart';
import './app_screens/home.dart';

void main() {
  runApp(MaterialApp(
    // debugShowCheckedModeBanner: false,
    title: " Exploring UI widgets ",
    // home: Home(), // this was to call the widgets present in home class
    // now to follow tutorial 2.7 i am commenting the home: Home(),
    // home: Scaffold(
    //   appBar: AppBar(
    //     title: Text("Long List bar"),
    //   ),
    //   body: getlistView(),
    // ),
////////////////
    home: Scaffold(
      appBar: AppBar(
        title: Text("Long List bar"),
      ),
      body: getListViewLong(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("floating button ");
        },
        child: Icon(Icons.add),
        tooltip: "floating icon",
      ),
    ),
  ));
}
// snakbar

void showSnackBar(BuildContext context, String item) {
  var snackBar = SnackBar(
    content: Text('tapped $item'),
    action: SnackBarAction(label: "UNDO", onPressed: (){
      debugPrint("undo button");
    },),
  );
  Scaffold.of(context).showSnackBar(snackBar);
}

// implementing the long list view
List<String> getListElements() {
  var items = List<String>.generate(
      1000, (counter) => "Item $counter"); // preparing data source
  return items;
}

// creating widget to add data into widget
Widget getListViewLong() {
  var listItems = getListElements();

  var listView = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      leading: Icon(Icons.arrow_right),
      title: Text(listItems[index]),
      onTap: () {
        debugPrint('${listItems[index]} was tapped');
        showSnackBar(context , listItems[index]);
      },
    );
  });
  return listView;
}

// added a short list
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
