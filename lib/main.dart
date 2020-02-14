import 'package:flutter/material.dart';
import 'pages/home.dart';

//pages
import 'pages/page2.dart';
import 'pages/page3.dart';

void main() {
  runApp(new MaterialApp(
    home: new Landing(),
    routes: <String, WidgetBuilder>{
      '/page2': (BuildContext context) => new Page2(),
      '/page3': (BuildContext context) => new Page3()
    },
  ));
}

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new LandingBody(),
      appBar: new AppBar(
        title: new Text('Welcome'),
        elevation: 0.0,
      ),
    );
  }
}
