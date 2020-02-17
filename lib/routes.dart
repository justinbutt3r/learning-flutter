import 'package:flutter/widgets.dart';
import 'package:my_app/pages/home.dart';
import 'package:my_app/pages/rules.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => HomePage(),
  "/tweet": (BuildContext context) => HomePage(),
  "/rules": (BuildContext context) => RulesPage(),
};
