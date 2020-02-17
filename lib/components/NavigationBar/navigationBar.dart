import 'package:flutter/material.dart';
import 'package:my_app/routes.dart';

class NavigationBar extends StatefulWidget {
  NavigationBar({Key key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    String routeName = (routes.keys.toList()[index]);
    Navigator.pushNamed(context, routeName);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Theme.of(context).primaryColor,
      selectedItemColor: Colors.white,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.list), title: Text('List')),
        BottomNavigationBarItem(
            icon: Icon(Icons.message), title: Text('Tweet')),
        BottomNavigationBarItem(icon: Icon(Icons.book), title: Text('Rules')),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}
