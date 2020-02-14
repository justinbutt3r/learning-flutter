import 'package:flutter/material.dart';
import 'package:my_app/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '100 days app',
      theme: ThemeData(
        primaryColor: Colors.lightGreen,
      ),
      routes: routes,
    );
  }
}
