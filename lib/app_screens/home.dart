import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            margin: EdgeInsets.all(2.0),
            padding: EdgeInsets.only(left: 10.0, top: 40.0, right: 10.0),
            // padding: EdgeInsets.all(10.0),
            alignment: Alignment.center,
            color: Colors.grey[900],
            child: Column(
              children: <Widget>[
                Row(children: <Widget>[
                  Expanded(
                      child: Text(
                    "Name",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 25.0,
                        color: Colors.white,
                        fontFamily: 'beon'),
                  )),
                  Expanded(
                      child: Text(
                    " dork7",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 25.0,
                        color: Colors.white,
                        fontFamily: 'beon'),
                  )),
                ]),
                Row(children: <Widget>[
                  Expanded(
                      child: Text(
                    "Contact",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 25.0,
                        color: Colors.white,
                        fontFamily: 'beon'),
                  )),
                  Expanded(
                      child: Text(
                    "I aint giving ",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 25.0,
                        color: Colors.white,
                        fontFamily: 'beon'),
                  )),
                ]),
                ImageAssets(),
                ButtonMethond()
              ],
            )

            // width: 200.0,
            // height: 100.0,
            ));
  }
}

class ImageAssets extends StatelessWidget {
  const ImageAssets({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/img.jpg');
    Image img = Image(image: assetImage);
    return Container(child: img);
  }
}

class ButtonMethond extends StatelessWidget {
  const ButtonMethond({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      height: 50.0,
      margin: EdgeInsets.only(top: 20),
      child: RaisedButton(
          color: Colors.orange,
          child: Text(
            "Button",
            style: TextStyle(fontSize: 20.0, fontFamily: 'beon'),
          ),
          elevation: 30,
          onPressed: () {
            // action to be performed
            print("button clicked");
            mFunction(context);
          }),
    );
  }
}

void mFunction(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text(
      "DONE FOR THE DAY",textAlign: TextAlign.center,
      style: TextStyle(fontSize: 40.0, fontFamily: 'beon' ),
    ),
    // content: Text(
    //   "alert content xD",
    //   style: TextStyle(fontSize: 20.0, fontFamily: 'beon'),
    // ),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(  margin: EdgeInsets.only(top: 50), child : Center(child: alertDialog)) ;
      });
}
