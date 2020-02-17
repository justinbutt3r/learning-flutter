import 'package:flutter/material.dart';
import 'package:my_app/pages/home.dart';
import 'package:my_app/pages/rules.dart';

class Wrapper extends StatefulWidget {
  Wrapper({Key key}) : super(key: key);

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: [HomePage(), HomePage(), RulesPage()].elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.list), title: Text('List')),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), title: Text('Tweet')),
            BottomNavigationBarItem(
                icon: Icon(Icons.book), title: Text('Rules')),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ));
  }
}
