import 'package:flutter/material.dart';
import 'package:my_app/pages/page2.dart';

class LandingBody extends StatefulWidget {
  @override
  LandingBodyState createState() {
    return new LandingBodyState();
  }
}

class LandingBodyState extends State<LandingBody> {
  String name;
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue,
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new CircleAvatar(
                backgroundImage: new NetworkImage(
                    'https://image.freepik.com/free-vector/designer-s-office-flat-illustration_23-2147492101.jpg'),
                radius: 70.0),
            new Padding(
                padding: const EdgeInsets.only(top: 78.0),
                child: new Container(
                  width: 302.0,
                  child: new TextField(
                    onChanged: (String text) => setState(() {
                      name = text;
                    }),
                    decoration: new InputDecoration(
                        hintText: 'Enter your name',
                        hintStyle: new TextStyle(color: Colors.white)),
                  ),
                )),
            new Padding(
              padding: const EdgeInsets.only(top: 78.0),
              child: new IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                              new Page2(name: name)));
                },
                icon: new Icon(Icons.arrow_forward),
                iconSize: 60.0,
                color: Colors.pink[300],
              ),
            )
          ],
        ),
      ),
    );
  }
}
