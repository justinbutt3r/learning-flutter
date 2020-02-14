import 'package:flutter/widgets.dart';
import 'package:my_app/pages/home.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => Home(),
};
